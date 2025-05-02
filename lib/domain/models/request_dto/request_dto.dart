import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/search_fields.dart';
import 'package:each_job/domain/models/search_settings/search_settings.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_dto.freezed.dart';

@freezed
class RequestDto with _$RequestDto {
  const RequestDto._();

  const factory RequestDto({
    required Area? area,
    required Profession? profession,
    required Grade? grade,
    required ExperienceOption? experienceOption,
    required DateTime? fromDate,
    required DateTime? toDate,
    required SearchSettings searchSettings,
  }) = _RequestDto;

  Map<String, dynamic> toJson() => {
    "experienceId": experienceOption?.id,
    "areaId": area?.id,
    "professionId": profession?.id,
    "gradeId": grade?.id,
    // "from": fromDate?.toIso8601String(),
    // "to": toDate?.toIso8601String(),
    "searchFields": searchSettings.searchFields.apiOptionName,
    "includeHourly": searchSettings.hourlyVacanciesEnabled,
    "minSalary": searchSettings.minSalary
  };

  factory RequestDto.empty() => RequestDto(
    area: null,
    profession: null,
    grade: null,
    fromDate: null,
    toDate: null,
    experienceOption: null,
    searchSettings: SearchSettings.common(),
  );

  bool get isReady => area != null && profession != null;
}
