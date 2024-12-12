import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy.freezed.dart';
part 'vacancy.g.dart';

@freezed
class Vacancy with _$Vacancy {
  const factory Vacancy({
    required String id,
    required String hhId,
    required String name,
    String? url,
    @JsonKey(name: 'employerName') required String employerName,
    @JsonKey(name: 'publishedAt') required DateTime publishedAt,
    @JsonKey(name: 'snippetRequirement') String? snippetRequirement,
    @JsonKey(name: 'snippetResponsibility') String? snippetResponsibility,
    @JsonKey(name: 'salaryFrom') String? salaryFrom,
    @JsonKey(name: 'salaryTo') String? salaryTo,
    @JsonKey(name: 'salaryCurrency') String? salaryCurrency,
    @JsonKey(name: 'salaryGross') bool? salaryGross,
  }) = _Vacancy;

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);
}
