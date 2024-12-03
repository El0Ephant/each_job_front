import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/table_data/table_data.dart';
import 'package:each_job/domain/models/vacancy/vacancy.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_event.dart';
part 'job_state.dart';
part 'job_bloc.freezed.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  JobBloc(this._apiService, TableData tableData) : super(JobState.initial(tableData: tableData)) {
    on<_UpdateArea>(_onUpdateAreaEvent);
    on<_UpdateProfession>(_onUpdateProfessionEvent);
    on<_UpdateGrade>(_onUpdateGradeEvent);
    on<_Search>(_onSearch);
    on<_FetchPage>(_onFetchPage);
  }
  final IApiService _apiService;
  final _vacanciesPageSize = 20;
  Area? _selectedArea;
  Profession? _selectedProfession;
  Grade? _selectedGrade;

  void _onSearch(_Search event, Emitter emit) async {
    emit(JobState.loading(tableData: state.tableData));
    final [
      data as SalaryStatistics,
      vacancies as List<Vacancy>
    ] = await Future.wait([
      _apiService.getStatistics(
        area: _selectedArea,
        grade: _selectedGrade,
        profession: _selectedProfession
      ),
      _apiService.getVacanciesPage(
        area: _selectedArea,
        grade: _selectedGrade,
        profession: _selectedProfession,
        pageSize: _vacanciesPageSize,
        skip: 0
      ),
    ]);
    emit(JobState.loaded(
      tableData: state.tableData,
      salaryStatistics: data,
      vacancies: vacancies,
      hasReachedMaxVacancies: vacancies.length < _vacanciesPageSize
    ));
  }

  void _onFetchPage(_FetchPage event, Emitter emit) async {
    if (state is! _Loaded){
      return;
    }
    final loadedState = state as _Loaded;
    if (loadedState.hasReachedMaxVacancies){
      return;
    }
    final newPage = await _apiService.getVacanciesPage(
      area: _selectedArea,
      grade: _selectedGrade,
      profession: _selectedProfession,
      pageSize: _vacanciesPageSize,
      skip: loadedState.vacancies.length
    );
    emit(
      loadedState.copyWith(
        hasReachedMaxVacancies: newPage.length < _vacanciesPageSize,
        vacancies: List.of(loadedState.vacancies)..addAll(newPage)
      )
    );
  }

  void _onUpdateAreaEvent(_UpdateArea event, Emitter emit){
    _selectedArea = event.area;
  }

  void _onUpdateProfessionEvent(_UpdateProfession event, Emitter emit){
    _selectedProfession = event.profession;
  }

  void _onUpdateGradeEvent(_UpdateGrade event, Emitter emit){
    _selectedGrade = event.grade;
  }
}
