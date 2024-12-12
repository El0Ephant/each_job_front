// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vacancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VacancyImpl _$$VacancyImplFromJson(Map<String, dynamic> json) =>
    _$VacancyImpl(
      id: json['id'] as String,
      hhId: json['hhId'] as String,
      name: json['name'] as String,
      url: json['url'] as String?,
      employerName: json['employerName'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      snippetRequirement: json['snippetRequirement'] as String?,
      snippetResponsibility: json['snippetResponsibility'] as String?,
      salaryFrom: json['salaryFrom'] as String?,
      salaryTo: json['salaryTo'] as String?,
      salaryCurrency: json['salaryCurrency'] as String?,
      salaryGross: json['salaryGross'] as bool?,
    );

Map<String, dynamic> _$$VacancyImplToJson(_$VacancyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hhId': instance.hhId,
      'name': instance.name,
      'url': instance.url,
      'employerName': instance.employerName,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'snippetRequirement': instance.snippetRequirement,
      'snippetResponsibility': instance.snippetResponsibility,
      'salaryFrom': instance.salaryFrom,
      'salaryTo': instance.salaryTo,
      'salaryCurrency': instance.salaryCurrency,
      'salaryGross': instance.salaryGross,
    };
