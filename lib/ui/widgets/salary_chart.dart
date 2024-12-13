import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SalaryChart extends StatefulWidget {
  const SalaryChart({
    super.key,
    required this.data
  });
  final List<({DateTime date, num value})> data;

  @override
  State<SalaryChart> createState() => _SalaryChartState();
}

class _SalaryChartState extends State<SalaryChart> {
  final List<({double x, double y})> _filteredData = [];
  late double _minY, _maxY, _stepY, _stepX;
  final _pixelsForPoint = 40;
  final _leftTitleHeight = 50.0;
  double _leftTitlesReservedSize = 30.0;
  final _bottomTitlesReservedSize = 30.0;
  final _bottomTitleWidth = 80.0;

  void prepareData(double width, double height){
    final data = widget.data;
    _filteredData.clear();
    final maxInnerPoints = (width - _pixelsForPoint) ~/ _pixelsForPoint;
    final addPointsDiv = (data.length - 2) ~/ maxInnerPoints;
    num minY = data.first.value, maxY = data.first.value;

    for(int i = 0; i < data.length; ++i){
      if (minY > data[i].value){
        minY = data[i].value;
      }
      if (maxY < data[i].value){
        maxY = data[i].value;
      }
      if (i == 0 || i == data.length - 1 || addPointsDiv < 2 || i % addPointsDiv == 0) {
        _filteredData.add((
          x: i.toDouble(),
          y: data[i].value.toDouble()
        ));
      }
    }
    final offsetY = (maxY - minY) / 4;
    _minY = minY - offsetY;
    _maxY = maxY + offsetY;
    if (_maxY < 100){
      _leftTitlesReservedSize = 30;
    } else if (_maxY < 1000){
      _leftTitlesReservedSize = 40;
    } else {
      _leftTitlesReservedSize = 50;
    }

    if (_minY == _maxY){
      final value = _minY;
      _minY -= value * 0.2;
      _maxY += value * 0.2;
      _stepY = value * 0.1;
    } else {
      _stepY = (_maxY - _minY) / (height ~/ _leftTitleHeight);
      if (_stepY > 10){
        _stepY = (_stepY ~/ 10) * 10;
      }
    }

    _stepX = (data.length / (width ~/ _bottomTitleWidth)).ceilToDouble();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        prepareData(constraints.maxWidth, constraints.maxHeight - _bottomTitlesReservedSize);
        return LineChart(
            LineChartData(
              gridData: FlGridData(
                getDrawingHorizontalLine: (value) {
                  return const FlLine(
                    color: AppColors.secondaryColor,
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return const FlLine(
                    color: AppColors.secondaryColor,
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false),),
                topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false),),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: _bottomTitlesReservedSize,
                    interval: 1,
                    getTitlesWidget: (value, meta) {
                      if (value.toInt() % _stepX.toInt() != 0 ){
                        return const SizedBox.shrink();
                      }
                      final firstDate = widget.data.first.date;
                      int month = firstDate.month + value.toInt();
                      int year = firstDate.year + (month - 1) ~/ 12;
                      month = (month - 1) % 12 + 1;
                      return Padding(
                        padding: EdgeInsets.only(right: value == meta.max ? 20:0),
                        child: Text('${month.toString().padLeft(2, '0')}.$year', style: AppTextStyles.boldLabelTextStyle,),
                      );
                    },
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: _leftTitlesReservedSize,
                    interval: _stepY,
                    minIncluded: false,
                    maxIncluded: false,
                    getTitlesWidget: (value, meta) {
                      return Text('${value.toInt()}k', style: AppTextStyles.boldLabelTextStyle,);
                    },
                  ),
                ),
              ),
              borderData: FlBorderData(
                show: true,
                border: Border.all(color: AppColors.main1Color, width: 1),
              ),
              minY: _minY,
              maxY: _maxY,
              lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        return LineTooltipItem(
                          '${spot.y.toInt()}k',
                          AppTextStyles.commonLabelTextStyle,
                        );
                      },).toList();
                    },
                    tooltipPadding: const EdgeInsets.all(5),
                    tooltipBorder: const BorderSide(
                      color: AppColors.main1Color,
                      width: 1,
                    ),
                    getTooltipColor: (touchedSpot) {
                      return AppColors.backgroundColor;
                    },
                  )
              ),
              lineBarsData: [
                LineChartBarData(
                  color: AppColors.main2Color,
                  spots: List.generate(_filteredData.length, (index) => FlSpot(_filteredData[index].x, _filteredData[index].y),),
                  dotData: FlDotData(
                    getDotPainter: (p0, p1, p2, p3) {
                      return FlDotCirclePainter(
                        color: AppColors.onMain1Color,
                        strokeWidth: 2,
                        strokeColor: AppColors.main2Color
                      );
                    },
                  ),
                  isCurved: true,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [AppColors.onMain1Color, AppColors.main2Color]
                          .map((color) => color.withOpacity(0.7))
                          .toList(),
                    ),
                  ),
                ),
              ],
            )
        );
      }
    );
  }
}