part of 'movie_watcher_bloc.dart';

@freezed
abstract class MovieWatcherEvent with _$MovieWatcherEvent {
  const factory MovieWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory MovieWatcherEvent.watchUncompletedStarted() = _WatchUncompletedStarted;
  const factory MovieWatcherEvent.movieReceived(Either<MovieFailure, KtList<Movie>> failureOrMovie) = _MovieReceived;
}
