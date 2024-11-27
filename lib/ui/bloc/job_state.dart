part of 'job_bloc.dart';

@freezed
class JobState with _$JobState {
  const factory JobState.initial({
    required TableData tableData
  }) = _Initial;
}
