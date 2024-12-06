import 'package:each_job/ui/widgets/period_picker.dart';
import 'package:flutter/material.dart';

class PeriodPickerDemo extends StatefulWidget {
  const PeriodPickerDemo({super.key});

  @override
  State<PeriodPickerDemo> createState() => _PeriodPickerDemoState();
}

class _PeriodPickerDemoState extends State<PeriodPickerDemo> {
  DateTime start = DateTime.utc(2024, 1);
  DateTime end = DateTime.utc(2024, 5);
  bool isStart = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            isStart = true;
          },
          child: Text("Начало"),
        ),
        TextButton(
            onPressed: () {
              isStart = false;
            },
            child: Text("Конец")),
        PeriodPicker.month(
          height: 200.0,
          width: 350.0,
          year: 2024,
          chosen: (start: start, end: end),
          onTap: (date) {
            setState(() {
              if (isStart) {
                start = date;
              } else {
                end = date;
              }
            });
          },
        ),
      ],
    );
  }
}
