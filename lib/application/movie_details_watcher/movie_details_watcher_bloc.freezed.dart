// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_details_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MovieDetailsWatcherEventTearOff {
  const _$MovieDetailsWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(int movieId) {
    return _WatchAllStarted(
      movieId,
    );
  }

// ignore: unused_element
  _CastReceived genresReceived(Either<Failure, CastResponse> failureOrCast) {
    return _CastReceived(
      failureOrCast,
    );
  }
}

// ignore: unused_element
const $MovieDetailsWatcherEvent = _$MovieDetailsWatcherEventTearOff();

mixin _$MovieDetailsWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(int movieId),
    @required
        Result genresReceived(Either<Failure, CastResponse> failureOrCast),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(int movieId),
    Result genresReceived(Either<Failure, CastResponse> failureOrCast),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_CastReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_CastReceived value),
    @required Result orElse(),
  });
}

abstract class $MovieDetailsWatcherEventCopyWith<$Res> {
  factory $MovieDetailsWatcherEventCopyWith(MovieDetailsWatcherEvent value,
          $Res Function(MovieDetailsWatcherEvent) then) =
      _$MovieDetailsWatcherEventCopyWithImpl<$Res>;
}

class _$MovieDetailsWatcherEventCopyWithImpl<$Res>
    implements $MovieDetailsWatcherEventCopyWith<$Res> {
  _$MovieDetailsWatcherEventCopyWithImpl(this._value, this._then);

  final MovieDetailsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({int movieId});
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object movieId = freezed,
  }) {
    return _then(_WatchAllStarted(
      movieId == freezed ? _value.movieId : movieId as int,
    ));
  }
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.movieId) : assert(movieId != null);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsWatcherEvent.watchAllStarted(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(int movieId),
    @required
        Result genresReceived(Either<Failure, CastResponse> failureOrCast),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return watchAllStarted(movieId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(int movieId),
    Result genresReceived(Either<Failure, CastResponse> failureOrCast),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_CastReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_CastReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements MovieDetailsWatcherEvent {
  const factory _WatchAllStarted(int movieId) = _$_WatchAllStarted;

  int get movieId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

abstract class _$CastReceivedCopyWith<$Res> {
  factory _$CastReceivedCopyWith(
          _CastReceived value, $Res Function(_CastReceived) then) =
      __$CastReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, CastResponse> failureOrCast});
}

class __$CastReceivedCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherEventCopyWithImpl<$Res>
    implements _$CastReceivedCopyWith<$Res> {
  __$CastReceivedCopyWithImpl(
      _CastReceived _value, $Res Function(_CastReceived) _then)
      : super(_value, (v) => _then(v as _CastReceived));

  @override
  _CastReceived get _value => super._value as _CastReceived;

  @override
  $Res call({
    Object failureOrCast = freezed,
  }) {
    return _then(_CastReceived(
      failureOrCast == freezed
          ? _value.failureOrCast
          : failureOrCast as Either<Failure, CastResponse>,
    ));
  }
}

class _$_CastReceived implements _CastReceived {
  const _$_CastReceived(this.failureOrCast) : assert(failureOrCast != null);

  @override
  final Either<Failure, CastResponse> failureOrCast;

  @override
  String toString() {
    return 'MovieDetailsWatcherEvent.genresReceived(failureOrCast: $failureOrCast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CastReceived &&
            (identical(other.failureOrCast, failureOrCast) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrCast, failureOrCast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrCast);

  @override
  _$CastReceivedCopyWith<_CastReceived> get copyWith =>
      __$CastReceivedCopyWithImpl<_CastReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(int movieId),
    @required
        Result genresReceived(Either<Failure, CastResponse> failureOrCast),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return genresReceived(failureOrCast);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(int movieId),
    Result genresReceived(Either<Failure, CastResponse> failureOrCast),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genresReceived != null) {
      return genresReceived(failureOrCast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_CastReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return genresReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_CastReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genresReceived != null) {
      return genresReceived(this);
    }
    return orElse();
  }
}

abstract class _CastReceived implements MovieDetailsWatcherEvent {
  const factory _CastReceived(Either<Failure, CastResponse> failureOrCast) =
      _$_CastReceived;

  Either<Failure, CastResponse> get failureOrCast;
  _$CastReceivedCopyWith<_CastReceived> get copyWith;
}

class _$MovieDetailsWatcherStateTearOff {
  const _$MovieDetailsWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(CastResponse cast) {
    return LoadSuccess(
      cast,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(Failure movieFailure) {
    return LoadFailure(
      movieFailure,
    );
  }
}

// ignore: unused_element
const $MovieDetailsWatcherState = _$MovieDetailsWatcherStateTearOff();

mixin _$MovieDetailsWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(CastResponse cast),
    @required Result loadFailure(Failure movieFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(CastResponse cast),
    Result loadFailure(Failure movieFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $MovieDetailsWatcherStateCopyWith<$Res> {
  factory $MovieDetailsWatcherStateCopyWith(MovieDetailsWatcherState value,
          $Res Function(MovieDetailsWatcherState) then) =
      _$MovieDetailsWatcherStateCopyWithImpl<$Res>;
}

class _$MovieDetailsWatcherStateCopyWithImpl<$Res>
    implements $MovieDetailsWatcherStateCopyWith<$Res> {
  _$MovieDetailsWatcherStateCopyWithImpl(this._value, this._then);

  final MovieDetailsWatcherState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'MovieDetailsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(CastResponse cast),
    @required Result loadFailure(Failure movieFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(CastResponse cast),
    Result loadFailure(Failure movieFailure),
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
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MovieDetailsWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'MovieDetailsWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(CastResponse cast),
    @required Result loadFailure(Failure movieFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(CastResponse cast),
    Result loadFailure(Failure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements MovieDetailsWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({CastResponse cast});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(LoadSuccess(
      cast == freezed ? _value.cast : cast as CastResponse,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.cast) : assert(cast != null);

  @override
  final CastResponse cast;

  @override
  String toString() {
    return 'MovieDetailsWatcherState.loadSuccess(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(CastResponse cast),
    @required Result loadFailure(Failure movieFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(cast);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(CastResponse cast),
    Result loadFailure(Failure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(cast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements MovieDetailsWatcherState {
  const factory LoadSuccess(CastResponse cast) = _$LoadSuccess;

  CastResponse get cast;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({Failure movieFailure});

  $FailureCopyWith<$Res> get movieFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$MovieDetailsWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object movieFailure = freezed,
  }) {
    return _then(LoadFailure(
      movieFailure == freezed ? _value.movieFailure : movieFailure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get movieFailure {
    if (_value.movieFailure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.movieFailure, (value) {
      return _then(_value.copyWith(movieFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.movieFailure) : assert(movieFailure != null);

  @override
  final Failure movieFailure;

  @override
  String toString() {
    return 'MovieDetailsWatcherState.loadFailure(movieFailure: $movieFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.movieFailure, movieFailure) ||
                const DeepCollectionEquality()
                    .equals(other.movieFailure, movieFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(CastResponse cast),
    @required Result loadFailure(Failure movieFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(movieFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(CastResponse cast),
    Result loadFailure(Failure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(movieFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements MovieDetailsWatcherState {
  const factory LoadFailure(Failure movieFailure) = _$LoadFailure;

  Failure get movieFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
