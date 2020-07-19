part of 'regular_job_search_bloc.dart';

@freezed
abstract class RegularJobSearchState with _$RegularJobSearchState {
  const factory RegularJobSearchState.initial() = _Initial;
  const factory RegularJobSearchState.searchInProgress() = _SearchInProgress;
  const factory RegularJobSearchState.searchSuccess(
      JobFinalResult jobFinalResult) = _SearchSuccess;
  const factory RegularJobSearchState.searchFailure(JobFailure jobFailure) =
      _SearchFailure;
}
