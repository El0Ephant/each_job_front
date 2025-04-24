import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
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
    required bool isStrictSelectionMode,
  }) = _RequestDto;

  Map<String, dynamic> toJson() => {
    "onlyTitleMatch": isStrictSelectionMode,
    "experienceId": experienceOption?.id,
    "areaId": area?.id,
    "professionId": profession?.id,
    "gradeId": grade?.id,
    "from": fromDate?.toIso8601String(),
    "to": toDate?.toIso8601String(),
  };

  factory RequestDto.empty() => const RequestDto(
    area: null,
    profession: null,
    grade: null,
    fromDate: null,
    toDate: null,
    experienceOption: null,
    isStrictSelectionMode: false
  );

  bool get isReady => area != null && profession != null;
}
