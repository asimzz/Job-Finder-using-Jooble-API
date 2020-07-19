// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_search_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
JobSearchDTO _$JobSearchDTOFromJson(Map<String, dynamic> json) {
  return _JobSearchDTO.fromJson(json);
}

class _$JobSearchDTOTearOff {
  const _$JobSearchDTOTearOff();

  _JobSearchDTO call(
      {@required String keyword,
      @required String salary,
      @required String location}) {
    return _JobSearchDTO(
      keyword: keyword,
      salary: salary,
      location: location,
    );
  }
}

// ignore: unused_element
const $JobSearchDTO = _$JobSearchDTOTearOff();

mixin _$JobSearchDTO {
  String get keyword;
  String get salary;
  String get location;

  Map<String, dynamic> toJson();
  $JobSearchDTOCopyWith<JobSearchDTO> get copyWith;
}

abstract class $JobSearchDTOCopyWith<$Res> {
  factory $JobSearchDTOCopyWith(
          JobSearchDTO value, $Res Function(JobSearchDTO) then) =
      _$JobSearchDTOCopyWithImpl<$Res>;
  $Res call({String keyword, String salary, String location});
}

class _$JobSearchDTOCopyWithImpl<$Res> implements $JobSearchDTOCopyWith<$Res> {
  _$JobSearchDTOCopyWithImpl(this._value, this._then);

  final JobSearchDTO _value;
  // ignore: unused_field
  final $Res Function(JobSearchDTO) _then;

  @override
  $Res call({
    Object keyword = freezed,
    Object salary = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed ? _value.keyword : keyword as String,
      salary: salary == freezed ? _value.salary : salary as String,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

abstract class _$JobSearchDTOCopyWith<$Res>
    implements $JobSearchDTOCopyWith<$Res> {
  factory _$JobSearchDTOCopyWith(
          _JobSearchDTO value, $Res Function(_JobSearchDTO) then) =
      __$JobSearchDTOCopyWithImpl<$Res>;
  @override
  $Res call({String keyword, String salary, String location});
}

class __$JobSearchDTOCopyWithImpl<$Res> extends _$JobSearchDTOCopyWithImpl<$Res>
    implements _$JobSearchDTOCopyWith<$Res> {
  __$JobSearchDTOCopyWithImpl(
      _JobSearchDTO _value, $Res Function(_JobSearchDTO) _then)
      : super(_value, (v) => _then(v as _JobSearchDTO));

  @override
  _JobSearchDTO get _value => super._value as _JobSearchDTO;

  @override
  $Res call({
    Object keyword = freezed,
    Object salary = freezed,
    Object location = freezed,
  }) {
    return _then(_JobSearchDTO(
      keyword: keyword == freezed ? _value.keyword : keyword as String,
      salary: salary == freezed ? _value.salary : salary as String,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

@JsonSerializable()
class _$_JobSearchDTO implements _JobSearchDTO {
  const _$_JobSearchDTO(
      {@required this.keyword, @required this.salary, @required this.location})
      : assert(keyword != null),
        assert(salary != null),
        assert(location != null);

  factory _$_JobSearchDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_JobSearchDTOFromJson(json);

  @override
  final String keyword;
  @override
  final String salary;
  @override
  final String location;

  @override
  String toString() {
    return 'JobSearchDTO(keyword: $keyword, salary: $salary, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobSearchDTO &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality()
                    .equals(other.keyword, keyword)) &&
            (identical(other.salary, salary) ||
                const DeepCollectionEquality().equals(other.salary, salary)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(salary) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$JobSearchDTOCopyWith<_JobSearchDTO> get copyWith =>
      __$JobSearchDTOCopyWithImpl<_JobSearchDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobSearchDTOToJson(this);
  }
}

abstract class _JobSearchDTO implements JobSearchDTO {
  const factory _JobSearchDTO(
      {@required String keyword,
      @required String salary,
      @required String location}) = _$_JobSearchDTO;

  factory _JobSearchDTO.fromJson(Map<String, dynamic> json) =
      _$_JobSearchDTO.fromJson;

  @override
  String get keyword;
  @override
  String get salary;
  @override
  String get location;
  @override
  _$JobSearchDTOCopyWith<_JobSearchDTO> get copyWith;
}
