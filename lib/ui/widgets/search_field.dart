import 'package:each_job/domain/models/i_searchable.dart';
import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';

class SearchField<T extends ISearchable> extends StatefulWidget {
  const SearchField({
    super.key,
    required this.label,
    required this.onChange,
    required this.choices,
    this.hint = 'Выбрать...',
    this.maxSuggestions = 20,
    this.typeAheadEnabled = true,
    this.hasError = false
  });
  final List<T> choices;
  final Function(T? selectedValue) onChange;
  final String label;
  final String hint;
  final int maxSuggestions;
  final bool typeAheadEnabled;
  final bool hasError;

  @override
  State<SearchField<T>> createState() => _SearchFieldState<T>();
}

class _SearchFieldState<T extends ISearchable> extends State<SearchField<T>> {
  final _searchController = TextEditingController();
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<T>(
      decorationBuilder: (context, child) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 350,),
          child: Material(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
            type: MaterialType.card,
            elevation: 10,
            child: child,
          ),
        );
      },
      focusNode: _focusNode,
      controller: _searchController,
      builder: (context, controller, focusNode) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.label, style: AppTextStyles.commonLabelTextStyle,),
            const SizedBox(height: AppSizes.innerIndent,),
            SizedBox(
              height: AppSizes.commonHeight,
              child: _SearchTextField(
                onClear: () { widget.onChange(null); },
                controller: controller,
                focusNode: focusNode,
                hint: widget.hint,
                readOnly: !widget.typeAheadEnabled,
                hasError: widget.hasError,
              )
            ),
          ],
        );
      },
      debounceDuration: const Duration(milliseconds: 500),
      itemBuilder: (BuildContext context, T value) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: AppSizes.innerIndent,
            horizontal: AppSizes.textFieldIndent
          ),
          child: Text(value.searchValue,
            style: AppTextStyles.commonLabelTextStyle,
          ),
        );
      },
      emptyBuilder: (context) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppSizes.innerIndent,
            horizontal: AppSizes.textFieldIndent
          ),
          child: Text("Ничего не найдено", style: AppTextStyles.commonLabelTextStyle),
        );
      },
      onSelected: (value) {
        _searchController.text = value.searchValue;
        _searchController.selection = TextSelection.collapsed(
          offset: value.searchValue.length
        );
        widget.onChange(value);
        _focusNode.unfocus();
      },
      suggestionsCallback: (String search) {
        if (search.isEmpty || !widget.typeAheadEnabled){
          return widget.choices;
        }
        return extractTop<T>(
          query: search,
          choices: widget.choices,
          limit: widget.maxSuggestions,
          cutoff: 70,
          getter: (obj) => obj.searchValue,
        ).map((extractedResult) => extractedResult.choice).toList();
      },
    );
  }
}

class _SearchTextField extends StatefulWidget {
  const _SearchTextField({
    required this.controller,
    required this.focusNode,
    required this.hint,
    required this.readOnly,
    required this.onClear,
    required this.hasError
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hint;
  final bool readOnly;
  final Function() onClear;
  final bool hasError;

  @override
  State<_SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<_SearchTextField> {
  final _suffixIconSize = 24.0;
  late bool _hasError = widget.hasError;
  final _errorBorder = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius)),
    borderSide: BorderSide(
      color: AppColors.errorColor,
      width: 1
    )
  );

  @override
  void initState() {
    super.initState();
    widget.focusNode.addListener(_onUpdate);
    widget.controller.addListener(_onUpdate);
  }

  @override
  void didUpdateWidget(covariant _SearchTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    _hasError = widget.hasError;
  }

  @override
  void dispose() {
    widget.focusNode.removeListener(_onUpdate);
    widget.controller.removeListener(_onUpdate);
    super.dispose();
  }

  void _onUpdate(){
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon;
    if (widget.focusNode.hasFocus){
      if (widget.controller.text.isNotEmpty){
        suffixIcon = InkWell(
          borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
          onTap: () {
            widget.onClear();
            widget.controller.clear();
          },
          child: Icon(
            Icons.close_rounded,
            color: AppColors.main1Color,
            size: _suffixIconSize,
          ),
        );
      }
    } else {
      suffixIcon = Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.main1Color, size: _suffixIconSize,);
    }
    return TextField(
      readOnly: widget.readOnly,
      controller: widget.controller,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        enabledBorder: _hasError ? _errorBorder : null,
        focusedBorder: _hasError ? _errorBorder : null,
        hintText: widget.hint,
        suffixIcon: suffixIcon
      ),
    );
  }
}

