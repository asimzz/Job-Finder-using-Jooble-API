// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'advanced_job_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AdvancedJobSearchEventTearOff {
  const _$AdvancedJobSearchEventTearOff();

  _KeywordChanged keywordChanged(String keywordStr) {
    return _KeywordChanged(
      keywordStr,
    );
  }

  _SalaryChanged salaryChanged(String salaryStr) {
    return _SalaryChanged(
      salaryStr,
    );
  }

  _LocatuionChanged locationChanged(String locationStr) {
    return _LocatuionChanged(
      locationStr,
    );
  }

  _AdvancedJobSearch advancedJobSearch() {
    return const _AdvancedJobSearch();
  }

  _AdvancedJobSearchWithPageNumber advancedJobSearchWithPageNumber(
      int pageNumber) {
    return _AdvancedJobSearchWithPageNumber(
      pageNumber,
    );
  }
}

// ignore: unused_element
const $AdvancedJobSearchEvent = _$AdvancedJobSearchEventTearOff();

mixin _$AdvancedJobSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  });
}

abstract class $AdvancedJobSearchEventCopyWith<$Res> {
  factory $AdvancedJobSearchEventCopyWith(AdvancedJobSearchEvent value,
          $Res Function(AdvancedJobSearchEvent) then) =
      _$AdvancedJobSearchEventCopyWithImpl<$Res>;
}

class _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements $AdvancedJobSearchEventCopyWith<$Res> {
  _$AdvancedJobSearchEventCopyWithImpl(this._value, this._then);

  final AdvancedJobSearchEvent _value;
  // ignore: unused_field
  final $Res Function(AdvancedJobSearchEvent) _then;
}

abstract class _$KeywordChangedCopyWith<$Res> {
  factory _$KeywordChangedCopyWith(
          _KeywordChanged value, $Res Function(_KeywordChanged) then) =
      __$KeywordChangedCopyWithImpl<$Res>;
  $Res call({String keywordStr});
}

class __$KeywordChangedCopyWithImpl<$Res>
    extends _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements _$KeywordChangedCopyWith<$Res> {
  __$KeywordChangedCopyWithImpl(
      _KeywordChanged _value, $Res Function(_KeywordChanged) _then)
      : super(_value, (v) => _then(v as _KeywordChanged));

  @override
  _KeywordChanged get _value => super._value as _KeywordChanged;

  @override
  $Res call({
    Object keywordStr = freezed,
  }) {
    return _then(_KeywordChanged(
      keywordStr == freezed ? _value.keywordStr : keywordStr as String,
    ));
  }
}

class _$_KeywordChanged implements _KeywordChanged {
  const _$_KeywordChanged(this.keywordStr) : assert(keywordStr != null);

  @override
  final String keywordStr;

  @override
  String toString() {
    return 'AdvancedJobSearchEvent.keywordChanged(keywordStr: $keywordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _KeywordChanged &&
            (identical(other.keywordStr, keywordStr) ||
                const DeepCollectionEquality()
                    .equals(other.keywordStr, keywordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keywordStr);

  @override
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith =>
      __$KeywordChangedCopyWithImpl<_KeywordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return keywordChanged(keywordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordChanged != null) {
      return keywordChanged(keywordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return keywordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (keywordChanged != null) {
      return keywordChanged(this);
    }
    return orElse();
  }
}

abstract class _KeywordChanged implements AdvancedJobSearchEvent {
  const factory _KeywordChanged(String keywordStr) = _$_KeywordChanged;

  String get keywordStr;
  _$KeywordChangedCopyWith<_KeywordChanged> get copyWith;
}

abstract class _$SalaryChangedCopyWith<$Res> {
  factory _$SalaryChangedCopyWith(
          _SalaryChanged value, $Res Function(_SalaryChanged) then) =
      __$SalaryChangedCopyWithImpl<$Res>;
  $Res call({String salaryStr});
}

class __$SalaryChangedCopyWithImpl<$Res>
    extends _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements _$SalaryChangedCopyWith<$Res> {
  __$SalaryChangedCopyWithImpl(
      _SalaryChanged _value, $Res Function(_SalaryChanged) _then)
      : super(_value, (v) => _then(v as _SalaryChanged));

  @override
  _SalaryChanged get _value => super._value as _SalaryChanged;

  @override
  $Res call({
    Object salaryStr = freezed,
  }) {
    return _then(_SalaryChanged(
      salaryStr == freezed ? _value.salaryStr : salaryStr as String,
    ));
  }
}

class _$_SalaryChanged implements _SalaryChanged {
  const _$_SalaryChanged(this.salaryStr) : assert(salaryStr != null);

  @override
  final String salaryStr;

  @override
  String toString() {
    return 'AdvancedJobSearchEvent.salaryChanged(salaryStr: $salaryStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SalaryChanged &&
            (identical(other.salaryStr, salaryStr) ||
                const DeepCollectionEquality()
                    .equals(other.salaryStr, salaryStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(salaryStr);

  @override
  _$SalaryChangedCopyWith<_SalaryChanged> get copyWith =>
      __$SalaryChangedCopyWithImpl<_SalaryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return salaryChanged(salaryStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (salaryChanged != null) {
      return salaryChanged(salaryStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return salaryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (salaryChanged != null) {
      return salaryChanged(this);
    }
    return orElse();
  }
}

abstract class _SalaryChanged implements AdvancedJobSearchEvent {
  const factory _SalaryChanged(String salaryStr) = _$_SalaryChanged;

  String get salaryStr;
  _$SalaryChangedCopyWith<_SalaryChanged> get copyWith;
}

abstract class _$LocatuionChangedCopyWith<$Res> {
  factory _$LocatuionChangedCopyWith(
          _LocatuionChanged value, $Res Function(_LocatuionChanged) then) =
      __$LocatuionChangedCopyWithImpl<$Res>;
  $Res call({String locationStr});
}

class __$LocatuionChangedCopyWithImpl<$Res>
    extends _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements _$LocatuionChangedCopyWith<$Res> {
  __$LocatuionChangedCopyWithImpl(
      _LocatuionChanged _value, $Res Function(_LocatuionChanged) _then)
      : super(_value, (v) => _then(v as _LocatuionChanged));

  @override
  _LocatuionChanged get _value => super._value as _LocatuionChanged;

  @override
  $Res call({
    Object locationStr = freezed,
  }) {
    return _then(_LocatuionChanged(
      locationStr == freezed ? _value.locationStr : locationStr as String,
    ));
  }
}

class _$_LocatuionChanged implements _LocatuionChanged {
  const _$_LocatuionChanged(this.locationStr) : assert(locationStr != null);

  @override
  final String locationStr;

  @override
  String toString() {
    return 'AdvancedJobSearchEvent.locationChanged(locationStr: $locationStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocatuionChanged &&
            (identical(other.locationStr, locationStr) ||
                const DeepCollectionEquality()
                    .equals(other.locationStr, locationStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locationStr);

  @override
  _$LocatuionChangedCopyWith<_LocatuionChanged> get copyWith =>
      __$LocatuionChangedCopyWithImpl<_LocatuionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return locationChanged(locationStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(locationStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocatuionChanged implements AdvancedJobSearchEvent {
  const factory _LocatuionChanged(String locationStr) = _$_LocatuionChanged;

  String get locationStr;
  _$LocatuionChangedCopyWith<_LocatuionChanged> get copyWith;
}

abstract class _$AdvancedJobSearchCopyWith<$Res> {
  factory _$AdvancedJobSearchCopyWith(
          _AdvancedJobSearch value, $Res Function(_AdvancedJobSearch) then) =
      __$AdvancedJobSearchCopyWithImpl<$Res>;
}

class __$AdvancedJobSearchCopyWithImpl<$Res>
    extends _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements _$AdvancedJobSearchCopyWith<$Res> {
  __$AdvancedJobSearchCopyWithImpl(
      _AdvancedJobSearch _value, $Res Function(_AdvancedJobSearch) _then)
      : super(_value, (v) => _then(v as _AdvancedJobSearch));

  @override
  _AdvancedJobSearch get _value => super._value as _AdvancedJobSearch;
}

class _$_AdvancedJobSearch implements _AdvancedJobSearch {
  const _$_AdvancedJobSearch();

  @override
  String toString() {
    return 'AdvancedJobSearchEvent.advancedJobSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AdvancedJobSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return advancedJobSearch();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advancedJobSearch != null) {
      return advancedJobSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return advancedJobSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advancedJobSearch != null) {
      return advancedJobSearch(this);
    }
    return orElse();
  }
}

abstract class _AdvancedJobSearch implements AdvancedJobSearchEvent {
  const factory _AdvancedJobSearch() = _$_AdvancedJobSearch;
}

abstract class _$AdvancedJobSearchWithPageNumberCopyWith<$Res> {
  factory _$AdvancedJobSearchWithPageNumberCopyWith(
          _AdvancedJobSearchWithPageNumber value,
          $Res Function(_AdvancedJobSearchWithPageNumber) then) =
      __$AdvancedJobSearchWithPageNumberCopyWithImpl<$Res>;
  $Res call({int pageNumber});
}

class __$AdvancedJobSearchWithPageNumberCopyWithImpl<$Res>
    extends _$AdvancedJobSearchEventCopyWithImpl<$Res>
    implements _$AdvancedJobSearchWithPageNumberCopyWith<$Res> {
  __$AdvancedJobSearchWithPageNumberCopyWithImpl(
      _AdvancedJobSearchWithPageNumber _value,
      $Res Function(_AdvancedJobSearchWithPageNumber) _then)
      : super(_value, (v) => _then(v as _AdvancedJobSearchWithPageNumber));

  @override
  _AdvancedJobSearchWithPageNumber get _value =>
      super._value as _AdvancedJobSearchWithPageNumber;

  @override
  $Res call({
    Object pageNumber = freezed,
  }) {
    return _then(_AdvancedJobSearchWithPageNumber(
      pageNumber == freezed ? _value.pageNumber : pageNumber as int,
    ));
  }
}

class _$_AdvancedJobSearchWithPageNumber
    implements _AdvancedJobSearchWithPageNumber {
  const _$_AdvancedJobSearchWithPageNumber(this.pageNumber)
      : assert(pageNumber != null);

  @override
  final int pageNumber;

  @override
  String toString() {
    return 'AdvancedJobSearchEvent.advancedJobSearchWithPageNumber(pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdvancedJobSearchWithPageNumber &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pageNumber);

  @override
  _$AdvancedJobSearchWithPageNumberCopyWith<_AdvancedJobSearchWithPageNumber>
      get copyWith => __$AdvancedJobSearchWithPageNumberCopyWithImpl<
          _AdvancedJobSearchWithPageNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result keywordChanged(String keywordStr),
    @required Result salaryChanged(String salaryStr),
    @required Result locationChanged(String locationStr),
    @required Result advancedJobSearch(),
    @required Result advancedJobSearchWithPageNumber(int pageNumber),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return advancedJobSearchWithPageNumber(pageNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result keywordChanged(String keywordStr),
    Result salaryChanged(String salaryStr),
    Result locationChanged(String locationStr),
    Result advancedJobSearch(),
    Result advancedJobSearchWithPageNumber(int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advancedJobSearchWithPageNumber != null) {
      return advancedJobSearchWithPageNumber(pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result keywordChanged(_KeywordChanged value),
    @required Result salaryChanged(_SalaryChanged value),
    @required Result locationChanged(_LocatuionChanged value),
    @required Result advancedJobSearch(_AdvancedJobSearch value),
    @required
        Result advancedJobSearchWithPageNumber(
            _AdvancedJobSearchWithPageNumber value),
  }) {
    assert(keywordChanged != null);
    assert(salaryChanged != null);
    assert(locationChanged != null);
    assert(advancedJobSearch != null);
    assert(advancedJobSearchWithPageNumber != null);
    return advancedJobSearchWithPageNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result keywordChanged(_KeywordChanged value),
    Result salaryChanged(_SalaryChanged value),
    Result locationChanged(_LocatuionChanged value),
    Result advancedJobSearch(_AdvancedJobSearch value),
    Result advancedJobSearchWithPageNumber(
        _AdvancedJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (advancedJobSearchWithPageNumber != null) {
      return advancedJobSearchWithPageNumber(this);
    }
    return orElse();
  }
}

abstract class _AdvancedJobSearchWithPageNumber
    implements AdvancedJobSearchEvent {
  const factory _AdvancedJobSearchWithPageNumber(int pageNumber) =
      _$_AdvancedJobSearchWithPageNumber;

  int get pageNumber;
  _$AdvancedJobSearchWithPageNumberCopyWith<_AdvancedJobSearchWithPageNumber>
      get copyWith;
}

class _$AdvancedJobSearchStateTearOff {
  const _$AdvancedJobSearchStateTearOff();

  _AdvancedJobSearchState call(
      {@required
          Keyword keyword,
      @required
          SalaryInput salaryInput,
      @required
          JobLocation jobLocation,
      @required
          bool showErrorMessages,
      @required
          bool isSearching,
      @required
          Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess}) {
    return _AdvancedJobSearchState(
      keyword: keyword,
      salaryInput: salaryInput,
      jobLocation: jobLocation,
      showErrorMessages: showErrorMessages,
      isSearching: isSearching,
      jobFailureOrSuccess: jobFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $AdvancedJobSearchState = _$AdvancedJobSearchStateTearOff();

mixin _$AdvancedJobSearchState {
  Keyword get keyword;
  SalaryInput get salaryInput;
  JobLocation get jobLocation;
  bool get showErrorMessages;
  bool get isSearching;
  Option<Either<JobFailure, JobFinalResult>> get jobFailureOrSuccess;

  $AdvancedJobSearchStateCopyWith<AdvancedJobSearchState> get copyWith;
}

abstract class $AdvancedJobSearchStateCopyWith<$Res> {
  factory $AdvancedJobSearchStateCopyWith(AdvancedJobSearchState value,
          $Res Function(AdvancedJobSearchState) then) =
      _$AdvancedJobSearchStateCopyWithImpl<$Res>;
  $Res call(
      {Keyword keyword,
      SalaryInput salaryInput,
      JobLocation jobLocation,
      bool showErrorMessages,
      bool isSearching,
      Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess});
}

class _$AdvancedJobSearchStateCopyWithImpl<$Res>
    implements $AdvancedJobSearchStateCopyWith<$Res> {
  _$AdvancedJobSearchStateCopyWithImpl(this._value, this._then);

  final AdvancedJobSearchState _value;
  // ignore: unused_field
  final $Res Function(AdvancedJobSearchState) _then;

  @override
  $Res call({
    Object keyword = freezed,
    Object salaryInput = freezed,
    Object jobLocation = freezed,
    Object showErrorMessages = freezed,
    Object isSearching = freezed,
    Object jobFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      salaryInput: salaryInput == freezed
          ? _value.salaryInput
          : salaryInput as SalaryInput,
      jobLocation: jobLocation == freezed
          ? _value.jobLocation
          : jobLocation as JobLocation,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      jobFailureOrSuccess: jobFailureOrSuccess == freezed
          ? _value.jobFailureOrSuccess
          : jobFailureOrSuccess as Option<Either<JobFailure, JobFinalResult>>,
    ));
  }
}

abstract class _$AdvancedJobSearchStateCopyWith<$Res>
    implements $AdvancedJobSearchStateCopyWith<$Res> {
  factory _$AdvancedJobSearchStateCopyWith(_AdvancedJobSearchState value,
          $Res Function(_AdvancedJobSearchState) then) =
      __$AdvancedJobSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Keyword keyword,
      SalaryInput salaryInput,
      JobLocation jobLocation,
      bool showErrorMessages,
      bool isSearching,
      Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess});
}

class __$AdvancedJobSearchStateCopyWithImpl<$Res>
    extends _$AdvancedJobSearchStateCopyWithImpl<$Res>
    implements _$AdvancedJobSearchStateCopyWith<$Res> {
  __$AdvancedJobSearchStateCopyWithImpl(_AdvancedJobSearchState _value,
      $Res Function(_AdvancedJobSearchState) _then)
      : super(_value, (v) => _then(v as _AdvancedJobSearchState));

  @override
  _AdvancedJobSearchState get _value => super._value as _AdvancedJobSearchState;

  @override
  $Res call({
    Object keyword = freezed,
    Object salaryInput = freezed,
    Object jobLocation = freezed,
    Object showErrorMessages = freezed,
    Object isSearching = freezed,
    Object jobFailureOrSuccess = freezed,
  }) {
    return _then(_AdvancedJobSearchState(
      keyword: keyword == freezed ? _value.keyword : keyword as Keyword,
      salaryInput: salaryInput == freezed
          ? _value.salaryInput
          : salaryInput as SalaryInput,
      jobLocation: jobLocation == freezed
          ? _value.jobLocation
          : jobLocation as JobLocation,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSearching:
          isSearching == freezed ? _value.isSearching : isSearching as bool,
      jobFailureOrSuccess: jobFailureOrSuccess == freezed
          ? _value.jobFailureOrSuccess
          : jobFailureOrSuccess as Option<Either<JobFailure, JobFinalResult>>,
    ));
  }
}

class _$_AdvancedJobSearchState implements _AdvancedJobSearchState {
  const _$_AdvancedJobSearchState(
      {@required this.keyword,
      @required this.salaryInput,
      @required this.jobLocation,
      @required this.showErrorMessages,
      @required this.isSearching,
      @required this.jobFailureOrSuccess})
      : assert(keyword != null),
        assert(salaryInput != null),
        assert(jobLocation != null),
        assert(showErrorMessages != null),
        assert(isSearching != null),
        assert(jobFailureOrSuccess != null);

  @override
  final Keyword keyword;
  @override
  final SalaryInput salaryInput;
  @override
  final JobLocation jobLocation;
  @override
  final bool showErrorMessages;
  @override
  final bool isSearching;
  @override
  final Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess;

  @override
  String toString() {
    return 'AdvancedJobSearchState(keyword: $keyword, salaryInput: $salaryInput, jobLocation: $jobLocation, showErrorMessages: $showErrorMessages, isSearching: $isSearching, jobFailureOrSuccess: $jobFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdvancedJobSearchState &&
            (identical(other.keyword, keyword) ||
                const DeepCollectionEquality()
                    .equals(other.keyword, keyword)) &&
            (identical(other.salaryInput, salaryInput) ||
                const DeepCollectionEquality()
                    .equals(other.salaryInput, salaryInput)) &&
            (identical(other.jobLocation, jobLocation) ||
                const DeepCollectionEquality()
                    .equals(other.jobLocation, jobLocation)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSearching, isSearching) ||
                const DeepCollectionEquality()
                    .equals(other.isSearching, isSearching)) &&
            (identical(other.jobFailureOrSuccess, jobFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.jobFailureOrSuccess, jobFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(keyword) ^
      const DeepCollectionEquality().hash(salaryInput) ^
      const DeepCollectionEquality().hash(jobLocation) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSearching) ^
      const DeepCollectionEquality().hash(jobFailureOrSuccess);

  @override
  _$AdvancedJobSearchStateCopyWith<_AdvancedJobSearchState> get copyWith =>
      __$AdvancedJobSearchStateCopyWithImpl<_AdvancedJobSearchState>(
          this, _$identity);
}

abstract class _AdvancedJobSearchState implements AdvancedJobSearchState {
  const factory _AdvancedJobSearchState(
          {@required
              Keyword keyword,
          @required
              SalaryInput salaryInput,
          @required
              JobLocation jobLocation,
          @required
              bool showErrorMessages,
          @required
              bool isSearching,
          @required
              Option<Either<JobFailure, JobFinalResult>> jobFailureOrSuccess}) =
      _$_AdvancedJobSearchState;

  @override
  Keyword get keyword;
  @override
  SalaryInput get salaryInput;
  @override
  JobLocation get jobLocation;
  @override
  bool get showErrorMessages;
  @override
  bool get isSearching;
  @override
  Option<Either<JobFailure, JobFinalResult>> get jobFailureOrSuccess;
  @override
  _$AdvancedJobSearchStateCopyWith<_AdvancedJobSearchState> get copyWith;
}
