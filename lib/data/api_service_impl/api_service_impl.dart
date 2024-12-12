import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/vacancy/vacancy.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service_impl.g.dart';

@RestApi(baseUrl: 'http://150.241.98.84:3000/')
abstract class ApiServiceImpl implements IApiService{
  factory ApiServiceImpl(Dio dio) = _ApiServiceImpl;

  @GET('/areas')
  @override
  Future<List<Area>> getAreas();

  @GET('/grades')
  @override
  Future<List<Grade>> getGrades();

  @GET('/professions')
  @override
  Future<List<Profession>> getProfessions();

  @GET('/statistic')
  @override
  Future<SalaryStatistics> getStatistics({
    @Query('professionId') required String professionId,
    @Query('areaId') required int areaId,
    @Query('gradeId') required String? gradeId,
    @Query('from') required String? isoDateFrom,
    @Query('to') required String? isoDateTo,
  });

  @GET('/vacancies')
  @override
  Future<List<Vacancy>> getVacanciesPage({
    @Query('professionId') required String professionId,
    @Query('areaId') required int areaId,
    @Query('gradeId') required String? gradeId,
    @Query('from') required String? isoDateFrom,
    @Query('to') required String? isoDateTo,
    @Query('page') required int pageNumber,
    @Query('size') required int pageSize
  });
}