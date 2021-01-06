import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:movie_app/domain/genre/genre_result.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:movie_app/domain/movie_failure.dart';


abstract class IMovieRepository {
  Stream<Either<MovieFailure, KtList<Movie>>> watchAllMovies();
  Stream<Either<MovieFailure, GenreResult>> getAllGenre();
  Stream<Either<MovieFailure, KtList<Movie>>> watchFavoriteMovies();
}
