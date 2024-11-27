part of 'job_bloc.dart';

@freezed
class JobEvent with _$JobEvent {
  const factory JobEvent.updateArea({
    Area? area
  }) = _UpdateArea;
  const factory JobEvent.updateProfession({
    Profession? profession
  }) = _UpdateProfession;
  const factory JobEvent.updateGrade({
    Grade? grade
  }) = _UpdateGrade;
  const factory JobEvent.search() = _Search;
}
