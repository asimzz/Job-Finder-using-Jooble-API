import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../domain/job_model/job_model.dart';
import '../../domain/job_model/value_objects.dart';
import '../../domain/job_result_model/job_result_model.dart';

part 'job_result_dto.freezed.dart';
part 'job_result_dto.g.dart';

@freezed
abstract class JobResultDTO implements _$JobResultDTO {
  const JobResultDTO._();
  const factory JobResultDTO({
    @required int totalCount,
    @required List<JobDTO> jobs,
  }) = _JobResultDTO;

  JobResultModel toDomain() {
    return JobResultModel(
      totalCount: totalCount,
      jobModel: (jobs.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }

  factory JobResultDTO.fromJson(Map<String, dynamic> json) =>
      _$JobResultDTOFromJson(json);
}

@freezed
abstract class JobDTO implements _$JobDTO {
  const JobDTO._();
  const factory JobDTO({
    @required String title,
    @required String location,
    @required String snippet,
    @required String salary,
    @required String source,
    @required String type,
    @required String link,
    @required String company,
    @required String updated,
    @required int id,
  }) = _JobDTO;

  factory JobDTO.fromJson(Map<String, dynamic> json) => _$JobDTOFromJson(json);

  JobModel toDomain() {
    return JobModel(
      title: title,
      location: location,
      salary: Salary(salary),
      snippet: snippet,
      type: JobType(type),
      source: source,
      updated: UpdatedDate(updated),
      company: company,
      link: link,
      id: id,
    );
  }
}
