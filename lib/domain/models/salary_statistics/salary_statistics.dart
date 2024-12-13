import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_statistics.freezed.dart';
part 'salary_statistics.g.dart';

@freezed
class SalaryStatistics with _$SalaryStatistics {
  const SalaryStatistics._();

  const factory SalaryStatistics({
    @JsonKey(name: 'nVacancies') num? vacanciesNum,
    @JsonKey(name: 'min') num? bottomSalary,
    @JsonKey(name: 'max') num? upperSalary,
    @JsonKey(name: 'median') num? medianSalary,
    @JsonKey(name: 'q1') num? oftenSalariesBottom,
    @JsonKey(name: 'q3') num? oftenSalariesUpper,
    @JsonKey(name: 'monthlyMedians', fromJson: SalaryStatistics._chartDataFromJson) required List<({DateTime date, num value})> chartData
  }) = _SalaryStatistics;

  bool get isValid => vacanciesNum != null && vacanciesNum! > 5
      && bottomSalary != null && upperSalary != null
      && oftenSalariesBottom != null && oftenSalariesUpper != null
      && medianSalary != null;

  static List<({DateTime date, num value})> _chartDataFromJson(dynamic data){
    final List<({DateTime date, num value})> chartData = [];
    if (data is Map<String, num>){
      for (var key in data.keys) {
        final dateParts = key.split('-');
        chartData.add((
        date: DateTime(int.parse(dateParts[0]), int.parse(dateParts[1])),
        value: data[key]!
        ));
      }
    }
    chartData.sort((a, b) => a.date.compareTo(b.date));
    return chartData;
  }

  factory SalaryStatistics.fromJson(Map<String, dynamic> json) => _$SalaryStatisticsFromJson(json);
}
