import 'package:each_job/domain/models/area/area.dart';
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
              return SingleChildScrollView(
                padding: const EdgeInsets.all(AppSizes.outerIndent),
                child: Column(
                  children: [
                    SearchField<Area>(
                      label: 'Регион',
                      onChange: (selectedValue) {},
                      choices: state.tableData.areas,
                    ),
                    const SizedBox(height: AppSizes.innerIndent,),
                    SearchField<Profession>(
                      label: 'Профессия',
                      onChange: (selectedValue) {},
                      choices: state.tableData.professions,
                    ),
                    const SizedBox(height: AppSizes.innerIndent,),

                    // SearchField<Profession>(
                    //   label: 'Квалификация',
                    //   onChange: (selectedValue) {},
                    //   choices: state.tableData.professions,
                    // ),
                    const SizedBox(height: AppSizes.outerIndent,),
                    SizedBox(
                      height: AppSizes.commonHeight,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Показать статистику")
                      ),
                    ),
                    const SizedBox(height: AppSizes.outerIndent,),
                    const PercentileLine(
                      bottom: 208,
                      upper: 651,
                      median: 400,
                      oftenSalariesBottom: 325,
                      oftenSalariesUpper: 511
                    ),
                    const SizedBox(height: AppSizes.outerIndent,),
                    SizedBox(
                      height: 300,
                      child: SalaryChart(
                        data: salaryData
                      )
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

final salaryData = [
  (
  date: DateTime(2023, 1),
  value: 348
  ),
  (
  date: DateTime(2023, 2),
  value: 355
  ),
  (
  date: DateTime(2023, 3),
  value: 372
  ),
  (
  date: DateTime(2023, 4),
  value: 367
  ),
  (
  date: DateTime(2023, 5),
  value: 388
  ),
  (
  date: DateTime(2023, 6),
  value: 395
  ),
  (
  date: DateTime(2023, 7),
  value: 365
  ),
  (
  date: DateTime(2023, 8),
  value: 386
  ),
  (
  date: DateTime(2023, 9),
  value: 402
  ),
  (
  date: DateTime(2023, 10),
  value: 425
  ),
  (
  date: DateTime(2023, 11),
  value: 408
  ),
  (
  date: DateTime(2023, 12),
  value: 412
  ),
  (
  date: DateTime(2024, 1),
  value: 430
  ),
  (
  date: DateTime(2024, 2),
  value: 422
  ),
  (
  date: DateTime(2024, 3),
  value: 410
  ),
  (
  date: DateTime(2024, 4),
  value: 406
  ),
  (
  date: DateTime(2024, 5),
  value: 402
  ),
  (
  date: DateTime(2024, 6),
  value: 400
  ),
];

