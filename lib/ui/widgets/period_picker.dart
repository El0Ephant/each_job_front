import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';

class PeriodPicker extends StatelessWidget {
  const PeriodPicker._(
    this._period, {
    super.key,
    required this.height,
    required this.width,
    required this.year,
    required this.chosen,
    required this.isStart,
    this.onTap,
  });

  const PeriodPicker.month(
      {Key? key,
      required double height,
      required double width,
      required year,
      required ({DateTime start, DateTime end}) chosen,
      required bool isStart,
      void Function(DateTime date)? onTap})
      : this._(
          _Period.month,
          key: key,
          height: height,
          width: width,
          year: year,
          isStart: isStart,
          onTap: onTap,
          chosen: chosen,
        );

  const PeriodPicker.quarter(
      {Key? key,
      required double height,
      required double width,
      required int year,
      required ({DateTime start, DateTime end}) chosen,
      required bool isStart,
      void Function(DateTime date)? onTap})
      : this._(
          _Period.quarter,
          key: key,
          height: height,
          width: width,
          year: year,
          isStart: isStart,
          onTap: onTap,
          chosen: chosen,
        );

  final _Period _period;
  final int year;
  final double height;
  final double width;
  final bool isStart; //TODO: refactor

  final ({DateTime start, DateTime end}) chosen;

  final void Function(DateTime i)? onTap;

  DateTime dateFromUnit(int index) {
    return DateTime.utc(year, index + 1);
  }

  bool isStartWhenStart(DateTime date) {
    return isStart && date.isAtSameMomentAs(chosen.start);
  }

  bool isEndWhenEnd(DateTime date) {
    return !isStart && date.isAtSameMomentAs(chosen.end);
  }

  bool isBorder(DateTime date) {
    return date.isAtSameMomentAs(chosen.start) ||
        date.isAtSameMomentAs(chosen.end);
  }

  bool isBetween(DateTime date) {
    return date.isAfter(chosen.start) && date.isBefore(chosen.end);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: false,
        itemCount: _period.titles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _period.crossAxisCount,
            childAspectRatio: (width / _period.crossAxisCount) /
                (height / _period.mainAxisCount)),
        itemBuilder: (_, i) => InkWell(
          onTap: () {
            onTap?.call(dateFromUnit(i));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: _borderRadiusFromIndex(i),
              border: Border.all(color: Colors.black),
              color: isBorder(dateFromUnit(i))
                  ? Colors.black
                  : isBetween(dateFromUnit(i))
                      ? Colors.grey
                      : Colors.white,
            ),
            child: Center(
              child: isStartWhenStart(dateFromUnit(i)) ||
                      isEndWhenEnd(dateFromUnit(i))
                  ? GlowText(
                      blurRadius: 20,
                      offset: const Offset(0,0),
                      _period.titles[i],
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  : Text(
                      _period.titles[i],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isBorder(dateFromUnit(i)) ||
                                isBetween(dateFromUnit(i))
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  BorderRadius _borderRadiusFromIndex(int index) {
    if (index == 0) {
      return const BorderRadius.only(
        topLeft: Radius.circular(16),
      );
    }

    if (index == _period.crossAxisCount - 1) {
      return const BorderRadius.only(
        topRight: Radius.circular(16),
      );
    }

    if (index == _period.titles.length - _period.crossAxisCount) {
      return const BorderRadius.only(bottomLeft: Radius.circular(16));
    }

    if (index == _period.titles.length - 1) {
      return const BorderRadius.only(bottomRight: Radius.circular(16));
    }
    return BorderRadius.zero;
  }
}

enum _Period {
  month(
    titles: [
      "Январь",
      "Февраль",
      "Март",
      "Апрель",
      "Май",
      "Июнь",
      "Июль",
      "Август",
      "Сентябрь",
      "Октябрь",
      "Ноябрь",
      "Декабрь",
    ],
    units: [
      DateTime.january,
      DateTime.february,
      DateTime.march,
      DateTime.april,
      DateTime.may,
      DateTime.june,
      DateTime.july,
      DateTime.august,
      DateTime.september,
      DateTime.october,
      DateTime.november,
      DateTime.december
    ],
    crossAxisCount: 3,
  ),
  quarter(
    titles: ["I", "II", "III", "IV"],
    units: [DateTime.january, DateTime.april, DateTime.july, DateTime.october],
    crossAxisCount: 2,
  );

  const _Period(
      {required this.titles,
      required this.units,
      required this.crossAxisCount});

  final List<String> titles;
  final List<int> units;
  final int crossAxisCount;

  int get mainAxisCount => titles.length ~/ crossAxisCount;
}
