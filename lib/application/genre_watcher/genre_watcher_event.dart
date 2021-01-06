part of 'genre_watcher_bloc.dart';

@freezed
abstract class GenreWatcherEvent with _$GenreWatcherEvent {
  const factory GenreWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory GenreWatcherEvent.genresReceived(Either<Failure, GenreResult> failureOrGenre) = _GenreReceived;
}
