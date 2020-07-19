// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JobResultDTO _$_$_JobResultDTOFromJson(Map<String, dynamic> json) {
  return _$_JobResultDTO(
    totalCount: json['totalCount'] as int,
    jobs: (json['jobs'] as List)
        ?.map((e) =>
            e == null ? null : JobDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_JobResultDTOToJson(_$_JobResultDTO instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'jobs': instance.jobs,
    };

_$_JobDTO _$_$_JobDTOFromJson(Map<String, dynamic> json) {
  return _$_JobDTO(
    title: json['title'] as String,
    location: json['location'] as String,
    snippet: json['snippet'] as String,
    salary: json['salary'] as String,
    source: json['source'] as String,
    type: json['type'] as String,
    link: json['link'] as String,
    company: json['company'] as String,
    updated: json['updated'] as String,
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$_$_JobDTOToJson(_$_JobDTO instance) => <String, dynamic>{
      'title': instance.title,
      'location': instance.location,
      'snippet': instance.snippet,
      'salary': instance.salary,
      'source': instance.source,
      'type': instance.type,
      'link': instance.link,
      'company': instance.company,
      'updated': instance.updated,
      'id': instance.id,
    };
