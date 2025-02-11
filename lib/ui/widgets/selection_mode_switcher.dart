import 'package:each_job/ui/widgets/two_options_switcher.dart';
import 'package:flutter/material.dart';

class SelectionModeSwitcher extends StatelessWidget {
  const SelectionModeSwitcher({
    super.key,
    required this.onChange,
  });
  final Function(bool isStrict) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: TwoOptionsSwitcher(
        onChange: (isFirstSelected) {
          onChange(!isFirstSelected);
        },
        first: 'Количество',
        second: 'Релевантность',
      ),
    );
  }
}
