import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/cast/cast_response.dart';
import 'package:movie_app/domain/genre/genre_result.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:kt_dart/collection.dart';
import 'package:movie_app/inferastructure/movie_remote_service.dart';
import '../domain/movie/movie.dart';
import 'package:movie_app/domain/failure.dart';

@prod
@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieRemoteService _movieRemoteService = MovieRemoteService.create();

  GenreResult _movieGenres;

  MovieRepository();


  //TODO handel errors
  @override
  Stream<Either<Failure, KtList<Movie>>> watchAllMovies() async* {
    final movies = await _movieRemoteService.watchAllMovies();
    List<Movie> allMovies = movies.body.results;
    for(Movie movie in allMovies) {
      movie.genres = [];
      for(int genreId in movie.genreIds) {
        movie.genres.add(_movieGenres.genres.firstWhere((genre) => genre.id == genreId));
      }
    }
    yield right<Failure, KtList<Movie>>(allMovies.toImmutableList());
  }

  @override
  Stream<Either<Failure, GenreResult>> getAllGenre() async* {
    final movieGenre = await _movieRemoteService.getAllGenre();
    _movieGenres = movieGenre.body;
    yield right<Failure, GenreResult>(_movieGenres);
  }


  @override
  Stream<Either<Failure, KtList<Movie>>> watchFavoriteMovies() {
    // TODO: implement watchFavoriteMovies
    throw UnimplementedError();
  }

  @override
  Stream<Either<Failure, CastResponse>> getMovieCast(int movieId) async* {
    final movieCast = await _movieRemoteService.getMovieCast(movieId);
    yield right<Failure, CastResponse>(movieCast.body);
  }
}
