part of 'movie_watcher_bloc.dart';

@freezed
abstract class MovieWatcherState with _$MovieWatcherState {
  const factory MovieWatcherState.initial() = Initial;
  const factory MovieWatcherState.loadInProgress() = DataTransferInProgress;
  const factory MovieWatcherState.loadSuccess(KtList<Movie> movie) = LoadSuccess;
  const factory MovieWatcherState.loadFailure(MovieFailure movieFailure) = LoadFailure;
}
