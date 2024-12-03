import 'package:freezed_annotation/freezed_annotation.dart';

part 'vacancy.freezed.dart';
part 'vacancy.g.dart';

@freezed
class Vacancy with _$Vacancy {
  const factory Vacancy({
    required String id,
    required String name,
    @JsonKey(name: 'employer_name') required String employerName,
    @JsonKey(name: 'published_at') required DateTime publishedAt,
    @JsonKey(name: 'snippet_requirement') String? snippetRequirement,
    @JsonKey(name: 'snippet_responsibility') String? snippetResponsibility,
    @JsonKey(name: 'salary_from') double? salaryFrom,
    @JsonKey(name: 'salary_to') double? salaryTo,
    @JsonKey(name: 'salary_currency') String? salaryCurrency,
    @JsonKey(name: 'salary_gross') bool? salaryGross,
  }) = _Vacancy;

  factory Vacancy.fromJson(Map<String, dynamic> json) =>
      _$VacancyFromJson(json);
}
