import 'package:each_job/ui/widgets/period_picker.dart';
import 'package:flutter/material.dart';

class PeriodPickerComponent extends StatefulWidget {
  const PeriodPickerComponent({super.key, this.onChanged});

  final void Function(({DateTime start, DateTime end}) newPeriod)? onChanged;

  @override
  State<PeriodPickerComponent> createState() => _PeriodPickerComponentState();
}

class _PeriodPickerComponentState extends State<PeriodPickerComponent> {
  late final PageController controller;
  bool isStart = true;
  bool isMonth = true;
  int year = 2024;
  DateTime start = DateTime.utc(2024, 1);
  DateTime end = DateTime.utc(2024, 5);

  @override
  void initState() {
    controller = PageController(initialPage: 1);
    controller.addListener(() {
      setState(() {
        year = controller.page!.round() + 2023;
      });
    });
    super.initState();
    widget.onChanged?.call((start: start, end: end));
  }

  void _onUpdate() {
    setState(() {
      widget.onChanged?.call((start: start, end: _lastDayOfMonth(end)));
    });
  }

  DateTime _roundMonthToQuarter(DateTime date) {
    return date.copyWith(month: ((date.month - 1) ~/ 3 * 3 + 1));
  }

  DateTime _lastDayOfMonth(DateTime date) {
    return date.copyWith(month: date.month+1, day: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: isMonth ? Colors.black : Colors.white,
                foregroundColor: isMonth ? Colors.white : Colors.black,
              ),
              onPressed: () {
                isMonth = true;
                _onUpdate();
              },
              child: const Text("Месяцы"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: !isMonth ? Colors.black : Colors.white,
                foregroundColor: !isMonth ? Colors.white : Colors.black,
              ),
              onPressed: () {
                isMonth = false;
                start = _roundMonthToQuarter(start);
                end = _roundMonthToQuarter(end);
                _onUpdate();
              },
              child: const Text("Кварталы"),
            ),
          ],
        ),
        SizedBox(
          height: 50,
          child: PageView.builder(
              itemCount: 2,
              controller: controller,
              itemBuilder: (_, i) {
                return Center(
                    child: Text(
                  "${i + 2023}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ));
              }),
        ),
        PeriodPicker(
          period: isMonth ? Period.month : Period.quarter,
          height: 200.0,
          width: 350.0,
          year: year,
          chosen: (start: start, end: end),
          isStart: isStart,
          onTap: (date) {
            if (date.isAtSameMomentAs(start)) {
              isStart = true;
              _onUpdate();
              return;
            }
            if (date.isAtSameMomentAs(end)) {
              isStart = false;
              _onUpdate();
              return;
            }

            if (isStart) {
              if (date.isAfter(end)) {
                isStart = false;
                start = end;
                end = date;
              } else {
                start = date;
              }
            } else {
              if (date.isBefore(start)) {
                isStart = true;
                end = start;
                start = date;
              } else {
                end = date;
              }
            }
            _onUpdate();
          },
        )
      ],
    );
  }

  static Future<({DateTime end, DateTime start})?> showAsDialog(BuildContext context) {
    return showDialog<({DateTime start, DateTime end})>(
      context: context,
      builder: (BuildContext context) {
        ({DateTime start, DateTime end}) period;
        return PopScope(
          child: AlertDialog(
            content: PeriodPickerComponent(
              onChanged: (newPeriod) {
                period = newPeriod;
              },
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
