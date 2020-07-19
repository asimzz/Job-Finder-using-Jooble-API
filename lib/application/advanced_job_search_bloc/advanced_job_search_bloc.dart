import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/job_result_model/job_final_result.dart';
import '../../domain/job_search/job_failure.dart';
import '../../domain/job_search/job_search_model.dart';
import '../../domain/job_search/value_objects.dart';
import '../../domain/repository/i_job_reopsitory.dart';
import 'package:meta/meta.dart';

part 'advanced_job_search_bloc.freezed.dart';
part 'advanced_job_search_event.dart';
part 'advanced_job_search_state.dart';

@injectable
class AdvancedJobSearchBloc
    extends Bloc<AdvancedJobSearchEvent, AdvancedJobSearchState> {
  final IJobRepository jobRepository;
  AdvancedJobSearchBloc(this.jobRepository)
      : super(AdvancedJobSearchState.initial());

  @override
  Stream<AdvancedJobSearchState> mapEventToState(
    AdvancedJobSearchEvent event,
  ) async* {
    yield* event.map(
      keywordChanged: (e) async* {
        yield state.copyWith(
          keyword: Keyword(e.keywordStr),
          jobFailureOrSuccess: none(),
        );
      },
      salaryChanged: (e) async* {
        yield state.copyWith(
          salaryInput: SalaryInput(e.salaryStr),
          jobFailureOrSuccess: none(),
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith(
          jobLocation: JobLocation(e.locationStr),
          jobFailureOrSuccess: none(),
        );
      },
      advancedJobSearch: (e) async* {
        Either<JobFailure, JobFinalResult> failureOrSuccess;

        final isKeywordValid = state.keyword.isValid();
        final isSalaryValid = state.salaryInput.isValid();
        final isLocationValid = state.jobLocation.isValid();

        if (isKeywordValid && isSalaryValid && isLocationValid) {
          yield state.copyWith(
            isSearching: true,
            jobFailureOrSuccess: none(),
          );
          failureOrSuccess =
              await jobRepository.advancedSearchJob(JobSearchModel(
            keyword: state.keyword,
            salaryInput: state.salaryInput,
            jobLocation: state.jobLocation,
          ));

          yield state.copyWith(
            isSearching: false,
            jobFailureOrSuccess: some(failureOrSuccess),
          );
        }

        yield state.copyWith(
          isSearching: false,
          showErrorMessages: true,
          jobFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      advancedJobSearchWithPageNumber: (e) async* {
        Either<JobFailure, JobFinalResult> failureOrSuccess;

        yield state.copyWith(
          isSearching: true,
          jobFailureOrSuccess: none(),
        );
        failureOrSuccess =
            await jobRepository.advancedSearchJobWithPageNumberGiven(
          JobSearchModel(
            keyword: state.keyword,
            salaryInput: state.salaryInput,
            jobLocation: state.jobLocation,
          ),
          e.pageNumber,
        );

        yield state.copyWith(
          isSearching: false,
          jobFailureOrSuccess: some(failureOrSuccess),
        );
      },
    );
  }
}
