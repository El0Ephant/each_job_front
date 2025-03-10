import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/request_dto/request_dto.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/vacancy/vacancy.dart';

abstract interface class IApiService{
  Future<List<Profession>> getProfessions();

  Future<List<Grade>> getGrades();

  Future<List<Area>> getAreas();

  Future<List<ExperienceOption>> getExperienceOptions();

  Future<SalaryStatistics> getStatistics({
    required RequestDto requestDto
  });

  Future<List<Vacancy>> getVacanciesPage({
    required RequestDto requestDto,
    required int pageNumber,
    required int pageSize
  });
}