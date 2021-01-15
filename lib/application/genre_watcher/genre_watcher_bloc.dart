import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/models/genre/genre_result.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/failure.dart';

part 'genre_watcher_event.dart';
part 'genre_watcher_state.dart';

part 'genre_watcher_bloc.freezed.dart';

@injectable
class GenreWatcherBloc extends Bloc<GenreWatcherEvent, GenreWatcherState> {
  final IMovieRepository _movieRepository;

  GenreWatcherBloc(this._movieRepository): super(const GenreWatcherState.initial());

  StreamSubscription<Either<Failure, GenreResult>> _genreStreamSubscription;

  @override
  Stream<GenreWatcherState> mapEventToState(GenreWatcherEvent event,) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const GenreWatcherState.loadInProgress();
        await _genreStreamSubscription?.cancel();
        _genreStreamSubscription = _movieRepository.getAllGenre().listen((genres) => add(GenreWatcherEvent.genresReceived(genres)));
      },
      genresReceived: (e) async* {
        yield e.failureOrGenre.fold(
          (f) => GenreWatcherState.loadFailure(f),
          (genres) => GenreWatcherState.loadSuccess(genres),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _genreStreamSubscription.cancel();
    return super.close();
  }
}
