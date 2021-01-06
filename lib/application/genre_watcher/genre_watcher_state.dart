part of 'genre_watcher_bloc.dart';

@freezed
abstract class GenreWatcherState with _$GenreWatcherState {
  const factory GenreWatcherState.initial() = Initial;
  const factory GenreWatcherState.loadInProgress() = DataTransferInProgress;
  const factory GenreWatcherState.loadSuccess(GenreResult genre) = LoadSuccess;
  const factory GenreWatcherState.loadFailure(Failure movieFailure) = LoadFailure;
}
