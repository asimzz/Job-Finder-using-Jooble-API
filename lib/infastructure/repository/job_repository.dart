import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../domain/core/network/job_api_key/job_search_api_key.dart';
import '../../domain/core/network/network_info.dart';
import '../../domain/job_result_model/job_final_result.dart';
import '../../domain/job_search/job_failure.dart';
import '../../domain/job_search/job_search_dtos.dart';
import '../../domain/job_search/job_search_model.dart';
import '../../domain/repository/i_job_reopsitory.dart';
import '../data_source/job_result_dto.dart';

const String BASE_URL = 'https://jooble.org/api/';

@LazySingleton(as: IJobRepository)
class JobRepository implements IJobRepository {
  final http.Client client;
  final NetworkInfo networkInfo;

  JobRepository(this.client, this.networkInfo);

  @override
  Future<Either<JobFailure, JobFinalResult>> regularSearchJob(
      String keyword) async {
    final fullUrl = BASE_URL + API_KEY;
    if (await networkInfo.isConnected) {
      final response = await client.post(fullUrl,
          headers: {"Content-type": "application/json"},
          body: json.encode({
            'keywords': keyword,
          }));

      if (response.statusCode == 200) {
        return right(JobResultDTO.fromJson(json.decode(response.body))
            .toDomain()
            .toDomain());
      } else if (response.statusCode == 400) {
        return left(JobFailure.insufficientInfo());
      } else {
        return left(JobFailure.serverFailure());
      }
    } else {
      return left(JobFailure.internetFailure());
    }
  }

  @override
  Future<Either<JobFailure, JobFinalResult>>
      regularSearchJobWithPageNumberGiven(
          String keyword, int pageNumber) async {
    final fullUrl = BASE_URL + API_KEY;
    if (await networkInfo.isConnected) {
      final response = await client.post(fullUrl,
          headers: {"Content-type": "application/json"},
          body: json.encode({
            'keywords': keyword,
            'page': pageNumber,
          }));
      if (response.statusCode == 200) {
        return right(JobResultDTO.fromJson(json.decode(response.body))
            .toDomain()
            .toDomain());
      } else if (response.statusCode == 400) {
        return left(JobFailure.insufficientInfo());
      } else {
        return left(JobFailure.serverFailure());
      }
    } else {
      return left(JobFailure.internetFailure());
    }
  }

  @override
  Future<Either<JobFailure, JobFinalResult>> advancedSearchJob(
      JobSearchModel jobSearchModel) async {
    final jobDTO = JobSearchDTO.fromDomain(jobSearchModel);
    final fullUrl = BASE_URL + API_KEY;

    if (await networkInfo.isConnected) {
      if (jobDTO.salary.isEmpty) {
        final response = await client.post(fullUrl,
            headers: {"Content-type": "application/json"},
            body: json.encode({
              'keywords': jobDTO.keyword,
              'location': jobDTO.location,
            }));
        if (response.statusCode == 200) {
          return right(JobResultDTO.fromJson(json.decode(response.body))
              .toDomain()
              .toDomain());
        } else {
          return left(JobFailure.serverFailure());
        }
      } else {
        final response = await client.post(fullUrl,
            headers: {"Content-type": "application/json"},
            body: json.encode({
              'keywords': jobDTO.keyword,
              'salary': jobDTO.salary,
              'location': jobDTO.location,
            }));
        if (response.statusCode == 200) {
          return right(JobResultDTO.fromJson(json.decode(response.body))
              .toDomain()
              .toDomain());
        } else if (response.statusCode == 400) {
          return left(JobFailure.insufficientInfo());
        } else {
          return left(JobFailure.serverFailure());
        }
      }
    } else {
      return left(JobFailure.internetFailure());
    }
  }

  @override
  Future<Either<JobFailure, JobFinalResult>>
      advancedSearchJobWithPageNumberGiven(
          JobSearchModel jobSearchModel, int pageNumber) async {
    final jobDTO = JobSearchDTO.fromDomain(jobSearchModel);
    final fullUrl = BASE_URL + API_KEY;
    if (await networkInfo.isConnected) {
      final response = await client.post(fullUrl,
          headers: {"Content-type": "application/json"},
          body: json.encode({
            'keywords': jobDTO.keyword,
            'salary': jobDTO.salary,
            'location': jobDTO.location,
            'page': pageNumber,
          }));
      if (response.statusCode == 200) {
        return right(JobResultDTO.fromJson(json.decode(response.body))
            .toDomain()
            .toDomain());
      } else if (response.statusCode == 400) {
        return left(JobFailure.insufficientInfo());
      } else {
        return left(JobFailure.serverFailure());
      }
    } else {
      return left(JobFailure.internetFailure());
    }
  }
}
