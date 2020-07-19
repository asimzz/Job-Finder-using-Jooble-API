part of 'advanced_job_search_bloc.dart';

@freezed
abstract class AdvancedJobSearchEvent with _$AdvancedJobSearchEvent {
  const factory AdvancedJobSearchEvent.keywordChanged(String keywordStr) =
      _KeywordChanged;
  const factory AdvancedJobSearchEvent.salaryChanged(String salaryStr) =
      _SalaryChanged;
  const factory AdvancedJobSearchEvent.locationChanged(String locationStr) =
      _LocatuionChanged;
  const factory AdvancedJobSearchEvent.advancedJobSearch() = _AdvancedJobSearch;
  const factory AdvancedJobSearchEvent.advancedJobSearchWithPageNumber(
    int pageNumber,
  ) = _AdvancedJobSearchWithPageNumber;
}
