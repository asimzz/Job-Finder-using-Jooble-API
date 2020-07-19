// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JobSearchModelTearOff {
  const _$JobSearchModelTearOff();

  _JobSearchModel call(
      {@required Keyword keyword,
      @required SalaryInput salaryInput,
      @required JobLocation jobLocation}) {
    return _JobSearchModel(
      keyword: keyword,
      salaryInput: salaryInput,
      jobLocation: jobLocation,
    );
  }
}

// ignore: unused_element
const $JobSearchModel = _$JobSearchModelTearOff();

mixin _$JobSearchModel {
  Keyword get keyword;
  SalaryInput get salaryInput;
  JobLocation get jobLocation;

  $JobSearchModelCopyWith<JobSearchModel> get copyWith;
}

abstract class $JobSearchModelCopyWith<$Res> {
  factory $JobSearchModelCopyWith(
          JobSearchModel value, $Res Function(JobSearchModel) then) =
      _$JobSearchModelCopyWithImpl<$Res>;
  $Res call(
      {Keyword keyword, SalaryInput salaryInput, JobLocation jobLocation});
}

class _$JobSearchModelCopyWithImpl<$Res>
    implements $JobSearchModelCopyWith<$Res> {
  _$JobSearchModelCopyWithImpl(this._value, this._then);

  final JobSearchModel _value;
  // ignore: unused_field
  final $Res Function(JobSearchModel) _then;

  @override
  $Res call({
    Object keyword = freezed,
    Object salaryInput = freezed,
    Object jobLocation = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      salaryInput: salaryInput == freezed
          ? _value.salaryInput
          : salaryInput as SalaryInput,
      jobLocation: jobLocation == freezed
          ? _value.jobLocation
          : jobLocation as JobLocation,
    ));
  }
}

abstract class _$JobSearchModelCopyWith<$Res>
    implements $JobSearchModelCopyWith<$Res> {
  factory _$JobSearchModelCopyWith(
          _JobSearchModel value, $Res Function(_JobSearchModel) then) =
      __$JobSearchModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Keyword keyword, SalaryInput salaryInput, JobLocation jobLocation});
}

class __$JobSearchModelCopyWithImpl<$Res>
    extends _$JobSearchModelCopyWithImpl<$Res>
    implements _$JobSearchModelCopyWith<$Res> {
  __$JobSearchModelCopyWithImpl(
      _JobSearchModel _value, $Res Function(_JobSearchModel) _then)
      : super(_value, (v) => _then(v as _JobSearchModel));

  @override
  _JobSearchModel get _value => super._value as _JobSearchModel;

  @override
  $Res call({
    Object keyword = freezed,
    Object salaryInput = freezed,
    Object jobLocation = freezed,
  }) {
    return _then(_JobSearchModel(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      salaryInput: salaryInput == freezed
          ? _value.salaryInput
          : salaryInput as SalaryInput,
      jobLocation: jobLocation == freezed
          ? _value.jobLocation
          : jobLocation as JobLocation,
    ));
  }
}

class _$_JobSearchModel implements _JobSearchModel {
  const _$_JobSearchModel(
      {@required this.keyword,
      @required this.salaryInput,
      @required this.jobLocation})
      : assert(keyword != null),
        assert(salaryInput != null),
        assert(jobLocation != null);

  @override
  final Keyword keyword;
  @override
  final SalaryInput salaryInput;
  @override
  final JobLocation jobLocation;

  @override
  String toString() {
    return 'JobSearchModel(keyword: $keyword, salaryInput: $salaryInput, jobLocation: $jobLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobSearchModel &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality()
                    .equals(other.keyword, keyword)) &&
            (identical(other.salaryInput, salaryInput) ||
                const DeepCollectionEquality()
                    .equals(other.salaryInput, salaryInput)) &&
            (identical(other.jobLocation, jobLocation) ||
                const DeepCollectionEquality()
                    .equals(other.jobLocation, jobLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(salaryInput) ^
      const DeepCollectionEquality().hash(jobLocation);

  @override
  _$JobSearchModelCopyWith<_JobSearchModel> get copyWith =>
      __$JobSearchModelCopyWithImpl<_JobSearchModel>(this, _$identity);
}

abstract class _JobSearchModel implements JobSearchModel {
  const factory _JobSearchModel(
      {@required Keyword keyword,
      @required SalaryInput salaryInput,
      @required JobLocation jobLocation}) = _$_JobSearchModel;

  @override
  Keyword get keyword;
  @override
  SalaryInput get salaryInput;
  @override
  JobLocation get jobLocation;
  @override
  _$JobSearchModelCopyWith<_JobSearchModel> get copyWith;
}
