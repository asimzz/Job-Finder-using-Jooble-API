import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../core/util/page_numbers_count.dart';
import '../job_model/job_model.dart';
import 'job_final_result.dart';

part 'job_result_model.freezed.dart';

@freezed
abstract class JobResultModel implements _$JobResultModel {
  const JobResultModel._();
  const factory JobResultModel({
    @required int totalCount,
    @required KtList<JobModel> jobModel,
  }) = _JobResultModel;

  JobFinalResult toDomain() {
    return JobFinalResult(
        jobModel: jobModel,
        numberOfPages: NumberOfPages.calculateNumberOfPages(totalCount));
  }
}
