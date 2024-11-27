// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_statistics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SalaryStatisticsImpl _$$SalaryStatisticsImplFromJson(
        Map<String, dynamic> json) =>
    _$SalaryStatisticsImpl(
      bottomSalary: json['bottomSalary'] as num,
      upperSalary: json['upperSalary'] as num,
      medianSalary: json['medianSalary'] as num,
      oftenSalariesBottom: json['oftenSalariesBottom'] as num,
      oftenSalariesUpper: json['oftenSalariesUpper'] as num,
      chartData: (json['chartData'] as List<dynamic>)
          .map((e) => _$recordConvert(
                e,
                ($jsonValue) => (
                  date: DateTime.parse($jsonValue['date'] as String),
                  value: $jsonValue['value'] as num,
                ),
              ))
          .toList(),
    );

Map<String, dynamic> _$$SalaryStatisticsImplToJson(
        _$SalaryStatisticsImpl instance) =>
    <String, dynamic>{
      'bottomSalary': instance.bottomSalary,
      'upperSalary': instance.upperSalary,
      'medianSalary': instance.medianSalary,
      'oftenSalariesBottom': instance.oftenSalariesBottom,
      'oftenSalariesUpper': instance.oftenSalariesUpper,
      'chartData': instance.chartData
          .map((e) => <String, dynamic>{
                'date': e.date.toIso8601String(),
                'value': e.value,
              })
          .toList(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
