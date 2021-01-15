import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/models/cast/cast_response.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/failure.dart';

part 'movie_details_watcher_event.dart';
part 'movie_details_watcher_state.dart';

part 'movie_details_watcher_bloc.freezed.dart';

@injectable
class MovieDetailsWatcherBloc extends Bloc<MovieDetailsWatcherEvent, MovieDetailsWatcherState> {
  final IMovieRepository _movieRepository;

  MovieDetailsWatcherBloc(this._movieRepository): super(const MovieDetailsWatcherState.initial());

  StreamSubscription<Either<Failure, CastResponse>> _castStreamSubscription;

  @override
  Stream<MovieDetailsWatcherState> mapEventToState(MovieDetailsWatcherEvent event,) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const MovieDetailsWatcherState.loadInProgress();
        await _castStreamSubscription?.cancel();
        _castStreamSubscription = _movieRepository.getMovieCast(e.movieId).listen((cast) => add(MovieDetailsWatcherEvent.genresReceived(cast)));
      },
      genresReceived: (e) async* {
        yield e.failureOrCast.fold(
          (f) => MovieDetailsWatcherState.loadFailure(f),
          (cast) => MovieDetailsWatcherState.loadSuccess(cast),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _castStreamSubscription.cancel();
    return super.close();
  }
}
