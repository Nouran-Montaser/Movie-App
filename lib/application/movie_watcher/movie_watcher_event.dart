part of 'movie_watcher_bloc.dart';

@freezed
abstract class MovieWatcherEvent with _$MovieWatcherEvent {
  const factory MovieWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory MovieWatcherEvent.watchFavoriteStarted() = _WatchFavoriteStarted;
  const factory MovieWatcherEvent.movieReceived(Either<Failure, KtList<Movie>> failureOrMovie) = _MovieReceived;
}
