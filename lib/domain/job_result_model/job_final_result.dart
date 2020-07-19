import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../core/util/page_numbers_count.dart';
import '../job_model/job_model.dart';

part 'job_final_result.freezed.dart';

@freezed
abstract class JobFinalResult with _$JobFinalResult {
  const factory JobFinalResult({
    @required KtList<JobModel> jobModel,
    @required NumberOfPages numberOfPages,
  }) = _JobFinalResult;
}
