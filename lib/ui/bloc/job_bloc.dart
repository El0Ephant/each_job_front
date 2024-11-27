import 'package:each_job/domain/models/table_data/table_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_event.dart';
part 'job_state.dart';
part 'job_bloc.freezed.dart';

class JobBloc extends Bloc<JobEvent, JobState> {
  JobBloc({
    required TableData tableData
  }) : super(
    JobState.initial(
      tableData: tableData
    )
  ) {
    on<JobEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
