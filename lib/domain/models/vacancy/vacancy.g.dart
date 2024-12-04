// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyImpl _$$VacancyImplFromJson(Map<String, dynamic> json) =>
    _$VacancyImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      employerName: json['employer_name'] as String,
      publishedAt: DateTime.parse(json['published_at'] as String),
      snippetRequirement: json['snippet_requirement'] as String?,
      snippetResponsibility: json['snippet_responsibility'] as String?,
      salaryFrom: (json['salary_from'] as num?)?.toDouble(),
      salaryTo: (json['salary_to'] as num?)?.toDouble(),
      salaryCurrency: json['salary_currency'] as String?,
      salaryGross: json['salary_gross'] as bool?,
    );

Map<String, dynamic> _$$VacancyImplToJson(_$VacancyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'employer_name': instance.employerName,
      'published_at': instance.publishedAt.toIso8601String(),
      'snippet_requirement': instance.snippetRequirement,
      'snippet_responsibility': instance.snippetResponsibility,
      'salary_from': instance.salaryFrom,
      'salary_to': instance.salaryTo,
      'salary_currency': instance.salaryCurrency,
      'salary_gross': instance.salaryGross,
    };
