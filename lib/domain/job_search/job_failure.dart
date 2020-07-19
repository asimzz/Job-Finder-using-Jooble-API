import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_failure.freezed.dart';

@freezed
abstract class JobFailure with _$JobFailure {
  const factory JobFailure.serverFailure() = _ServerFailure;
  const factory JobFailure.internetFailure() = _InternetFailure;
  const factory JobFailure.unexpected() = _Unexpected;
  const factory JobFailure.insufficientInfo() = _InsufficientInfo;
}
