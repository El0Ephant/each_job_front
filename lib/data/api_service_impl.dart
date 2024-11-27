import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';

class ApiServiceImpl implements IApiService{
  @override
  Future<List<Area>> getAreas() {
    // TODO: implement getAreas
    throw UnimplementedError();
  }

  @override
  Future<List<Grade>> getGrades() {
    // TODO: implement getGrades
    throw UnimplementedError();
  }

  @override
  Future<List<Profession>> getProfessions() {
    // TODO: implement getProfessions
    throw UnimplementedError();
  }

  @override
  Future<SalaryStatistics> getStatistics() {
    // TODO: implement getStatistics
    throw UnimplementedError();
  }
}