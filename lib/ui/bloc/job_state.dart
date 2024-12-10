part of 'job_bloc.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial({
    required TableData tableData,
    ErrorDto? errors
  }) = JobStateInitial;

  const factory JobState.loading({
    required TableData tableData,
  }) = _Loading;

  const factory JobState.loaded({
    required TableData tableData,
    required SalaryStatistics salaryStatistics,
    required List<Vacancy> vacancies,
    required bool hasReachedMaxVacancies,
  }) = _Loaded;
}
