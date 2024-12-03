import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/widgets/percentile_line.dart';
import 'package:each_job/ui/widgets/salary_chart.dart';
import 'package:each_job/ui/widgets/search_field.dart';
import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

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
              return SingleChildScrollView(
                padding: const EdgeInsets.all(AppSizes.outerIndent),
                child: Column(
                  children: [
                    SearchField<Area>(
                      label: 'Регион',
                      onChange: (selectedValue) { jobBloc.add(JobEvent.updateArea(area: selectedValue)); },
                      choices: state.tableData.areas,
                    ),
                    const SizedBox(height: AppSizes.innerIndent,),
                    SearchField<Profession>(
                      label: 'Профессия',
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
                    SizedBox(
                      height: AppSizes.commonHeight,
                      width: double.infinity,
                      child: state.maybeWhen(
                        loading: (_) => const Center(
                          child: CircularProgressIndicator(
                            strokeWidth: 3,
                            color: AppColors.main1Color,
                            strokeCap: StrokeCap.round,
                          ),
                        ),
                        orElse: () => ElevatedButton(
                          onPressed: () { jobBloc.add(const JobEvent.search()); },
                          child: const Text("Показать статистику")
                        ),
                      )
                    ),
                    state.maybeWhen(
                      loaded: (tableData, salaryStatistics, vacancies, hasReachedMaxVacancies) => Column(
                        children: [
                          const SizedBox(height: AppSizes.outerIndent,),
                          PercentileLine(
                            bottom: salaryStatistics.bottomSalary,
                            upper: salaryStatistics.upperSalary,
                            median: salaryStatistics.medianSalary,
                            oftenSalariesBottom: salaryStatistics.oftenSalariesBottom,
                            oftenSalariesUpper: salaryStatistics.oftenSalariesUpper,
                          ),
                          const SizedBox(height: AppSizes.outerIndent,),
                          SizedBox(
                            height: 300,
                            child: SalaryChart(
                              data: salaryStatistics.chartData
                            )
                          )
                        ],
                      ),
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