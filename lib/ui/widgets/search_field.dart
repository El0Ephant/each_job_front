import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fuzzywuzzy/fuzzywuzzy.dart';

class SearchField<T> extends StatefulWidget {
  const SearchField({
    super.key,
    required this.label,
    required this.onChange,
    required this.choices,
    this.hint = 'Выбрать...',
    this.maxSuggestions = 15,
  });
  final List<T> choices;
  final Function(T selectedValue) onChange;
  final String label;
  final String hint;
  final int maxSuggestions;

  @override
  State<SearchField<T>> createState() => _SearchFieldState<T>();
}

class _SearchFieldState<T> extends State<SearchField<T>> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<T>(
      decorationBuilder: (context, child) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 350,),
          child: Material(
            type: MaterialType.card,
            elevation: 10,
            borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
            child: child,
          ),
        );
      },
      controller: _searchController,
      builder: (context, controller, focusNode) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.label, style: AppTextStyles.commonLabelTextStyle,),
            const SizedBox(height: AppSizes.innerIndent,),
            SizedBox(
              height: AppSizes.commonHeight,
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: widget.hint,
                ),
              ),
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
          child: Text(value.toString(),
            style: AppTextStyles.commonLabelTextStyle,
          ),
        );
      },
      onSelected: (value) {
        _searchController.text = value.toString();
        _searchController.selection = TextSelection.collapsed(
          offset: value.toString().length
        );
        widget.onChange(value);
      },
      suggestionsCallback: (String search) {
        if (search.isEmpty){
          return widget.choices;
        }
        return extractTop<T>(
          query: search,
          choices: widget.choices,
          limit: widget.maxSuggestions,
          cutoff: 70,
        ).map((extractedResult) => extractedResult.choice).toList();
      },
    );
  }
}
