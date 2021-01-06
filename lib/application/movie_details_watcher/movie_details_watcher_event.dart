part of 'movie_details_watcher_bloc.dart';

@freezed
abstract class MovieDetailsWatcherEvent with _$MovieDetailsWatcherEvent {
  const factory MovieDetailsWatcherEvent.watchAllStarted(int movieId) = _WatchAllStarted;
  const factory MovieDetailsWatcherEvent.genresReceived(Either<Failure, CastResponse> failureOrCast) = _CastReceived;
}
