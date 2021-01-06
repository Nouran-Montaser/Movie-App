import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:movie_app/domain/genre/genre_result.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:movie_app/domain/cast/cast_response.dart';
import 'package:movie_app/domain/failure.dart';


abstract class IMovieRepository {
  Stream<Either<Failure, KtList<Movie>>> watchAllMovies();
  Stream<Either<Failure, CastResponse>> getMovieCast(int movieId);
  Stream<Either<Failure, GenreResult>> getAllGenre();
  Stream<Either<Failure, KtList<Movie>>> watchFavoriteMovies();
}
