// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'job_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$JobModelTearOff {
  const _$JobModelTearOff();

  _JobModel call(
      {@required String title,
      @required String location,
      @required String snippet,
      @required Salary salary,
      @required String source,
      @required JobType type,
      @required String link,
      @required String company,
      @required UpdatedDate updated,
      @required int id}) {
    return _JobModel(
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
const $JobModel = _$JobModelTearOff();

mixin _$JobModel {
  String get title;
  String get location;
  String get snippet;
  Salary get salary;
  String get source;
  JobType get type;
  String get link;
  String get company;
  UpdatedDate get updated;
  int get id;

  $JobModelCopyWith<JobModel> get copyWith;
}

abstract class $JobModelCopyWith<$Res> {
  factory $JobModelCopyWith(JobModel value, $Res Function(JobModel) then) =
      _$JobModelCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String location,
      String snippet,
      Salary salary,
      String source,
      JobType type,
      String link,
      String company,
      UpdatedDate updated,
      int id});
}

class _$JobModelCopyWithImpl<$Res> implements $JobModelCopyWith<$Res> {
  _$JobModelCopyWithImpl(this._value, this._then);

  final JobModel _value;
  // ignore: unused_field
  final $Res Function(JobModel) _then;

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
      salary: salary == freezed ? _value.salary : salary as Salary,
      source: source == freezed ? _value.source : source as String,
      type: type == freezed ? _value.type : type as JobType,
      link: link == freezed ? _value.link : link as String,
      company: company == freezed ? _value.company : company as String,
      updated: updated == freezed ? _value.updated : updated as UpdatedDate,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class _$JobModelCopyWith<$Res> implements $JobModelCopyWith<$Res> {
  factory _$JobModelCopyWith(_JobModel value, $Res Function(_JobModel) then) =
      __$JobModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String location,
      String snippet,
      Salary salary,
      String source,
      JobType type,
      String link,
      String company,
      UpdatedDate updated,
      int id});
}

class __$JobModelCopyWithImpl<$Res> extends _$JobModelCopyWithImpl<$Res>
    implements _$JobModelCopyWith<$Res> {
  __$JobModelCopyWithImpl(_JobModel _value, $Res Function(_JobModel) _then)
      : super(_value, (v) => _then(v as _JobModel));

  @override
  _JobModel get _value => super._value as _JobModel;

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
    return _then(_JobModel(
      title: title == freezed ? _value.title : title as String,
      location: location == freezed ? _value.location : location as String,
      snippet: snippet == freezed ? _value.snippet : snippet as String,
      salary: salary == freezed ? _value.salary : salary as Salary,
      source: source == freezed ? _value.source : source as String,
      type: type == freezed ? _value.type : type as JobType,
      link: link == freezed ? _value.link : link as String,
      company: company == freezed ? _value.company : company as String,
      updated: updated == freezed ? _value.updated : updated as UpdatedDate,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

class _$_JobModel implements _JobModel {
  const _$_JobModel(
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
        assert(id != null);

  @override
  final String title;
  @override
  final String location;
  @override
  final String snippet;
  @override
  final Salary salary;
  @override
  final String source;
  @override
  final JobType type;
  @override
  final String link;
  @override
  final String company;
  @override
  final UpdatedDate updated;
  @override
  final int id;

  @override
  String toString() {
    return 'JobModel(title: $title, location: $location, snippet: $snippet, salary: $salary, source: $source, type: $type, link: $link, company: $company, updated: $updated, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JobModel &&
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
  _$JobModelCopyWith<_JobModel> get copyWith =>
      __$JobModelCopyWithImpl<_JobModel>(this, _$identity);
}

abstract class _JobModel implements JobModel {
  const factory _JobModel(
      {@required String title,
      @required String location,
      @required String snippet,
      @required Salary salary,
      @required String source,
      @required JobType type,
      @required String link,
      @required String company,
      @required UpdatedDate updated,
      @required int id}) = _$_JobModel;

  @override
  String get title;
  @override
  String get location;
  @override
  String get snippet;
  @override
  Salary get salary;
  @override
  String get source;
  @override
  JobType get type;
  @override
  String get link;
  @override
  String get company;
  @override
  UpdatedDate get updated;
  @override
  int get id;
  @override
  _$JobModelCopyWith<_JobModel> get copyWith;
}
