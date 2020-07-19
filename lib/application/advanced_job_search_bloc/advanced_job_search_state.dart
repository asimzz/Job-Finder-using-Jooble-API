part of 'advanced_job_search_bloc.dart';

@freezed
abstract class AdvancedJobSearchState with _$AdvancedJobSearchState {
  const factory AdvancedJobSearchState({
    @required Keyword keyword,
    @required SalaryInput salaryInput,
    @required JobLocation jobLocation,
    @required bool showErrorMessages,
    @required bool isSearching,
    @required Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess,
  }) = _AdvancedJobSearchState;

  factory AdvancedJobSearchState.initial() => AdvancedJobSearchState(
        keyword: Keyword(''),
        salaryInput: SalaryInput(''),
        jobLocation: JobLocation(''),
        showErrorMessages: false,
        isSearching: false,
        jobFailureOrSuccess: none(),
      );
}
