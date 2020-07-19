// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'regular_job_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegularJobSearchEventTearOff {
  const _$RegularJobSearchEventTearOff();

  _RegularJobSearch regularJobSearch(String keywordStr) {
    return _RegularJobSearch(
      keywordStr,
    );
  }

  _RegularJobSearchWithPageNumber regularJobSearchWithPageNumber(
      String keywordStr, int pageNumber) {
    return _RegularJobSearchWithPageNumber(
      keywordStr,
      pageNumber,
    );
  }
}

// ignore: unused_element
const $RegularJobSearchEvent = _$RegularJobSearchEventTearOff();

mixin _$RegularJobSearchEvent {
  String get keywordStr;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regularJobSearch(String keywordStr),
    @required
        Result regularJobSearchWithPageNumber(
            String keywordStr, int pageNumber),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regularJobSearch(String keywordStr),
    Result regularJobSearchWithPageNumber(String keywordStr, int pageNumber),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regularJobSearch(_RegularJobSearch value),
    @required
        Result regularJobSearchWithPageNumber(
            _RegularJobSearchWithPageNumber value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regularJobSearch(_RegularJobSearch value),
    Result regularJobSearchWithPageNumber(
        _RegularJobSearchWithPageNumber value),
    @required Result orElse(),
  });

  $RegularJobSearchEventCopyWith<RegularJobSearchEvent> get copyWith;
}

abstract class $RegularJobSearchEventCopyWith<$Res> {
  factory $RegularJobSearchEventCopyWith(RegularJobSearchEvent value,
          $Res Function(RegularJobSearchEvent) then) =
      _$RegularJobSearchEventCopyWithImpl<$Res>;
  $Res call({String keywordStr});
}

class _$RegularJobSearchEventCopyWithImpl<$Res>
    implements $RegularJobSearchEventCopyWith<$Res> {
  _$RegularJobSearchEventCopyWithImpl(this._value, this._then);

  final RegularJobSearchEvent _value;
  // ignore: unused_field
  final $Res Function(RegularJobSearchEvent) _then;

  @override
  $Res call({
    Object keywordStr = freezed,
  }) {
    return _then(_value.copyWith(
      keywordStr:
          keywordStr == freezed ? _value.keywordStr : keywordStr as String,
    ));
  }
}

abstract class _$RegularJobSearchCopyWith<$Res>
    implements $RegularJobSearchEventCopyWith<$Res> {
  factory _$RegularJobSearchCopyWith(
          _RegularJobSearch value, $Res Function(_RegularJobSearch) then) =
      __$RegularJobSearchCopyWithImpl<$Res>;
  @override
  $Res call({String keywordStr});
}

class __$RegularJobSearchCopyWithImpl<$Res>
    extends _$RegularJobSearchEventCopyWithImpl<$Res>
    implements _$RegularJobSearchCopyWith<$Res> {
  __$RegularJobSearchCopyWithImpl(
      _RegularJobSearch _value, $Res Function(_RegularJobSearch) _then)
      : super(_value, (v) => _then(v as _RegularJobSearch));

  @override
  _RegularJobSearch get _value => super._value as _RegularJobSearch;

  @override
  $Res call({
    Object keywordStr = freezed,
  }) {
    return _then(_RegularJobSearch(
      keywordStr == freezed ? _value.keywordStr : keywordStr as String,
    ));
  }
}

class _$_RegularJobSearch implements _RegularJobSearch {
  const _$_RegularJobSearch(this.keywordStr) : assert(keywordStr != null);

  @override
  final String keywordStr;

  @override
  String toString() {
    return 'RegularJobSearchEvent.regularJobSearch(keywordStr: $keywordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegularJobSearch &&
            (identical(other.keywordStr, keywordStr) ||
                const DeepCollectionEquality()
                    .equals(other.keywordStr, keywordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(keywordStr);

  @override
  _$RegularJobSearchCopyWith<_RegularJobSearch> get copyWith =>
      __$RegularJobSearchCopyWithImpl<_RegularJobSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regularJobSearch(String keywordStr),
    @required
        Result regularJobSearchWithPageNumber(
            String keywordStr, int pageNumber),
  }) {
    assert(regularJobSearch != null);
    assert(regularJobSearchWithPageNumber != null);
    return regularJobSearch(keywordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regularJobSearch(String keywordStr),
    Result regularJobSearchWithPageNumber(String keywordStr, int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regularJobSearch != null) {
      return regularJobSearch(keywordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regularJobSearch(_RegularJobSearch value),
    @required
        Result regularJobSearchWithPageNumber(
            _RegularJobSearchWithPageNumber value),
  }) {
    assert(regularJobSearch != null);
    assert(regularJobSearchWithPageNumber != null);
    return regularJobSearch(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regularJobSearch(_RegularJobSearch value),
    Result regularJobSearchWithPageNumber(
        _RegularJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regularJobSearch != null) {
      return regularJobSearch(this);
    }
    return orElse();
  }
}

abstract class _RegularJobSearch implements RegularJobSearchEvent {
  const factory _RegularJobSearch(String keywordStr) = _$_RegularJobSearch;

  @override
  String get keywordStr;
  @override
  _$RegularJobSearchCopyWith<_RegularJobSearch> get copyWith;
}

abstract class _$RegularJobSearchWithPageNumberCopyWith<$Res>
    implements $RegularJobSearchEventCopyWith<$Res> {
  factory _$RegularJobSearchWithPageNumberCopyWith(
          _RegularJobSearchWithPageNumber value,
          $Res Function(_RegularJobSearchWithPageNumber) then) =
      __$RegularJobSearchWithPageNumberCopyWithImpl<$Res>;
  @override
  $Res call({String keywordStr, int pageNumber});
}

class __$RegularJobSearchWithPageNumberCopyWithImpl<$Res>
    extends _$RegularJobSearchEventCopyWithImpl<$Res>
    implements _$RegularJobSearchWithPageNumberCopyWith<$Res> {
  __$RegularJobSearchWithPageNumberCopyWithImpl(
      _RegularJobSearchWithPageNumber _value,
      $Res Function(_RegularJobSearchWithPageNumber) _then)
      : super(_value, (v) => _then(v as _RegularJobSearchWithPageNumber));

  @override
  _RegularJobSearchWithPageNumber get _value =>
      super._value as _RegularJobSearchWithPageNumber;

  @override
  $Res call({
    Object keywordStr = freezed,
    Object pageNumber = freezed,
  }) {
    return _then(_RegularJobSearchWithPageNumber(
      keywordStr == freezed ? _value.keywordStr : keywordStr as String,
      pageNumber == freezed ? _value.pageNumber : pageNumber as int,
    ));
  }
}

class _$_RegularJobSearchWithPageNumber
    implements _RegularJobSearchWithPageNumber {
  const _$_RegularJobSearchWithPageNumber(this.keywordStr, this.pageNumber)
      : assert(keywordStr != null),
        assert(pageNumber != null);

  @override
  final String keywordStr;
  @override
  final int pageNumber;

  @override
  String toString() {
    return 'RegularJobSearchEvent.regularJobSearchWithPageNumber(keywordStr: $keywordStr, pageNumber: $pageNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegularJobSearchWithPageNumber &&
            (identical(other.keywordStr, keywordStr) ||
                const DeepCollectionEquality()
                    .equals(other.keywordStr, keywordStr)) &&
            (identical(other.pageNumber, pageNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageNumber, pageNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(keywordStr) ^
      const DeepCollectionEquality().hash(pageNumber);

  @override
  _$RegularJobSearchWithPageNumberCopyWith<_RegularJobSearchWithPageNumber>
      get copyWith => __$RegularJobSearchWithPageNumberCopyWithImpl<
          _RegularJobSearchWithPageNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regularJobSearch(String keywordStr),
    @required
        Result regularJobSearchWithPageNumber(
            String keywordStr, int pageNumber),
  }) {
    assert(regularJobSearch != null);
    assert(regularJobSearchWithPageNumber != null);
    return regularJobSearchWithPageNumber(keywordStr, pageNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regularJobSearch(String keywordStr),
    Result regularJobSearchWithPageNumber(String keywordStr, int pageNumber),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regularJobSearchWithPageNumber != null) {
      return regularJobSearchWithPageNumber(keywordStr, pageNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regularJobSearch(_RegularJobSearch value),
    @required
        Result regularJobSearchWithPageNumber(
            _RegularJobSearchWithPageNumber value),
  }) {
    assert(regularJobSearch != null);
    assert(regularJobSearchWithPageNumber != null);
    return regularJobSearchWithPageNumber(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regularJobSearch(_RegularJobSearch value),
    Result regularJobSearchWithPageNumber(
        _RegularJobSearchWithPageNumber value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regularJobSearchWithPageNumber != null) {
      return regularJobSearchWithPageNumber(this);
    }
    return orElse();
  }
}

abstract class _RegularJobSearchWithPageNumber
    implements RegularJobSearchEvent {
  const factory _RegularJobSearchWithPageNumber(
      String keywordStr, int pageNumber) = _$_RegularJobSearchWithPageNumber;

  @override
  String get keywordStr;
  int get pageNumber;
  @override
  _$RegularJobSearchWithPageNumberCopyWith<_RegularJobSearchWithPageNumber>
      get copyWith;
}

class _$RegularJobSearchStateTearOff {
  const _$RegularJobSearchStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SearchInProgress searchInProgress() {
    return const _SearchInProgress();
  }

  _SearchSuccess searchSuccess(JobFinalResult jobFinalResult) {
    return _SearchSuccess(
      jobFinalResult,
    );
  }

  _SearchFailure searchFailure(JobFailure jobFailure) {
    return _SearchFailure(
      jobFailure,
    );
  }
}

// ignore: unused_element
const $RegularJobSearchState = _$RegularJobSearchStateTearOff();

mixin _$RegularJobSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(JobFinalResult jobFinalResult),
    @required Result searchFailure(JobFailure jobFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(JobFinalResult jobFinalResult),
    Result searchFailure(JobFailure jobFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  });
}

abstract class $RegularJobSearchStateCopyWith<$Res> {
  factory $RegularJobSearchStateCopyWith(RegularJobSearchState value,
          $Res Function(RegularJobSearchState) then) =
      _$RegularJobSearchStateCopyWithImpl<$Res>;
}

class _$RegularJobSearchStateCopyWithImpl<$Res>
    implements $RegularJobSearchStateCopyWith<$Res> {
  _$RegularJobSearchStateCopyWithImpl(this._value, this._then);

  final RegularJobSearchState _value;
  // ignore: unused_field
  final $Res Function(RegularJobSearchState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res>
    extends _$RegularJobSearchStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RegularJobSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(JobFinalResult jobFinalResult),
    @required Result searchFailure(JobFailure jobFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(JobFinalResult jobFinalResult),
    Result searchFailure(JobFailure jobFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RegularJobSearchState {
  const factory _Initial() = _$_Initial;
}

abstract class _$SearchInProgressCopyWith<$Res> {
  factory _$SearchInProgressCopyWith(
          _SearchInProgress value, $Res Function(_SearchInProgress) then) =
      __$SearchInProgressCopyWithImpl<$Res>;
}

class __$SearchInProgressCopyWithImpl<$Res>
    extends _$RegularJobSearchStateCopyWithImpl<$Res>
    implements _$SearchInProgressCopyWith<$Res> {
  __$SearchInProgressCopyWithImpl(
      _SearchInProgress _value, $Res Function(_SearchInProgress) _then)
      : super(_value, (v) => _then(v as _SearchInProgress));

  @override
  _SearchInProgress get _value => super._value as _SearchInProgress;
}

class _$_SearchInProgress implements _SearchInProgress {
  const _$_SearchInProgress();

  @override
  String toString() {
    return 'RegularJobSearchState.searchInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(JobFinalResult jobFinalResult),
    @required Result searchFailure(JobFailure jobFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(JobFinalResult jobFinalResult),
    Result searchFailure(JobFailure jobFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchInProgress != null) {
      return searchInProgress(this);
    }
    return orElse();
  }
}

abstract class _SearchInProgress implements RegularJobSearchState {
  const factory _SearchInProgress() = _$_SearchInProgress;
}

abstract class _$SearchSuccessCopyWith<$Res> {
  factory _$SearchSuccessCopyWith(
          _SearchSuccess value, $Res Function(_SearchSuccess) then) =
      __$SearchSuccessCopyWithImpl<$Res>;
  $Res call({JobFinalResult jobFinalResult});

  $JobFinalResultCopyWith<$Res> get jobFinalResult;
}

class __$SearchSuccessCopyWithImpl<$Res>
    extends _$RegularJobSearchStateCopyWithImpl<$Res>
    implements _$SearchSuccessCopyWith<$Res> {
  __$SearchSuccessCopyWithImpl(
      _SearchSuccess _value, $Res Function(_SearchSuccess) _then)
      : super(_value, (v) => _then(v as _SearchSuccess));

  @override
  _SearchSuccess get _value => super._value as _SearchSuccess;

  @override
  $Res call({
    Object jobFinalResult = freezed,
  }) {
    return _then(_SearchSuccess(
      jobFinalResult == freezed
          ? _value.jobFinalResult
          : jobFinalResult as JobFinalResult,
    ));
  }

  @override
  $JobFinalResultCopyWith<$Res> get jobFinalResult {
    if (_value.jobFinalResult == null) {
      return null;
    }
    return $JobFinalResultCopyWith<$Res>(_value.jobFinalResult, (value) {
      return _then(_value.copyWith(jobFinalResult: value));
    });
  }
}

class _$_SearchSuccess implements _SearchSuccess {
  const _$_SearchSuccess(this.jobFinalResult) : assert(jobFinalResult != null);

  @override
  final JobFinalResult jobFinalResult;

  @override
  String toString() {
    return 'RegularJobSearchState.searchSuccess(jobFinalResult: $jobFinalResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchSuccess &&
            (identical(other.jobFinalResult, jobFinalResult) ||
                const DeepCollectionEquality()
                    .equals(other.jobFinalResult, jobFinalResult)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(jobFinalResult);

  @override
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith =>
      __$SearchSuccessCopyWithImpl<_SearchSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(JobFinalResult jobFinalResult),
    @required Result searchFailure(JobFailure jobFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(jobFinalResult);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(JobFinalResult jobFinalResult),
    Result searchFailure(JobFailure jobFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(jobFinalResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchSuccess != null) {
      return searchSuccess(this);
    }
    return orElse();
  }
}

abstract class _SearchSuccess implements RegularJobSearchState {
  const factory _SearchSuccess(JobFinalResult jobFinalResult) =
      _$_SearchSuccess;

  JobFinalResult get jobFinalResult;
  _$SearchSuccessCopyWith<_SearchSuccess> get copyWith;
}

abstract class _$SearchFailureCopyWith<$Res> {
  factory _$SearchFailureCopyWith(
          _SearchFailure value, $Res Function(_SearchFailure) then) =
      __$SearchFailureCopyWithImpl<$Res>;
  $Res call({JobFailure jobFailure});

  $JobFailureCopyWith<$Res> get jobFailure;
}

class __$SearchFailureCopyWithImpl<$Res>
    extends _$RegularJobSearchStateCopyWithImpl<$Res>
    implements _$SearchFailureCopyWith<$Res> {
  __$SearchFailureCopyWithImpl(
      _SearchFailure _value, $Res Function(_SearchFailure) _then)
      : super(_value, (v) => _then(v as _SearchFailure));

  @override
  _SearchFailure get _value => super._value as _SearchFailure;

  @override
  $Res call({
    Object jobFailure = freezed,
  }) {
    return _then(_SearchFailure(
      jobFailure == freezed ? _value.jobFailure : jobFailure as JobFailure,
    ));
  }

  @override
  $JobFailureCopyWith<$Res> get jobFailure {
    if (_value.jobFailure == null) {
      return null;
    }
    return $JobFailureCopyWith<$Res>(_value.jobFailure, (value) {
      return _then(_value.copyWith(jobFailure: value));
    });
  }
}

class _$_SearchFailure implements _SearchFailure {
  const _$_SearchFailure(this.jobFailure) : assert(jobFailure != null);

  @override
  final JobFailure jobFailure;

  @override
  String toString() {
    return 'RegularJobSearchState.searchFailure(jobFailure: $jobFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFailure &&
            (identical(other.jobFailure, jobFailure) ||
                const DeepCollectionEquality()
                    .equals(other.jobFailure, jobFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(jobFailure);

  @override
  _$SearchFailureCopyWith<_SearchFailure> get copyWith =>
      __$SearchFailureCopyWithImpl<_SearchFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result searchInProgress(),
    @required Result searchSuccess(JobFinalResult jobFinalResult),
    @required Result searchFailure(JobFailure jobFailure),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(jobFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result searchInProgress(),
    Result searchSuccess(JobFinalResult jobFinalResult),
    Result searchFailure(JobFailure jobFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(jobFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result searchInProgress(_SearchInProgress value),
    @required Result searchSuccess(_SearchSuccess value),
    @required Result searchFailure(_SearchFailure value),
  }) {
    assert(initial != null);
    assert(searchInProgress != null);
    assert(searchSuccess != null);
    assert(searchFailure != null);
    return searchFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result searchInProgress(_SearchInProgress value),
    Result searchSuccess(_SearchSuccess value),
    Result searchFailure(_SearchFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchFailure != null) {
      return searchFailure(this);
    }
    return orElse();
  }
}

abstract class _SearchFailure implements RegularJobSearchState {
  const factory _SearchFailure(JobFailure jobFailure) = _$_SearchFailure;

  JobFailure get jobFailure;
  _$SearchFailureCopyWith<_SearchFailure> get copyWith;
}
