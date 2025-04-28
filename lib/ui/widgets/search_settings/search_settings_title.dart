import 'package:each_job/domain/models/search_settings/search_settings.dart';
import 'package:each_job/ui/bloc/job_bloc.dart';
import 'package:each_job/ui/widgets/search_settings/search_settings_modal.dart';
import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchSettingsTitle extends StatefulWidget {
  const SearchSettingsTitle({super.key});

  @override
  State<SearchSettingsTitle> createState() => _SearchSettingsTitleState();
}

class _SearchSettingsTitleState extends State<SearchSettingsTitle> {
  SearchSettings _searchSettings = SearchSettings.common();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.commonHeight,
      width: double.infinity,
      child: InkWell(
        borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
        onTap: () async {
          final result = await showDialog<SearchSettings>(
            context: context,
            builder: (context) => Dialog(
              insetPadding: const EdgeInsets.all(AppSizes.outerIndent),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 450),
                child: SearchSettingsModal(
                  searchSettings: _searchSettings,
                )
              ),
            ),
          );
          if (result != null && context.mounted){
            final newSearchSettings = SearchSettings(
              searchFields: result.searchFields,
              minSalary: result.minSalary,
              hourlyVacanciesEnabled: result.hourlyVacanciesEnabled
            );
            context.read<JobBloc>().add(JobEvent.updateSearchSettings(searchSettings: newSearchSettings));
            setState(() {
              _searchSettings = newSearchSettings;
            });
          }
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
            border: Border.all(color: AppColors.strokeColor)
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3),
                  child: Icon(Icons.settings),
                ),
                const VerticalDivider(indent: 5, endIndent: 5, thickness: 1, width: 2,),
                Expanded(
                  child: Text(
                    _searchSettings.searchFields.title,
                    style: AppTextStyles.vacancySmallTextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ),
                const VerticalDivider(indent: 5, endIndent: 5, thickness: 1, width: 2,),
                Expanded(
                  child: Text(
                    "От ${_searchSettings.minSalary} Р",
                    style: AppTextStyles.vacancySmallTextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ),
                const VerticalDivider(indent: 5, endIndent: 5, thickness: 1, width: 2),
                Expanded(
                  child: Text(
                    _searchSettings.hourlyVacanciesEnabled ? "С почасовыми": "Без почасовых",
                    style: AppTextStyles.vacancySmallTextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
