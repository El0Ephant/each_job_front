import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_data.freezed.dart';

@freezed
class TableData with _$TableData {
  const factory TableData({
    required List<Area> areas,
    required List<Profession> professions,
    required List<Grade> grades,
    required List<ExperienceOption> experienceOptions,
  }) = _TableData;
}
