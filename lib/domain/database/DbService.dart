import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/domain/models/genre/genre.dart';
import 'package:movie_app/domain/models/cast/cast.dart';
import 'package:movie_app/domain/models/movie/movie.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class DbService {
  static const _MOVIE_TABLE = "movies";
  static const _ACTORS_TABLE = 'actors';
  static const _GENRES_TABLE = 'genres';

  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/sql_commands.txt');
  }

  Future<Database> _createDB() async {
    var path = await getDatabasesPath();
    var text = await _loadAsset();
    var db = await openDatabase(
      // Set the path to the database.

      join(path, 'Movie.db'),
      // When the database is first created, create a table to store dogs.
      onCreate: (db, version) {
        var arr = text.split('#');
        // Run the CREATE TABLE statement on the database.
        for (var o in arr) {
          db.execute(o.trim());
        }
      },
      // Set the version. This executes the onCreate function and provides a
      // path to perform database upgrades and downgrades.
      version: 1,
    );
    return db;
  }

  Future<void> insertMovie(Movie movie, List<Cast> movieCast) async {
    // Get a reference to the database.
    final Database db = await _createDB();
    for (final cast in movieCast) {
      cast.movieId = movie.id;
      await db.insert(
        _ACTORS_TABLE,
        cast.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    for (final genre in movie.genres) {
      genre.movieId = movie.id;
      await db.insert(
        _GENRES_TABLE,
        genre.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }

    return await db.insert(
      _MOVIE_TABLE,
      movie.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Set<int>> getMoviesID() async {
    var db = await _createDB();
    List<Map<String, dynamic>> maps =
        await db.query( _MOVIE_TABLE, columns: ['id']);
    var s = List.generate(maps.length, (i) => maps[i]['id'] as int);
    return Set.from(s);
  }

  Future<Movie> getMovieDetails(int movieID) async {
    var db = await _createDB();
    List<Map<String, dynamic>> movieResult =
        await db.query(_MOVIE_TABLE, where: 'id=?', whereArgs: [movieID]);

    List<Map<String, dynamic>> genresResult = await db
        .query(_GENRES_TABLE, where: 'movieId=?', whereArgs: [movieID]);

    List<Map<String, dynamic>> actorsResult =
        await db.query(_ACTORS_TABLE, where: 'movieId=?', whereArgs: [movieID]);

    Movie movie = Movie.fromDBMap(movieResult[0]);

    List<Genre> genres = List.generate(
        genresResult.length, (i) => Genre.fromJson(genresResult[i]));

    List<Cast> actors = List.generate(actorsResult.length, (i) => Cast.fromJson(actorsResult[i]));
    movie.cast = actors;
    movie.genres = genres;
    movie.isFav = true;
    return movie;
  }

  Future<int> deleteMovie(int movieID) async {
    var db = await _createDB();
    await db.delete(_ACTORS_TABLE, where: 'movieId=?', whereArgs: [movieID]);
    await db.delete(_GENRES_TABLE, where: 'movieId=?', whereArgs: [movieID]);
    return db.delete(_MOVIE_TABLE, where: 'id=?', whereArgs: [movieID]);
  }

  Future<int> clearFavorite() async {
    var db = await _createDB();
     await db.delete(_ACTORS_TABLE);
    await db.delete(_GENRES_TABLE);
    return db.delete(_MOVIE_TABLE);
  }

  Future<List<Movie>> getMovies() async {
    Set<int> moviesIDs = await getMoviesID();
    List<Movie> movies = [];
    for (var o in moviesIDs) {
      Movie movie = await getMovieDetails(o);
      movies.add(movie);
    }
    return movies;
  }
}
