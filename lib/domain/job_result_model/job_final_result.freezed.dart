// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_final_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JobFinalResultTearOff {
  const _$JobFinalResultTearOff();

  _JobFinalResult call(
      {@required KtList<JobModel> jobModel,
      @required NumberOfPages numberOfPages}) {
    return _JobFinalResult(
      jobModel: jobModel,
      numberOfPages: numberOfPages,
    );
  }
}

// ignore: unused_element
const $JobFinalResult = _$JobFinalResultTearOff();

mixin _$JobFinalResult {
  KtList<JobModel> get jobModel;
  NumberOfPages get numberOfPages;

  $JobFinalResultCopyWith<JobFinalResult> get copyWith;
}

abstract class $JobFinalResultCopyWith<$Res> {
  factory $JobFinalResultCopyWith(
          JobFinalResult value, $Res Function(JobFinalResult) then) =
      _$JobFinalResultCopyWithImpl<$Res>;
  $Res call({KtList<JobModel> jobModel, NumberOfPages numberOfPages});
}

class _$JobFinalResultCopyWithImpl<$Res>
    implements $JobFinalResultCopyWith<$Res> {
  _$JobFinalResultCopyWithImpl(this._value, this._then);

  final JobFinalResult _value;
  // ignore: unused_field
  final $Res Function(JobFinalResult) _then;

  @override
  $Res call({
    Object jobModel = freezed,
    Object numberOfPages = freezed,
  }) {
    return _then(_value.copyWith(
      jobModel:
          jobModel == freezed ? _value.jobModel : jobModel as KtList<JobModel>,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages as NumberOfPages,
    ));
  }
}

abstract class _$JobFinalResultCopyWith<$Res>
    implements $JobFinalResultCopyWith<$Res> {
  factory _$JobFinalResultCopyWith(
          _JobFinalResult value, $Res Function(_JobFinalResult) then) =
      __$JobFinalResultCopyWithImpl<$Res>;
  @override
  $Res call({KtList<JobModel> jobModel, NumberOfPages numberOfPages});
}

class __$JobFinalResultCopyWithImpl<$Res>
    extends _$JobFinalResultCopyWithImpl<$Res>
    implements _$JobFinalResultCopyWith<$Res> {
  __$JobFinalResultCopyWithImpl(
      _JobFinalResult _value, $Res Function(_JobFinalResult) _then)
      : super(_value, (v) => _then(v as _JobFinalResult));

  @override
  _JobFinalResult get _value => super._value as _JobFinalResult;

  @override
  $Res call({
    Object jobModel = freezed,
    Object numberOfPages = freezed,
  }) {
    return _then(_JobFinalResult(
      jobModel:
          jobModel == freezed ? _value.jobModel : jobModel as KtList<JobModel>,
      numberOfPages: numberOfPages == freezed
          ? _value.numberOfPages
          : numberOfPages as NumberOfPages,
    ));
  }
}

class _$_JobFinalResult implements _JobFinalResult {
  const _$_JobFinalResult(
      {@required this.jobModel, @required this.numberOfPages})
      : assert(jobModel != null),
        assert(numberOfPages != null);

  @override
  final KtList<JobModel> jobModel;
  @override
  final NumberOfPages numberOfPages;

  @override
  String toString() {
    return 'JobFinalResult(jobModel: $jobModel, numberOfPages: $numberOfPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobFinalResult &&
            (identical(other.jobModel, jobModel) ||
                const DeepCollectionEquality()
                    .equals(other.jobModel, jobModel)) &&
            (identical(other.numberOfPages, numberOfPages) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfPages, numberOfPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jobModel) ^
      const DeepCollectionEquality().hash(numberOfPages);

  @override
  _$JobFinalResultCopyWith<_JobFinalResult> get copyWith =>
      __$JobFinalResultCopyWithImpl<_JobFinalResult>(this, _$identity);
}

abstract class _JobFinalResult implements JobFinalResult {
  const factory _JobFinalResult(
      {@required KtList<JobModel> jobModel,
      @required NumberOfPages numberOfPages}) = _$_JobFinalResult;

  @override
  KtList<JobModel> get jobModel;
  @override
  NumberOfPages get numberOfPages;
  @override
  _$JobFinalResultCopyWith<_JobFinalResult> get copyWith;
}
