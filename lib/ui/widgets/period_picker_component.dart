import 'package:each_job/ui/widgets/period_picker.dart';
import 'package:flutter/material.dart';

class PeriodPickerComponent extends StatefulWidget {
  const PeriodPickerComponent({super.key});

  @override
  State<PeriodPickerComponent> createState() => _PeriodPickerComponentState();
}

class _PeriodPickerComponentState extends State<PeriodPickerComponent> {
  late final PageController controller;
  bool isStart = true;
  bool isMonth = true;
  int year = 2020;
  DateTime start = DateTime.utc(2024, 1);
  DateTime end = DateTime.utc(2024, 5);

  @override
  void initState() {
    controller = PageController();
    controller.addListener(() {
      setState(() {
        year = controller.page!.round() + 2020;
      });
    });
    super.initState();
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
                setState(() {
                  isMonth = true;
                });
              },
              child: const Text("Месяцы"),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: !isMonth ? Colors.black : Colors.white,
                foregroundColor: !isMonth ? Colors.white : Colors.black,
              ),
              onPressed: () {
                setState(() {
                  isMonth = false;
                });
              },
              child: const Text("Кварталы"),
            ),
          ],
        ),
        SizedBox(
          height: 50,
          child: PageView.builder(
              itemCount: 5,
              controller: controller,
              itemBuilder: (_, i) {
                return Center(
                    child: Text(
                  "${i + 2020}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ));
              }),
        ),
        if (isMonth) //TODO: refactor!!!
          PeriodPicker.month(
            height: 200.0,
            width: 350.0,
            year: year,
            chosen: (start: start, end: end),
            isStart: isStart,
            onTap: (date) {
              if (date.isAtSameMomentAs(start)) {
                isStart = true;
                setState(() {});
                return;
              }
              if (date.isAtSameMomentAs(end)) {
                isStart = false;
                setState(() {});
                return;
              }

              if (isStart) {
                if (date.isAfter(end)) {
                  isStart = false;
                  start = end;
                  end = date;
                } else
                  start = date;
              } else {
                if (date.isBefore(start)) {
                  isStart = true;
                  end = start;
                  start = date;
                } else
                  end = date;
              }
              setState(() {});
            },
          )
        else
          PeriodPicker.quarter(
            height: 200.0,
            width: 350.0,
            year: year,
            chosen: (start: start, end: end),
            isStart: isStart,
            onTap: (date) {
              if (date.isAtSameMomentAs(start)) {
                isStart = true;
                setState(() {});
                return;
              }
              if (date.isAtSameMomentAs(end)) {
                isStart = false;
                setState(() {});
                return;
              }

              if (isStart) {
                if (date.isAfter(end)) {
                  isStart = false;
                  start = end;
                  end = date;
                } else
                  start = date;
              } else {
                if (date.isBefore(start)) {
                  isStart = true;
                  end = start;
                  start = date;
                } else
                  end = date;
              }
              setState(() {});
            },
          ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
