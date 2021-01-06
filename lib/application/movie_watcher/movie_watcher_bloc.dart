import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:movie_app/domain/movie_failure.dart';

part 'movie_watcher_event.dart';
part 'movie_watcher_state.dart';

part 'movie_watcher_bloc.freezed.dart';

@injectable
class MovieWatcherBloc extends Bloc<MovieWatcherEvent, MovieWatcherState> {
  final IMovieRepository _movieRepository;

  MovieWatcherBloc(this._movieRepository): super(const MovieWatcherState.initial());

  StreamSubscription<Either<MovieFailure, KtList<Movie>>> _movieStreamSubscription;

  @override
  Stream<MovieWatcherState> mapEventToState(MovieWatcherEvent event,) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const MovieWatcherState.loadInProgress();
        await _movieStreamSubscription?.cancel();
        _movieStreamSubscription = _movieRepository.watchAllMovies().listen((movies) => add(MovieWatcherEvent.movieReceived(movies)));
      },
      watchUncompletedStarted: (e) async* {
        yield const MovieWatcherState.loadInProgress();
        await _movieStreamSubscription?.cancel();
        _movieStreamSubscription = _movieRepository.watchFavoriteMovies().listen((movies) => add(MovieWatcherEvent.movieReceived(movies)));
      },
      movieReceived: (e) async* {
        yield e.failureOrMovie.fold(
          (f) => MovieWatcherState.loadFailure(f),
          (notes) => MovieWatcherState.loadSuccess(notes),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _movieStreamSubscription.cancel();
    return super.close();
  }
}
