import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/table_data/table_data.dart';
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
  }
  final IApiService _apiService;
  Area? _selectedArea;
  Profession? _selectedProfession;
  Grade? _selectedGrade;

  void _onSearch(_Search event, Emitter emit) async {
    emit(JobState.loading(tableData: state.tableData));
    final data = await _apiService.getStatistics();
    emit(JobState.loaded(tableData: state.tableData, salaryStatistics: data));
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
