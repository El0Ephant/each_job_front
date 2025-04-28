import 'package:each_job/domain/models/search_fields.dart';
import 'package:each_job/domain/models/search_settings/search_settings.dart';
import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'search_fields_switcher.dart';
part 'min_salary_picker.dart';
part 'hourly_checkbox.dart';

class SearchSettingsModal extends StatefulWidget {
  const SearchSettingsModal({
    required this.searchSettings,
    super.key
  });
  final SearchSettings searchSettings;

  @override
  State<SearchSettingsModal> createState() => _SearchSettingsModalState();
}

class _SearchSettingsModalState extends State<SearchSettingsModal> {
  late SearchSettings _searchSettings = widget.searchSettings;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              "Настройки поиска",
              style: AppTextStyles.commonLabelTextStyle.copyWith(fontWeight: FontWeight.w500,),
            )
          ),
          const SizedBox(height: AppSizes.innerIndent,),
          SearchFieldsSwitcher(
            initialValue: _searchSettings.searchFields,
            onChange: (selectedOption) {
              _searchSettings = _searchSettings.copyWith(
                searchFields: selectedOption
              );
            },
          ),
          const SizedBox(height: 15,),
          HourlyCheckbox(
            initialValue: _searchSettings.hourlyVacanciesEnabled,
            onChange: (value) {
              _searchSettings = _searchSettings.copyWith(
                hourlyVacanciesEnabled: value,
              );
            },
          ),
          const SizedBox(height: 15,),
          MinSalaryPicker(
            initialValue: _searchSettings.minSalary,
            onChange: (minSalary) {
              _searchSettings = _searchSettings.copyWith(
                minSalary: minSalary
              );
            },
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: AppSizes.commonHeight,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.resolveWith(
                        (states) {
                          if (states.contains(WidgetState.pressed)){
                            return AppColors.main1Color.withOpacity(0.1);
                          }
                          return AppColors.backgroundColor;
                        },
                      )
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Отмена", style: TextStyle(color: AppColors.textColor),),
                  ),
                ),
              ),
              const SizedBox(
                width: AppSizes.innerIndent,
              ),
              Expanded(
                child: SizedBox(
                  height: AppSizes.commonHeight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(
                        _searchSettings
                      );
                    },
                    child: const Text("Ок"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
