part of 'job_bloc.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial({
    required TableData tableData
  }) = _Initial;

  const factory JobState.loading({
    required TableData tableData
  }) = _Loading;

  const factory JobState.loaded({
    required TableData tableData,
    required SalaryStatistics salaryStatistics,
  }) = _Loaded;
}
