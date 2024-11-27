import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';

abstract interface class IApiService{
  Future<List<Profession>> getProfessions();

  Future<List<Grade>> getGrades();

  Future<List<Area>> getAreas();

  Future<SalaryStatistics> getStatistics();
}