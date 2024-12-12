import 'package:each_job/domain/models/i_searchable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area implements ISearchable {
  const Area._();

  const factory Area({
    required int id,
    required String title,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);

  @override
  String get searchValue => title;
}
