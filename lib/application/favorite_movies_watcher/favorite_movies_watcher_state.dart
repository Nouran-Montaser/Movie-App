part of 'favorite_movies_watcher_bloc.dart';

@freezed
abstract class FavoriteMoviesWatcherState with _$FavoriteMoviesWatcherState {
  const factory FavoriteMoviesWatcherState.initial() = Initial;
  const factory FavoriteMoviesWatcherState.loadInProgress() = DataTransferInProgress;
  const factory FavoriteMoviesWatcherState.succeeded() = Succeeded;
  const factory FavoriteMoviesWatcherState.failed(Failure databaseFailure) = Failed;
}
