// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JobResultModelTearOff {
  const _$JobResultModelTearOff();

  _JobResultModel call(
      {@required int totalCount, @required KtList<JobModel> jobModel}) {
    return _JobResultModel(
      totalCount: totalCount,
      jobModel: jobModel,
    );
  }
}

// ignore: unused_element
const $JobResultModel = _$JobResultModelTearOff();

mixin _$JobResultModel {
  int get totalCount;
  KtList<JobModel> get jobModel;

  $JobResultModelCopyWith<JobResultModel> get copyWith;
}

abstract class $JobResultModelCopyWith<$Res> {
  factory $JobResultModelCopyWith(
          JobResultModel value, $Res Function(JobResultModel) then) =
      _$JobResultModelCopyWithImpl<$Res>;
  $Res call({int totalCount, KtList<JobModel> jobModel});
}

class _$JobResultModelCopyWithImpl<$Res>
    implements $JobResultModelCopyWith<$Res> {
  _$JobResultModelCopyWithImpl(this._value, this._then);

  final JobResultModel _value;
  // ignore: unused_field
  final $Res Function(JobResultModel) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object jobModel = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      jobModel:
          jobModel == freezed ? _value.jobModel : jobModel as KtList<JobModel>,
    ));
  }
}

abstract class _$JobResultModelCopyWith<$Res>
    implements $JobResultModelCopyWith<$Res> {
  factory _$JobResultModelCopyWith(
          _JobResultModel value, $Res Function(_JobResultModel) then) =
      __$JobResultModelCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, KtList<JobModel> jobModel});
}

class __$JobResultModelCopyWithImpl<$Res>
    extends _$JobResultModelCopyWithImpl<$Res>
    implements _$JobResultModelCopyWith<$Res> {
  __$JobResultModelCopyWithImpl(
      _JobResultModel _value, $Res Function(_JobResultModel) _then)
      : super(_value, (v) => _then(v as _JobResultModel));

  @override
  _JobResultModel get _value => super._value as _JobResultModel;

  @override
  $Res call({
    Object totalCount = freezed,
    Object jobModel = freezed,
  }) {
    return _then(_JobResultModel(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      jobModel:
          jobModel == freezed ? _value.jobModel : jobModel as KtList<JobModel>,
    ));
  }
}

class _$_JobResultModel extends _JobResultModel {
  const _$_JobResultModel({@required this.totalCount, @required this.jobModel})
      : assert(totalCount != null),
        assert(jobModel != null),
        super._();

  @override
  final int totalCount;
  @override
  final KtList<JobModel> jobModel;

  @override
  String toString() {
    return 'JobResultModel(totalCount: $totalCount, jobModel: $jobModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobResultModel &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.jobModel, jobModel) ||
                const DeepCollectionEquality()
                    .equals(other.jobModel, jobModel)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(jobModel);

  @override
  _$JobResultModelCopyWith<_JobResultModel> get copyWith =>
      __$JobResultModelCopyWithImpl<_JobResultModel>(this, _$identity);
}

abstract class _JobResultModel extends JobResultModel {
  const _JobResultModel._() : super._();
  const factory _JobResultModel(
      {@required int totalCount,
      @required KtList<JobModel> jobModel}) = _$_JobResultModel;

  @override
  int get totalCount;
  @override
  KtList<JobModel> get jobModel;
  @override
  _$JobResultModelCopyWith<_JobResultModel> get copyWith;
}
