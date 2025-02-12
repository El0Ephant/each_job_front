import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/experience/experience_option.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/request_dto/request_dto.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/table_data/table_data.dart';
import 'package:each_job/domain/models/vacancy/vacancy.dart';
import 'package:each_job/ui/bloc/error_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_event.dart';

part 'job_state.dart';

part 'job_bloc.freezed.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  JobBloc(this._apiService, TableData tableData)
      : super(JobState.initial(tableData: tableData)) {
    on<_UpdateArea>(_onUpdateAreaEvent);
    on<_UpdateProfession>(_onUpdateProfessionEvent);
    on<_UpdateGrade>(_onUpdateGradeEvent);
    on<_UpdateExperienceOption>(_onUpdateExperienceOption);
    on<_UpdatePeriod>(_onUpdatePeriodEvent);
    on<_UpdateSelectionMode>(_onUpdateSelectionMode);
    on<_Search>(_onSearch);
    on<_FetchPage>(_onFetchPage);
  }

  final IApiService _apiService;
  final _vacanciesPageSize = 20;
  RequestDto _requestDto = RequestDto.empty();
  late RequestDto _cachedRequestDto;

  void _onSearch(_Search event, Emitter emit) async {
    if (!_requestDto.isReady) {
      emit(JobState.initial(
          tableData: state.tableData,
          errors: ErrorDto(
              areaIsEmpty: _requestDto.area == null,
              professionIsEmpty: _requestDto.profession == null)));
      return;
    }
    emit(JobState.loading(tableData: state.tableData));
    _cachedRequestDto = _requestDto.copyWith();
    final [data as SalaryStatistics, vacancies as List<Vacancy>] =
        await Future.wait([
      _apiService.getStatistics(
        requestDto: _cachedRequestDto,
      ),
      _apiService.getVacanciesPage(
        requestDto: _cachedRequestDto,
        pageNumber: 0,
        pageSize: _vacanciesPageSize,
      ),
    ]);
    emit(JobState.loaded(
        tableData: state.tableData,
        salaryStatistics: data,
        vacancies: vacancies,
        hasReachedMaxVacancies: vacancies.length < _vacanciesPageSize));
  }

  bool _pageFetching = false;

  void _onFetchPage(_FetchPage event, Emitter emit) async {
    if (state is! _Loaded || _pageFetching) {
      return;
    }
    final loadedState = state as _Loaded;
    if (loadedState.hasReachedMaxVacancies) {
      return;
    }
    _pageFetching = true;
    final newPage = await _apiService.getVacanciesPage(
      requestDto: _cachedRequestDto,
      pageNumber: loadedState.vacancies.length ~/ _vacanciesPageSize,
      pageSize: _vacanciesPageSize,
    );
    _pageFetching = false;
    emit(loadedState.copyWith(
        hasReachedMaxVacancies: newPage.length < _vacanciesPageSize,
        vacancies: List.of(loadedState.vacancies)..addAll(newPage)));
  }

  void _onUpdateAreaEvent(_UpdateArea event, Emitter emit) {
    _requestDto = _requestDto.copyWith(area: event.area);
  }

  void _onUpdateProfessionEvent(_UpdateProfession event, Emitter emit) {
    _requestDto = _requestDto.copyWith(profession: event.profession);
  }

  void _onUpdateGradeEvent(_UpdateGrade event, Emitter emit) {
    _requestDto = _requestDto.copyWith(grade: event.grade);
    print("${_requestDto.experienceOption}  ${_requestDto.grade}");
  }

  void _onUpdateExperienceOption(_UpdateExperienceOption event, Emitter emit) {
    _requestDto = _requestDto.copyWith(experienceOption: event.experienceOption);
    print("${_requestDto.experienceOption}  ${_requestDto.grade}");
  }

  void _onUpdatePeriodEvent(_UpdatePeriod event, Emitter emit) {
    _requestDto = _requestDto.copyWith(
        fromDate: event.period?.start, toDate: event.period?.end);
  }

  void _onUpdateSelectionMode(_UpdateSelectionMode event, Emitter emit) {
    _requestDto = _requestDto.copyWith(isStrictSelectionMode: event.isStrict);
  }
}
