// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalaryStatisticsImpl _$$SalaryStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$SalaryStatisticsImpl(
      vacanciesNum: json['nVacancies'] as num?,
      bottomSalary: json['min'] as num?,
      upperSalary: json['max'] as num?,
      medianSalary: json['median'] as num?,
      oftenSalariesBottom: json['q1'] as num?,
      oftenSalariesUpper: json['q3'] as num?,
      chartData: SalaryStatistics._chartDataFromJson(json['monthlyMedians']),
    );

Map<String, dynamic> _$$SalaryStatisticsImplToJson(
        _$SalaryStatisticsImpl instance) =>
    <String, dynamic>{
      'nVacancies': instance.vacanciesNum,
      'min': instance.bottomSalary,
      'max': instance.upperSalary,
      'median': instance.medianSalary,
      'q1': instance.oftenSalariesBottom,
      'q3': instance.oftenSalariesUpper,
      'monthlyMedians': instance.chartData
          .map((e) => <String, dynamic>{
                'date': e.date.toIso8601String(),
                'value': e.value,
              })
          .toList(),
    };
