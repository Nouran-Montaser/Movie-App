import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/genre/genre_result.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:kt_dart/collection.dart';
import 'package:movie_app/inferastructure/movie_remote_service.dart';
import '../domain/movie/movie.dart';
import 'package:movie_app/domain/movie_failure.dart';

@prod
@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieRemoteService _movieRemoteService = MovieRemoteService.create();

  GenreResult _movieGenres;

  MovieRepository();


  //TODO handel errors
  @override
  Stream<Either<MovieFailure, KtList<Movie>>> watchAllMovies() async* {
    final movies = await _movieRemoteService.watchAllMovies();
    List<Movie> allMovies = movies.body.results;
    for(Movie movie in allMovies) {
      movie.genres = [];
      for(int genreId in movie.genreIds) {
        movie.genres.add(_movieGenres.genres.firstWhere((genre) => genre.id == genreId));
      }
    }
    yield right<MovieFailure, KtList<Movie>>(allMovies.toImmutableList());
  }

  @override
  Stream<Either<MovieFailure, GenreResult>> getAllGenre() async* {
    final movieGenre = await _movieRemoteService.getAllGenre();
    _movieGenres = movieGenre.body;
    yield right<MovieFailure, GenreResult>(_movieGenres);
  }

  @override
  Stream<Either<MovieFailure, KtList<Movie>>> watchFavoriteMovies() {
    // TODO: implement watchFavoriteMovies
    throw UnimplementedError();
  }
}
