part of 'search_settings_modal.dart';

class HourlyCheckbox extends StatefulWidget {
  const HourlyCheckbox({required this.initialValue, required this.onChange, super.key});
  final bool initialValue;
  final Function(bool) onChange;

  @override
  State<HourlyCheckbox> createState() => _HourlyCheckboxState();
}

class _HourlyCheckboxState extends State<HourlyCheckbox> {
  late bool _isActive = widget.initialValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isActive = !_isActive;
        });
        widget.onChange.call(_isActive);
      },
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Вакансии с почасовой оплатой",
              style: AppTextStyles.commonLabelTextStyle,
              maxLines: 2,
            ),
          ),
          Checkbox(
            value: _isActive,
            onChanged: null
          ),

        ],
      ),
    );
  }
}
