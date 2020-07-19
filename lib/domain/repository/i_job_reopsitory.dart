import 'package:dartz/dartz.dart';

import '../job_result_model/job_final_result.dart';
import '../job_search/job_failure.dart';
import '../job_search/job_search_model.dart';

abstract class IJobRepository {
  Future<Either<JobFailure, JobFinalResult>> regularSearchJob(String keyword);
  Future<Either<JobFailure, JobFinalResult>>
      regularSearchJobWithPageNumberGiven(String keyword, int pageNumber);
  Future<Either<JobFailure, JobFinalResult>> advancedSearchJob(
      JobSearchModel jobSearchModel);
  Future<Either<JobFailure, JobFinalResult>>
      advancedSearchJobWithPageNumberGiven(
          JobSearchModel jobSearchModel, int pageNumber);
}
