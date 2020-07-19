part of 'regular_job_search_bloc.dart';

@freezed
abstract class RegularJobSearchEvent with _$RegularJobSearchEvent {
  const factory RegularJobSearchEvent.regularJobSearch(String keywordStr) =
      _RegularJobSearch;
  const factory RegularJobSearchEvent.regularJobSearchWithPageNumber(
    String keywordStr,
    int pageNumber,
  ) = _RegularJobSearchWithPageNumber;
}
