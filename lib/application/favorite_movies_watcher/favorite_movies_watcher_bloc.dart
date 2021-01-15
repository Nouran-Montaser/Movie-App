import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/database/DbService.dart';
import 'package:movie_app/domain/models/cast/cast_response.dart';
import 'package:movie_app/domain/models/cast/cast.dart';
import 'package:movie_app/domain/failure.dart';
import 'package:movie_app/domain/models/movie/movie.dart';

part 'favorite_movies_watcher_event.dart';
part 'favorite_movies_watcher_state.dart';
part 'favorite_movies_watcher_bloc.freezed.dart';

@injectable
class FavoriteMoviesWatcherBloc extends Bloc<FavoriteMoviesWatcherEvent, FavoriteMoviesWatcherState> {
  final DbService _dbService;

  FavoriteMoviesWatcherBloc(this._dbService): super(const FavoriteMoviesWatcherState.initial());

  StreamSubscription<Either<Failure, CastResponse>> _castStreamSubscription;

  @override
  Stream<FavoriteMoviesWatcherState> mapEventToState(FavoriteMoviesWatcherEvent event,) async* {
    yield* event.map(
      removeMovieFromDatabase: (e) async* {
        yield const FavoriteMoviesWatcherState.loadInProgress();
        _dbService.deleteMovie(e.movie.id);
        yield const FavoriteMoviesWatcherState.succeeded();
      },
      addMovieToDatabase: (e) async* {
        yield const FavoriteMoviesWatcherState.loadInProgress();
        _dbService.insertMovie(e.movie, e.movieCast);
        yield const FavoriteMoviesWatcherState.succeeded();
        },
    );
  }

  @override
  Future<void> close() async {
    await _castStreamSubscription.cancel();
    return super.close();
  }
}
