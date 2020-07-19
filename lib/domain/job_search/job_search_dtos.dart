import 'package:freezed_annotation/freezed_annotation.dart';

import 'job_search_model.dart';

part 'job_search_dtos.freezed.dart';
part 'job_search_dtos.g.dart';

@freezed
abstract class JobSearchDTO with _$JobSearchDTO {
  const factory JobSearchDTO({
    @required String keyword,
    @required String salary,
    @required String location,
  }) = _JobSearchDTO;

  factory JobSearchDTO.fromDomain(JobSearchModel jobSearchModel) {
    return JobSearchDTO(
      keyword: jobSearchModel.keyword.getOrCrash(),
      salary: jobSearchModel.salaryInput.getOrCrash(),
      location: jobSearchModel.jobLocation.getOrCrash(),
    );
  }

  factory JobSearchDTO.fromJson(Map<String, dynamic> json) =>
      _$JobSearchDTOFromJson(json);
}
