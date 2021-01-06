// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'genre_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GenreWatcherEventTearOff {
  const _$GenreWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _GenreReceived genresReceived(
      Either<MovieFailure, GenreResult> failureOrGenre) {
    return _GenreReceived(
      failureOrGenre,
    );
  }
}

// ignore: unused_element
const $GenreWatcherEvent = _$GenreWatcherEventTearOff();

mixin _$GenreWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_GenreReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_GenreReceived value),
    @required Result orElse(),
  });
}

abstract class $GenreWatcherEventCopyWith<$Res> {
  factory $GenreWatcherEventCopyWith(
          GenreWatcherEvent value, $Res Function(GenreWatcherEvent) then) =
      _$GenreWatcherEventCopyWithImpl<$Res>;
}

class _$GenreWatcherEventCopyWithImpl<$Res>
    implements $GenreWatcherEventCopyWith<$Res> {
  _$GenreWatcherEventCopyWithImpl(this._value, this._then);

  final GenreWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(GenreWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$GenreWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'GenreWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_GenreReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_GenreReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements GenreWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$GenreReceivedCopyWith<$Res> {
  factory _$GenreReceivedCopyWith(
          _GenreReceived value, $Res Function(_GenreReceived) then) =
      __$GenreReceivedCopyWithImpl<$Res>;
  $Res call({Either<MovieFailure, GenreResult> failureOrGenre});
}

class __$GenreReceivedCopyWithImpl<$Res>
    extends _$GenreWatcherEventCopyWithImpl<$Res>
    implements _$GenreReceivedCopyWith<$Res> {
  __$GenreReceivedCopyWithImpl(
      _GenreReceived _value, $Res Function(_GenreReceived) _then)
      : super(_value, (v) => _then(v as _GenreReceived));

  @override
  _GenreReceived get _value => super._value as _GenreReceived;

  @override
  $Res call({
    Object failureOrGenre = freezed,
  }) {
    return _then(_GenreReceived(
      failureOrGenre == freezed
          ? _value.failureOrGenre
          : failureOrGenre as Either<MovieFailure, GenreResult>,
    ));
  }
}

class _$_GenreReceived implements _GenreReceived {
  const _$_GenreReceived(this.failureOrGenre) : assert(failureOrGenre != null);

  @override
  final Either<MovieFailure, GenreResult> failureOrGenre;

  @override
  String toString() {
    return 'GenreWatcherEvent.genresReceived(failureOrGenre: $failureOrGenre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenreReceived &&
            (identical(other.failureOrGenre, failureOrGenre) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrGenre, failureOrGenre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrGenre);

  @override
  _$GenreReceivedCopyWith<_GenreReceived> get copyWith =>
      __$GenreReceivedCopyWithImpl<_GenreReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return genresReceived(failureOrGenre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result genresReceived(Either<MovieFailure, GenreResult> failureOrGenre),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genresReceived != null) {
      return genresReceived(failureOrGenre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result genresReceived(_GenreReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(genresReceived != null);
    return genresReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result genresReceived(_GenreReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (genresReceived != null) {
      return genresReceived(this);
    }
    return orElse();
  }
}

abstract class _GenreReceived implements GenreWatcherEvent {
  const factory _GenreReceived(
      Either<MovieFailure, GenreResult> failureOrGenre) = _$_GenreReceived;

  Either<MovieFailure, GenreResult> get failureOrGenre;
  _$GenreReceivedCopyWith<_GenreReceived> get copyWith;
}

class _$GenreWatcherStateTearOff {
  const _$GenreWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(GenreResult genre) {
    return LoadSuccess(
      genre,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(MovieFailure movieFailure) {
    return LoadFailure(
      movieFailure,
    );
  }
}

// ignore: unused_element
const $GenreWatcherState = _$GenreWatcherStateTearOff();

mixin _$GenreWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(GenreResult genre),
    @required Result loadFailure(MovieFailure movieFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(GenreResult genre),
    Result loadFailure(MovieFailure movieFailure),
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

abstract class $GenreWatcherStateCopyWith<$Res> {
  factory $GenreWatcherStateCopyWith(
          GenreWatcherState value, $Res Function(GenreWatcherState) then) =
      _$GenreWatcherStateCopyWithImpl<$Res>;
}

class _$GenreWatcherStateCopyWithImpl<$Res>
    implements $GenreWatcherStateCopyWith<$Res> {
  _$GenreWatcherStateCopyWithImpl(this._value, this._then);

  final GenreWatcherState _value;
  // ignore: unused_field
  final $Res Function(GenreWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$GenreWatcherStateCopyWithImpl<$Res>
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
    return 'GenreWatcherState.initial()';
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
    @required Result loadSuccess(GenreResult genre),
    @required Result loadFailure(MovieFailure movieFailure),
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
    Result loadSuccess(GenreResult genre),
    Result loadFailure(MovieFailure movieFailure),
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

abstract class Initial implements GenreWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$GenreWatcherStateCopyWithImpl<$Res>
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
    return 'GenreWatcherState.loadInProgress()';
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
    @required Result loadSuccess(GenreResult genre),
    @required Result loadFailure(MovieFailure movieFailure),
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
    Result loadSuccess(GenreResult genre),
    Result loadFailure(MovieFailure movieFailure),
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

abstract class DataTransferInProgress implements GenreWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({GenreResult genre});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$GenreWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object genre = freezed,
  }) {
    return _then(LoadSuccess(
      genre == freezed ? _value.genre : genre as GenreResult,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.genre) : assert(genre != null);

  @override
  final GenreResult genre;

  @override
  String toString() {
    return 'GenreWatcherState.loadSuccess(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.genre, genre) ||
                const DeepCollectionEquality().equals(other.genre, genre)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(genre);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(GenreResult genre),
    @required Result loadFailure(MovieFailure movieFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(genre);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(GenreResult genre),
    Result loadFailure(MovieFailure movieFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(genre);
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

abstract class LoadSuccess implements GenreWatcherState {
  const factory LoadSuccess(GenreResult genre) = _$LoadSuccess;

  GenreResult get genre;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({MovieFailure movieFailure});

  $MovieFailureCopyWith<$Res> get movieFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$GenreWatcherStateCopyWithImpl<$Res>
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
      movieFailure == freezed
          ? _value.movieFailure
          : movieFailure as MovieFailure,
    ));
  }

  @override
  $MovieFailureCopyWith<$Res> get movieFailure {
    if (_value.movieFailure == null) {
      return null;
    }
    return $MovieFailureCopyWith<$Res>(_value.movieFailure, (value) {
      return _then(_value.copyWith(movieFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.movieFailure) : assert(movieFailure != null);

  @override
  final MovieFailure movieFailure;

  @override
  String toString() {
    return 'GenreWatcherState.loadFailure(movieFailure: $movieFailure)';
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
    @required Result loadSuccess(GenreResult genre),
    @required Result loadFailure(MovieFailure movieFailure),
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
    Result loadSuccess(GenreResult genre),
    Result loadFailure(MovieFailure movieFailure),
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

abstract class LoadFailure implements GenreWatcherState {
  const factory LoadFailure(MovieFailure movieFailure) = _$LoadFailure;

  MovieFailure get movieFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
