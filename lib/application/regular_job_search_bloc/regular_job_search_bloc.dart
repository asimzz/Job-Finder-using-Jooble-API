import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/job_result_model/job_final_result.dart';
import '../../domain/job_search/job_failure.dart';
import '../../domain/repository/i_job_reopsitory.dart';

part 'regular_job_search_bloc.freezed.dart';
part 'regular_job_search_event.dart';
part 'regular_job_search_state.dart';

@injectable
class RegularJobSearchBloc
    extends Bloc<RegularJobSearchEvent, RegularJobSearchState> {
  final IJobRepository jobRepository;
  RegularJobSearchBloc(this.jobRepository)
      : super(RegularJobSearchState.initial());

  @override
  Stream<RegularJobSearchState> mapEventToState(
    RegularJobSearchEvent event,
  ) async* {
    yield* event.map(
      regularJobSearch: (e) async* {
        yield const RegularJobSearchState.searchInProgress();
        Either<JobFailure, JobFinalResult> searchFailureOrSuccess;
        searchFailureOrSuccess =
            await jobRepository.regularSearchJob(e.keywordStr);
        yield searchFailureOrSuccess.fold(
          (jobFailure) => RegularJobSearchState.searchFailure(jobFailure),
          (jobResult) => RegularJobSearchState.searchSuccess(jobResult),
        );
      },
      regularJobSearchWithPageNumber: (e) async* {
        yield const RegularJobSearchState.searchInProgress();
        Either<JobFailure, JobFinalResult> searchFailureOrSuccess;
        searchFailureOrSuccess = await jobRepository
            .regularSearchJobWithPageNumberGiven(e.keywordStr, e.pageNumber);
        yield searchFailureOrSuccess.fold(
          (jobFailure) => RegularJobSearchState.searchFailure(jobFailure),
          (jobResult) => RegularJobSearchState.searchSuccess(jobResult),
        );
      },
    );
  }
}
