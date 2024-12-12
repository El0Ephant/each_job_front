import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/ui/bloc/error_dto.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/widgets/basic_progress_indicator.dart';
import 'package:each_job/ui/widgets/percentile_line.dart';
import 'package:each_job/ui/widgets/period_picker_component.dart';
import 'package:each_job/ui/widgets/salary_chart.dart';
import 'package:each_job/ui/widgets/search_field.dart';
import 'package:each_job/ui/widgets/vacancies_list.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobPage extends StatefulWidget {
  const JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: BlocBuilder<JobBloc, JobState>(
            builder: (context, state) {
              final jobBloc = context.read<JobBloc>();
              ErrorDto? errors;
              if (state is JobStateInitial){
                errors = state.errors;
              }
              return SingleChildScrollView(
                controller: _scrollController,
                padding: const EdgeInsets.all(AppSizes.outerIndent),
                child: Column(
                  children: [
                    SearchField<Area>(
                      label: 'Регион',
                      hasError: errors?.areaIsEmpty == true,
                      onChange: (selectedValue) { jobBloc.add(JobEvent.updateArea(area: selectedValue)); },
                      choices: state.tableData.areas,
                    ),
                    const SizedBox(height: AppSizes.innerIndent,),
                    SearchField<Profession>(
                      label: 'Профессия',
                      hasError: errors?.professionIsEmpty == true,
                      onChange: (selectedValue) { jobBloc.add(JobEvent.updateProfession(profession: selectedValue)); },
                      choices: state.tableData.professions,
                    ),
                    const SizedBox(height: AppSizes.innerIndent,),
                    SearchField<Grade>(
                      label: 'Квалификация',
                      onChange: (selectedValue) { jobBloc.add(JobEvent.updateGrade(grade: selectedValue)); },
                      choices: state.tableData.grades,
                      typeAheadEnabled: false,
                    ),
                    const SizedBox(height: AppSizes.outerIndent,),
                    PeriodPickerComponent(),
                    const SizedBox(height: AppSizes.outerIndent,),
                    SizedBox(
                      height: AppSizes.commonHeight,
                      width: double.infinity,
                      child: state.maybeWhen(
                        loading: (_) => const BasicProgressIndicator(),
                        orElse: () => ElevatedButton(
                          onPressed: () { jobBloc.add(const JobEvent.search()); },
                          child: const Text("Показать статистику")
                        ),
                      )
                    ),

                    state.maybeWhen(
                      loaded: (tableData, salaryStatistics, vacancies, hasReachedMaxVacancies) {
                        if (!salaryStatistics.isValid){
                          return const Padding(
                            padding: EdgeInsets.only(top: AppSizes.outerIndent),
                            child: Center(
                              child: Text(
                                textAlign: TextAlign.center,
                                "Недостаточно данных для сбора статистики"
                              ),
                            ),
                          );
                        }
                        return Column(
                          children: [
                            const SizedBox(height: AppSizes.outerIndent,),
                            PercentileLine(
                              bottom: salaryStatistics.bottomSalary!,
                              upper: salaryStatistics.upperSalary!,
                              median: salaryStatistics.medianSalary!,
                              oftenSalariesBottom: salaryStatistics.oftenSalariesBottom!,
                              oftenSalariesUpper: salaryStatistics.oftenSalariesUpper!,
                            ),
                            const SizedBox(height: AppSizes.outerIndent,),
                            if (salaryStatistics.chartData.length >= 2 )
                            SizedBox(
                              height: 300,
                              child: SalaryChart(
                                data: salaryStatistics.chartData
                              )
                            ),
                            const SizedBox(height: AppSizes.innerIndent,),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Рассчитано с учетом ${salaryStatistics.vacanciesNum} вакансий",
                                style: AppTextStyles.commonLabelTextStyle,
                              ),
                            ),
                            const SizedBox(height: AppSizes.innerIndent,),
                            VacanciesList(
                              hasReachedMax: hasReachedMaxVacancies,
                              vacancies: vacancies,
                              scrollController: _scrollController,
                            )
                          ],
                        );
                      },
                      orElse: () => const SizedBox.shrink(),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}