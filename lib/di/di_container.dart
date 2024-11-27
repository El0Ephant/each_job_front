import 'package:each_job/data/api_service_impl_mock.dart';
import 'package:each_job/domain/i_api_service.dart';

class DiContainer{
  static final DiContainer _instance = DiContainer._internal();

  DiContainer._internal();

  factory DiContainer() {
    return _instance;
  }

  late final IApiService apiService = ApiServiceImplMock();
}