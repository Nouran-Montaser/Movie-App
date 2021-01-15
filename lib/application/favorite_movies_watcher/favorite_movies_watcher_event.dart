part of 'favorite_movies_watcher_bloc.dart';

@freezed
abstract class FavoriteMoviesWatcherEvent with _$FavoriteMoviesWatcherEvent {
 const factory FavoriteMoviesWatcherEvent.addMovieToDatabase(Movie movie, List<Cast> movieCast) = _AddMovieToDatabase;
  const factory FavoriteMoviesWatcherEvent.removeMovieFromDatabase(Movie movie) = _RemoveMovieFromDatabase;
}
