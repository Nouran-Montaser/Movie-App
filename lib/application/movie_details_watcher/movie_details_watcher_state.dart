part of 'movie_details_watcher_bloc.dart';

@freezed
abstract class MovieDetailsWatcherState with _$MovieDetailsWatcherState {
  const factory MovieDetailsWatcherState.initial() = Initial;
  const factory MovieDetailsWatcherState.loadInProgress() = DataTransferInProgress;
  const factory MovieDetailsWatcherState.loadSuccess(CastResponse cast) = LoadSuccess;
  const factory MovieDetailsWatcherState.loadFailure(Failure movieFailure) = LoadFailure;
}
