import 'package:each_job/data/api_service_impl/api_service_impl.dart';
import 'package:each_job/data/api_service_impl_mock.dart';
import 'package:each_job/domain/i_api_service.dart';
import 'package:dio/dio.dart';

class DiContainer{
  static final DiContainer _instance = DiContainer._internal();

  DiContainer._internal();

  factory DiContainer() {
    return _instance;
  }

  late final Dio _dio = Dio()..options.headers['Connection'] = 'Keep-Alive';

  late final IApiService apiService = ApiServiceImpl(_dio);
}