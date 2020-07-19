// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
JobResultDTO _$JobResultDTOFromJson(Map<String, dynamic> json) {
  return _JobResultDTO.fromJson(json);
}

class _$JobResultDTOTearOff {
  const _$JobResultDTOTearOff();

  _JobResultDTO call({@required int totalCount, @required List<JobDTO> jobs}) {
    return _JobResultDTO(
      totalCount: totalCount,
      jobs: jobs,
    );
  }
}

// ignore: unused_element
const $JobResultDTO = _$JobResultDTOTearOff();

mixin _$JobResultDTO {
  int get totalCount;
  List<JobDTO> get jobs;

  Map<String, dynamic> toJson();
  $JobResultDTOCopyWith<JobResultDTO> get copyWith;
}

abstract class $JobResultDTOCopyWith<$Res> {
  factory $JobResultDTOCopyWith(
          JobResultDTO value, $Res Function(JobResultDTO) then) =
      _$JobResultDTOCopyWithImpl<$Res>;
  $Res call({int totalCount, List<JobDTO> jobs});
}

class _$JobResultDTOCopyWithImpl<$Res> implements $JobResultDTOCopyWith<$Res> {
  _$JobResultDTOCopyWithImpl(this._value, this._then);

  final JobResultDTO _value;
  // ignore: unused_field
  final $Res Function(JobResultDTO) _then;

  @override
  $Res call({
    Object totalCount = freezed,
    Object jobs = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      jobs: jobs == freezed ? _value.jobs : jobs as List<JobDTO>,
    ));
  }
}

abstract class _$JobResultDTOCopyWith<$Res>
    implements $JobResultDTOCopyWith<$Res> {
  factory _$JobResultDTOCopyWith(
          _JobResultDTO value, $Res Function(_JobResultDTO) then) =
      __$JobResultDTOCopyWithImpl<$Res>;
  @override
  $Res call({int totalCount, List<JobDTO> jobs});
}

class __$JobResultDTOCopyWithImpl<$Res> extends _$JobResultDTOCopyWithImpl<$Res>
    implements _$JobResultDTOCopyWith<$Res> {
  __$JobResultDTOCopyWithImpl(
      _JobResultDTO _value, $Res Function(_JobResultDTO) _then)
      : super(_value, (v) => _then(v as _JobResultDTO));

  @override
  _JobResultDTO get _value => super._value as _JobResultDTO;

  @override
  $Res call({
    Object totalCount = freezed,
    Object jobs = freezed,
  }) {
    return _then(_JobResultDTO(
      totalCount: totalCount == freezed ? _value.totalCount : totalCount as int,
      jobs: jobs == freezed ? _value.jobs : jobs as List<JobDTO>,
    ));
  }
}

@JsonSerializable()
class _$_JobResultDTO extends _JobResultDTO {
  const _$_JobResultDTO({@required this.totalCount, @required this.jobs})
      : assert(totalCount != null),
        assert(jobs != null),
        super._();

  factory _$_JobResultDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_JobResultDTOFromJson(json);

  @override
  final int totalCount;
  @override
  final List<JobDTO> jobs;

  @override
  String toString() {
    return 'JobResultDTO(totalCount: $totalCount, jobs: $jobs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobResultDTO &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality()
                    .equals(other.totalCount, totalCount)) &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(jobs);

  @override
  _$JobResultDTOCopyWith<_JobResultDTO> get copyWith =>
      __$JobResultDTOCopyWithImpl<_JobResultDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobResultDTOToJson(this);
  }
}

abstract class _JobResultDTO extends JobResultDTO {
  const _JobResultDTO._() : super._();
  const factory _JobResultDTO(
      {@required int totalCount,
      @required List<JobDTO> jobs}) = _$_JobResultDTO;

  factory _JobResultDTO.fromJson(Map<String, dynamic> json) =
      _$_JobResultDTO.fromJson;

  @override
  int get totalCount;
  @override
  List<JobDTO> get jobs;
  @override
  _$JobResultDTOCopyWith<_JobResultDTO> get copyWith;
}

JobDTO _$JobDTOFromJson(Map<String, dynamic> json) {
  return _JobDTO.fromJson(json);
}

class _$JobDTOTearOff {
  const _$JobDTOTearOff();

  _JobDTO call(
      {@required String title,
      @required String location,
      @required String snippet,
      @required String salary,
      @required String source,
      @required String type,
      @required String link,
      @required String company,
      @required String updated,
      @required int id}) {
    return _JobDTO(
      title: title,
      location: location,
      snippet: snippet,
      salary: salary,
      source: source,
      type: type,
      link: link,
      company: company,
      updated: updated,
      id: id,
    );
  }
}

// ignore: unused_element
const $JobDTO = _$JobDTOTearOff();

mixin _$JobDTO {
  String get title;
  String get location;
  String get snippet;
  String get salary;
  String get source;
  String get type;
  String get link;
  String get company;
  String get updated;
  int get id;

  Map<String, dynamic> toJson();
  $JobDTOCopyWith<JobDTO> get copyWith;
}

abstract class $JobDTOCopyWith<$Res> {
  factory $JobDTOCopyWith(JobDTO value, $Res Function(JobDTO) then) =
      _$JobDTOCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String location,
      String snippet,
      String salary,
      String source,
      String type,
      String link,
      String company,
      String updated,
      int id});
}

class _$JobDTOCopyWithImpl<$Res> implements $JobDTOCopyWith<$Res> {
  _$JobDTOCopyWithImpl(this._value, this._then);

  final JobDTO _value;
  // ignore: unused_field
  final $Res Function(JobDTO) _then;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object snippet = freezed,
    Object salary = freezed,
    Object source = freezed,
    Object type = freezed,
    Object link = freezed,
    Object company = freezed,
    Object updated = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      snippet: snippet == freezed ? _value.snippet : snippet as String,
      salary: salary == freezed ? _value.salary : salary as String,
      source: source == freezed ? _value.source : source as String,
      type: type == freezed ? _value.type : type as String,
      link: link == freezed ? _value.link : link as String,
      company: company == freezed ? _value.company : company as String,
      updated: updated == freezed ? _value.updated : updated as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class _$JobDTOCopyWith<$Res> implements $JobDTOCopyWith<$Res> {
  factory _$JobDTOCopyWith(_JobDTO value, $Res Function(_JobDTO) then) =
      __$JobDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String location,
      String snippet,
      String salary,
      String source,
      String type,
      String link,
      String company,
      String updated,
      int id});
}

class __$JobDTOCopyWithImpl<$Res> extends _$JobDTOCopyWithImpl<$Res>
    implements _$JobDTOCopyWith<$Res> {
  __$JobDTOCopyWithImpl(_JobDTO _value, $Res Function(_JobDTO) _then)
      : super(_value, (v) => _then(v as _JobDTO));

  @override
  _JobDTO get _value => super._value as _JobDTO;

  @override
  $Res call({
    Object title = freezed,
    Object location = freezed,
    Object snippet = freezed,
    Object salary = freezed,
    Object source = freezed,
    Object type = freezed,
    Object link = freezed,
    Object company = freezed,
    Object updated = freezed,
    Object id = freezed,
  }) {
    return _then(_JobDTO(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      snippet: snippet == freezed ? _value.snippet : snippet as String,
      salary: salary == freezed ? _value.salary : salary as String,
      source: source == freezed ? _value.source : source as String,
      type: type == freezed ? _value.type : type as String,
      link: link == freezed ? _value.link : link as String,
      company: company == freezed ? _value.company : company as String,
      updated: updated == freezed ? _value.updated : updated as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

@JsonSerializable()
class _$_JobDTO extends _JobDTO {
  const _$_JobDTO(
      {@required this.title,
      @required this.location,
      @required this.snippet,
      @required this.salary,
      @required this.source,
      @required this.type,
      @required this.link,
      @required this.company,
      @required this.updated,
      @required this.id})
      : assert(title != null),
        assert(location != null),
        assert(snippet != null),
        assert(salary != null),
        assert(source != null),
        assert(type != null),
        assert(link != null),
        assert(company != null),
        assert(updated != null),
        assert(id != null),
        super._();

  factory _$_JobDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_JobDTOFromJson(json);

  @override
  final String title;
  @override
  final String location;
  @override
  final String snippet;
  @override
  final String salary;
  @override
  final String source;
  @override
  final String type;
  @override
  final String link;
  @override
  final String company;
  @override
  final String updated;
  @override
  final int id;

  @override
  String toString() {
    return 'JobDTO(title: $title, location: $location, snippet: $snippet, salary: $salary, source: $source, type: $type, link: $link, company: $company, updated: $updated, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobDTO &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.snippet, snippet) ||
                const DeepCollectionEquality()
                    .equals(other.snippet, snippet)) &&
            (identical(other.salary, salary) ||
                const DeepCollectionEquality().equals(other.salary, salary)) &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)) &&
            (identical(other.company, company) ||
                const DeepCollectionEquality()
                    .equals(other.company, company)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality()
                    .equals(other.updated, updated)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(snippet) ^
      const DeepCollectionEquality().hash(salary) ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(link) ^
      const DeepCollectionEquality().hash(company) ^
      const DeepCollectionEquality().hash(updated) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$JobDTOCopyWith<_JobDTO> get copyWith =>
      __$JobDTOCopyWithImpl<_JobDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_JobDTOToJson(this);
  }
}

abstract class _JobDTO extends JobDTO {
  const _JobDTO._() : super._();
  const factory _JobDTO(
      {@required String title,
      @required String location,
      @required String snippet,
      @required String salary,
      @required String source,
      @required String type,
      @required String link,
      @required String company,
      @required String updated,
      @required int id}) = _$_JobDTO;

  factory _JobDTO.fromJson(Map<String, dynamic> json) = _$_JobDTO.fromJson;

  @override
  String get title;
  @override
  String get location;
  @override
  String get snippet;
  @override
  String get salary;
  @override
  String get source;
  @override
  String get type;
  @override
  String get link;
  @override
  String get company;
  @override
  String get updated;
  @override
  int get id;
  @override
  _$JobDTOCopyWith<_JobDTO> get copyWith;
}
