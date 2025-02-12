import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TwoOptionsSwitcher extends StatefulWidget {
  const TwoOptionsSwitcher({
    super.key,
    required this.onChange,
    required this.first,
    required this.second,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
    this.firstIsDefault = true
  });
  final String first;
  final String second;
  final bool firstIsDefault;
  final MainAxisAlignment mainAxisAlignment;
  final Function(bool isFirstSelected) onChange;

  @override
  State<TwoOptionsSwitcher> createState() => _TwoOptionsSwitcherState();
}

class _TwoOptionsSwitcherState extends State<TwoOptionsSwitcher> {
  late bool _isFirstSelected = widget.firstIsDefault;

  void _switch(bool isFirstSelected){
    setState(() {
      _isFirstSelected = isFirstSelected;
    });
    widget.onChange.call(isFirstSelected);
  }

  @override
  void initState() {
    super.initState();
    // Trick to guarantee correct option. PostFrameCallback to avoid rebuilds during build
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.onChange.call(_isFirstSelected);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: widget.mainAxisAlignment,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _switch(true);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                onChanged: null,
                groupValue: _isFirstSelected,
                value: true,
              ),
              Text(widget.first, style: AppTextStyles.commonLabelTextStyle)
            ],
          ),
        ),
        const SizedBox(width: 5,),
        GestureDetector(
          behavior: HitTestBehavior.deferToChild,
          onTap:  () {
            _switch(false);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(
                onChanged: null,
                groupValue: _isFirstSelected,
                value: false,
              ),
              Text(widget.second, style: AppTextStyles.commonLabelTextStyle)
            ],
          ),
        )
      ],
    );
  }
}
