// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite_movies_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoriteMoviesWatcherEventTearOff {
  const _$FavoriteMoviesWatcherEventTearOff();

// ignore: unused_element
  _AddMovieToDatabase addMovieToDatabase(Movie movie, List<Cast> movieCast) {
    return _AddMovieToDatabase(
      movie,
      movieCast,
    );
  }

// ignore: unused_element
  _RemoveMovieFromDatabase removeMovieFromDatabase(Movie movie) {
    return _RemoveMovieFromDatabase(
      movie,
    );
  }
}

// ignore: unused_element
const $FavoriteMoviesWatcherEvent = _$FavoriteMoviesWatcherEventTearOff();

mixin _$FavoriteMoviesWatcherEvent {
  Movie get movie;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    @required Result removeMovieFromDatabase(Movie movie),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    Result removeMovieFromDatabase(Movie movie),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addMovieToDatabase(_AddMovieToDatabase value),
    @required Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addMovieToDatabase(_AddMovieToDatabase value),
    Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
    @required Result orElse(),
  });

  $FavoriteMoviesWatcherEventCopyWith<FavoriteMoviesWatcherEvent> get copyWith;
}

abstract class $FavoriteMoviesWatcherEventCopyWith<$Res> {
  factory $FavoriteMoviesWatcherEventCopyWith(FavoriteMoviesWatcherEvent value,
          $Res Function(FavoriteMoviesWatcherEvent) then) =
      _$FavoriteMoviesWatcherEventCopyWithImpl<$Res>;
  $Res call({Movie movie});
}

class _$FavoriteMoviesWatcherEventCopyWithImpl<$Res>
    implements $FavoriteMoviesWatcherEventCopyWith<$Res> {
  _$FavoriteMoviesWatcherEventCopyWithImpl(this._value, this._then);

  final FavoriteMoviesWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(FavoriteMoviesWatcherEvent) _then;

  @override
  $Res call({
    Object movie = freezed,
  }) {
    return _then(_value.copyWith(
      movie: movie == freezed ? _value.movie : movie as Movie,
    ));
  }
}

abstract class _$AddMovieToDatabaseCopyWith<$Res>
    implements $FavoriteMoviesWatcherEventCopyWith<$Res> {
  factory _$AddMovieToDatabaseCopyWith(
          _AddMovieToDatabase value, $Res Function(_AddMovieToDatabase) then) =
      __$AddMovieToDatabaseCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie, List<Cast> movieCast});
}

class __$AddMovieToDatabaseCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherEventCopyWithImpl<$Res>
    implements _$AddMovieToDatabaseCopyWith<$Res> {
  __$AddMovieToDatabaseCopyWithImpl(
      _AddMovieToDatabase _value, $Res Function(_AddMovieToDatabase) _then)
      : super(_value, (v) => _then(v as _AddMovieToDatabase));

  @override
  _AddMovieToDatabase get _value => super._value as _AddMovieToDatabase;

  @override
  $Res call({
    Object movie = freezed,
    Object movieCast = freezed,
  }) {
    return _then(_AddMovieToDatabase(
      movie == freezed ? _value.movie : movie as Movie,
      movieCast == freezed ? _value.movieCast : movieCast as List<Cast>,
    ));
  }
}

class _$_AddMovieToDatabase implements _AddMovieToDatabase {
  const _$_AddMovieToDatabase(this.movie, this.movieCast)
      : assert(movie != null),
        assert(movieCast != null);

  @override
  final Movie movie;
  @override
  final List<Cast> movieCast;

  @override
  String toString() {
    return 'FavoriteMoviesWatcherEvent.addMovieToDatabase(movie: $movie, movieCast: $movieCast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddMovieToDatabase &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)) &&
            (identical(other.movieCast, movieCast) ||
                const DeepCollectionEquality()
                    .equals(other.movieCast, movieCast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(movie) ^
      const DeepCollectionEquality().hash(movieCast);

  @override
  _$AddMovieToDatabaseCopyWith<_AddMovieToDatabase> get copyWith =>
      __$AddMovieToDatabaseCopyWithImpl<_AddMovieToDatabase>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    @required Result removeMovieFromDatabase(Movie movie),
  }) {
    assert(addMovieToDatabase != null);
    assert(removeMovieFromDatabase != null);
    return addMovieToDatabase(movie, movieCast);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    Result removeMovieFromDatabase(Movie movie),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToDatabase != null) {
      return addMovieToDatabase(movie, movieCast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addMovieToDatabase(_AddMovieToDatabase value),
    @required Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
  }) {
    assert(addMovieToDatabase != null);
    assert(removeMovieFromDatabase != null);
    return addMovieToDatabase(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addMovieToDatabase(_AddMovieToDatabase value),
    Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addMovieToDatabase != null) {
      return addMovieToDatabase(this);
    }
    return orElse();
  }
}

abstract class _AddMovieToDatabase implements FavoriteMoviesWatcherEvent {
  const factory _AddMovieToDatabase(Movie movie, List<Cast> movieCast) =
      _$_AddMovieToDatabase;

  @override
  Movie get movie;
  List<Cast> get movieCast;
  @override
  _$AddMovieToDatabaseCopyWith<_AddMovieToDatabase> get copyWith;
}

abstract class _$RemoveMovieFromDatabaseCopyWith<$Res>
    implements $FavoriteMoviesWatcherEventCopyWith<$Res> {
  factory _$RemoveMovieFromDatabaseCopyWith(_RemoveMovieFromDatabase value,
          $Res Function(_RemoveMovieFromDatabase) then) =
      __$RemoveMovieFromDatabaseCopyWithImpl<$Res>;
  @override
  $Res call({Movie movie});
}

class __$RemoveMovieFromDatabaseCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherEventCopyWithImpl<$Res>
    implements _$RemoveMovieFromDatabaseCopyWith<$Res> {
  __$RemoveMovieFromDatabaseCopyWithImpl(_RemoveMovieFromDatabase _value,
      $Res Function(_RemoveMovieFromDatabase) _then)
      : super(_value, (v) => _then(v as _RemoveMovieFromDatabase));

  @override
  _RemoveMovieFromDatabase get _value =>
      super._value as _RemoveMovieFromDatabase;

  @override
  $Res call({
    Object movie = freezed,
  }) {
    return _then(_RemoveMovieFromDatabase(
      movie == freezed ? _value.movie : movie as Movie,
    ));
  }
}

class _$_RemoveMovieFromDatabase implements _RemoveMovieFromDatabase {
  const _$_RemoveMovieFromDatabase(this.movie) : assert(movie != null);

  @override
  final Movie movie;

  @override
  String toString() {
    return 'FavoriteMoviesWatcherEvent.removeMovieFromDatabase(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveMovieFromDatabase &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @override
  _$RemoveMovieFromDatabaseCopyWith<_RemoveMovieFromDatabase> get copyWith =>
      __$RemoveMovieFromDatabaseCopyWithImpl<_RemoveMovieFromDatabase>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    @required Result removeMovieFromDatabase(Movie movie),
  }) {
    assert(addMovieToDatabase != null);
    assert(removeMovieFromDatabase != null);
    return removeMovieFromDatabase(movie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result addMovieToDatabase(Movie movie, List<Cast> movieCast),
    Result removeMovieFromDatabase(Movie movie),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromDatabase != null) {
      return removeMovieFromDatabase(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result addMovieToDatabase(_AddMovieToDatabase value),
    @required Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
  }) {
    assert(addMovieToDatabase != null);
    assert(removeMovieFromDatabase != null);
    return removeMovieFromDatabase(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result addMovieToDatabase(_AddMovieToDatabase value),
    Result removeMovieFromDatabase(_RemoveMovieFromDatabase value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeMovieFromDatabase != null) {
      return removeMovieFromDatabase(this);
    }
    return orElse();
  }
}

abstract class _RemoveMovieFromDatabase implements FavoriteMoviesWatcherEvent {
  const factory _RemoveMovieFromDatabase(Movie movie) =
      _$_RemoveMovieFromDatabase;

  @override
  Movie get movie;
  @override
  _$RemoveMovieFromDatabaseCopyWith<_RemoveMovieFromDatabase> get copyWith;
}

class _$FavoriteMoviesWatcherStateTearOff {
  const _$FavoriteMoviesWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  Succeeded succeeded() {
    return const Succeeded();
  }

// ignore: unused_element
  Failed failed(Failure databaseFailure) {
    return Failed(
      databaseFailure,
    );
  }
}

// ignore: unused_element
const $FavoriteMoviesWatcherState = _$FavoriteMoviesWatcherStateTearOff();

mixin _$FavoriteMoviesWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result succeeded(),
    @required Result failed(Failure databaseFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result succeeded(),
    Result failed(Failure databaseFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result succeeded(Succeeded value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result succeeded(Succeeded value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

abstract class $FavoriteMoviesWatcherStateCopyWith<$Res> {
  factory $FavoriteMoviesWatcherStateCopyWith(FavoriteMoviesWatcherState value,
          $Res Function(FavoriteMoviesWatcherState) then) =
      _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>;
}

class _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>
    implements $FavoriteMoviesWatcherStateCopyWith<$Res> {
  _$FavoriteMoviesWatcherStateCopyWithImpl(this._value, this._then);

  final FavoriteMoviesWatcherState _value;
  // ignore: unused_field
  final $Res Function(FavoriteMoviesWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>
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
    return 'FavoriteMoviesWatcherState.initial()';
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
    @required Result succeeded(),
    @required Result failed(Failure databaseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result succeeded(),
    Result failed(Failure databaseFailure),
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
    @required Result succeeded(Succeeded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result succeeded(Succeeded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements FavoriteMoviesWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>
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
    return 'FavoriteMoviesWatcherState.loadInProgress()';
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
    @required Result succeeded(),
    @required Result failed(Failure databaseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result succeeded(),
    Result failed(Failure databaseFailure),
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
    @required Result succeeded(Succeeded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result succeeded(Succeeded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements FavoriteMoviesWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $SucceededCopyWith<$Res> {
  factory $SucceededCopyWith(Succeeded value, $Res Function(Succeeded) then) =
      _$SucceededCopyWithImpl<$Res>;
}

class _$SucceededCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>
    implements $SucceededCopyWith<$Res> {
  _$SucceededCopyWithImpl(Succeeded _value, $Res Function(Succeeded) _then)
      : super(_value, (v) => _then(v as Succeeded));

  @override
  Succeeded get _value => super._value as Succeeded;
}

class _$Succeeded implements Succeeded {
  const _$Succeeded();

  @override
  String toString() {
    return 'FavoriteMoviesWatcherState.succeeded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Succeeded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result succeeded(),
    @required Result failed(Failure databaseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return succeeded();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result succeeded(),
    Result failed(Failure databaseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (succeeded != null) {
      return succeeded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result succeeded(Succeeded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result succeeded(Succeeded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class Succeeded implements FavoriteMoviesWatcherState {
  const factory Succeeded() = _$Succeeded;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure databaseFailure});

  $FailureCopyWith<$Res> get databaseFailure;
}

class _$FailedCopyWithImpl<$Res>
    extends _$FavoriteMoviesWatcherStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object databaseFailure = freezed,
  }) {
    return _then(Failed(
      databaseFailure == freezed
          ? _value.databaseFailure
          : databaseFailure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get databaseFailure {
    if (_value.databaseFailure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.databaseFailure, (value) {
      return _then(_value.copyWith(databaseFailure: value));
    });
  }
}

class _$Failed implements Failed {
  const _$Failed(this.databaseFailure) : assert(databaseFailure != null);

  @override
  final Failure databaseFailure;

  @override
  String toString() {
    return 'FavoriteMoviesWatcherState.failed(databaseFailure: $databaseFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.databaseFailure, databaseFailure) ||
                const DeepCollectionEquality()
                    .equals(other.databaseFailure, databaseFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(databaseFailure);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result succeeded(),
    @required Result failed(Failure databaseFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return failed(databaseFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result succeeded(),
    Result failed(Failure databaseFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(databaseFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result succeeded(Succeeded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(succeeded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result succeeded(Succeeded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements FavoriteMoviesWatcherState {
  const factory Failed(Failure databaseFailure) = _$Failed;

  Failure get databaseFailure;
  $FailedCopyWith<Failed> get copyWith;
}
