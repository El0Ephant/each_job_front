import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/widgets/search_field.dart';
import 'package:each_job/ui/widgets/two_options_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QualificationExperienceField extends StatefulWidget {
  const QualificationExperienceField({
    super.key,
    required this.grades,
    required this.experienceOptions
  });
  final List<Grade> grades;
  final List<ExperienceOption> experienceOptions;

  @override
  State<QualificationExperienceField> createState() => _QualificationExperienceFieldState();
}

class _QualificationExperienceFieldState extends State<QualificationExperienceField> {
  late final JobBloc _jobBloc;
  bool _qualificationSelected = true;

  @override
  void initState() {
    super.initState();
    _jobBloc = context.read<JobBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwoOptionsSwitcher(
          onChange: (isFirstSelected) {
            setState(() {
              _qualificationSelected = isFirstSelected;
            });
            if (_qualificationSelected){
              _jobBloc.add(const JobEvent.updateExperienceOption(experienceOption: null));
            } else {
              _jobBloc.add(const JobEvent.updateGrade(grade: null));
            }
          },
          first: 'Квалификация',
          second: 'Опыт'
        ),
        const SizedBox(height: 5,),
        _qualificationSelected ?
        SearchField<Grade>(
          label: null,
          onChange: (selectedValue) {
            _jobBloc.add(JobEvent.updateGrade(grade: selectedValue));
          },
          choices: widget.grades,
          typeAheadEnabled: false,
        ):SearchField<ExperienceOption>(
          label: null,
          onChange: (selectedValue) {
            _jobBloc.add(JobEvent.updateExperienceOption(experienceOption: selectedValue));
          },
          choices: widget.experienceOptions,
          typeAheadEnabled: false,
        )
      ],
    );
  }
}
