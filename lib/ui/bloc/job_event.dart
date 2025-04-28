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
  const factory JobEvent.updateExperienceOption({
    ExperienceOption? experienceOption
  }) = _UpdateExperienceOption;
  const factory JobEvent.updatePeriod({
  ({DateTime start, DateTime end})? period
  }) = _UpdatePeriod;
  const factory JobEvent.updateSearchSettings({
    required SearchSettings searchSettings
  }) = _UpdateSearchSettings;
  const factory JobEvent.search() = _Search;
  const factory JobEvent.fetchPage() = _FetchPage;
}
