import 'package:each_job/domain/models/i_searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grade.freezed.dart';
part 'grade.g.dart';

@freezed
class Grade with _$Grade implements ISearchable {
  const Grade._();

  const factory Grade({
    required String id,
    required String title,
  }) = _Grade;

  factory Grade.fromJson(Map<String, dynamic> json) => _$GradeFromJson(json);

  @override
  String get searchValue => title;
}
