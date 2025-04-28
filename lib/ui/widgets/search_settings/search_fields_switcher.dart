part of 'search_settings_modal.dart';

class SearchFieldsSwitcher extends StatefulWidget {
  const SearchFieldsSwitcher({required this.initialValue, required this.onChange, super.key});
  final Function(SearchFields selectedOption) onChange;
  final SearchFields initialValue;

  @override
  State<SearchFieldsSwitcher> createState() => _SearchFieldsSwitcherState();
}

class _SearchFieldsSwitcherState extends State<SearchFieldsSwitcher> {
  late SearchFields _selectedOption = widget.initialValue;

  void _switch(SearchFields newSelectedOption){
    setState(() {
      _selectedOption = newSelectedOption;
    });
    widget.onChange.call(newSelectedOption);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Искать в полях:", style: AppTextStyles.commonLabelTextStyle,),
        ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: SearchFields.values.length,
          itemBuilder: (context, index) {
            final value = SearchFields.values[index];
            return GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                _switch(value);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(
                    onChanged: null,
                    groupValue: _selectedOption,
                    value: value,
                  ),
                  Text(value.title, style: AppTextStyles.commonLabelTextStyle.copyWith(fontSize: 14)),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
