import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_statistics.freezed.dart';
part 'salary_statistics.g.dart';

@freezed
class SalaryStatistics with _$SalaryStatistics {
  const factory SalaryStatistics({
    required num vacanciesNum,
    required num bottomSalary,
    required num upperSalary,
    required num medianSalary,
    required num oftenSalariesBottom,
    required num oftenSalariesUpper,
    required List<({DateTime date, num value})> chartData
  }) = _SalaryStatistics;

  factory SalaryStatistics.fromJson(Map<String, dynamic> json) => _$SalaryStatisticsFromJson(json);
}
