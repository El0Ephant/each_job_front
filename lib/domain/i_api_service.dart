import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';

abstract interface class IApiService{
  Future<List<Profession>> getProfessions();

  Future<List<Grade>> getGrades();

  Future<List<Area>> getAreas();
}