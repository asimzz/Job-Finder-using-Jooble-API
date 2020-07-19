import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'job_search_model.freezed.dart';

@freezed
abstract class JobSearchModel with _$JobSearchModel {
  const factory JobSearchModel({
    @required Keyword keyword,
    @required SalaryInput salaryInput,
    @required JobLocation jobLocation,
  }) = _JobSearchModel;

  factory JobSearchModel.empty() => JobSearchModel(
        keyword: Keyword(''),
        salaryInput: SalaryInput(''),
        jobLocation: JobLocation(''),
      );
}
