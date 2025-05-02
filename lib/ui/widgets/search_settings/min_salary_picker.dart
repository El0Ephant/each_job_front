part of 'search_settings_modal.dart';

class MinSalaryPicker extends StatefulWidget {
  const MinSalaryPicker({required this.initialValue, required this.onChange, super.key});
  final int initialValue;
  final Function(int) onChange;
  @override
  State<MinSalaryPicker> createState() => _MinSalaryState();
}

class _MinSalaryState extends State<MinSalaryPicker> {
  late final TextEditingController _controller = TextEditingController(text: widget.initialValue.toString());

  @override
  void initState() {
    super.initState();
    _controller.addListener((){
      final value = _controller.text.isEmpty ? 0 : int.parse(_controller.value.text);
      widget.onChange(value);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("Мин. зарплата", style: AppTextStyles.commonLabelTextStyle,),
        const SizedBox(width: 20,),
        Expanded(
          child: TextField(
            controller: _controller,
            style: const TextStyle(fontSize: 14),
            maxLines: 1,
            textAlign: TextAlign.end,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: AppSizes.commonBorderRadius),
              isDense: true,
              suffixText: '₽',
              suffixStyle: TextStyle(fontSize: 14),
            ),
            keyboardType: TextInputType.number,
          )
        )
      ],
    );
  }
}
