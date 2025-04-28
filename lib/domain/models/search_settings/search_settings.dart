import 'package:each_job/domain/models/search_fields.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_settings.freezed.dart';

@freezed
class SearchSettings with _$SearchSettings {
  const SearchSettings._();

  const factory SearchSettings({
    required SearchFields searchFields,
    required int minSalary,
    required bool hourlyVacanciesEnabled,
  }) = _SearchSettings;

  factory SearchSettings.common() => const SearchSettings(
    searchFields: SearchFields.titleAndRequirements,
    minSalary: 10000,
    hourlyVacanciesEnabled: false
  );
}