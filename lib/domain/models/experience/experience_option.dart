import 'package:each_job/domain/models/i_searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experience_option.freezed.dart';
part 'experience_option.g.dart';

@freezed
class ExperienceOption with _$ExperienceOption implements ISearchable {
  const ExperienceOption._();

  const factory ExperienceOption({
    required String id,
    required String title,
  }) = _ExperienceOption;

  factory ExperienceOption.fromJson(Map<String, dynamic> json) =>
      _$ExperienceOptionFromJson(json);

  @override
  String get searchValue => title;
}
