import 'package:each_job/domain/models/i_searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profession.freezed.dart';
part 'profession.g.dart';

@freezed
class Profession with _$Profession implements ISearchable{
  const Profession._();

  const factory Profession({
    required String id,
    required String title,
  }) = _Profession;

  factory Profession.fromJson(Map<String, dynamic> json) => _$ProfessionFromJson(json);

  @override
  String get searchValue => title;
}
