import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/database/DbService.dart';
import 'package:movie_app/domain/models/cast/cast_response.dart';
import 'package:movie_app/domain/models/genre/genre_result.dart';
import 'package:movie_app/domain/i_movie_repository.dart';
import 'package:movie_app/domain/models/movie/movie.dart';
import 'package:kt_dart/collection.dart';
import 'package:movie_app/inferastructure/movie_remote_service.dart';
import 'package:movie_app/domain/failure.dart';

@prod
@LazySingleton(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final MovieRemoteService _movieRemoteService = MovieRemoteService.create();
  final DbService _dbService ;

  GenreResult _movieGenres;

  MovieRepository(this._dbService);


  //TODO handel errors
  @override
  Stream<Either<Failure, KtList<Movie>>> watchAllMovies() async* {
    final movies = await _movieRemoteService.watchAllMovies();
    final favoriteMoviesIds = await _dbService.getMoviesID();
    List<Movie> allMovies = movies.body.results;
    for(Movie movie in allMovies) {
      for(int id in favoriteMoviesIds) {
        if(movie.id == id) {
          movie.isFav = true;
          break;
        }
      }
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
  Stream<Either<Failure, KtList<Movie>>> watchFavoriteMovies() async* {
    var movies = await _dbService.getMovies();
    yield right<Failure, KtList<Movie>>(movies.toImmutableList());
  }

  @override
  Stream<Either<Failure, CastResponse>> getMovieCast(int movieId) async* {
    final movieCast = await _movieRemoteService.getMovieCast(movieId);
    yield right<Failure, CastResponse>(movieCast.body);
  }
}
