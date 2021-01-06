// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/genre_watcher/genre_watcher_bloc.dart';
import 'domain/i_movie_repository.dart';
import 'inferastructure/movie_repository.dart';
import 'application/movie_watcher/movie_watcher_bloc.dart';

/// Environment names
const _prod = 'prod';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<IMovieRepository>(() => MovieRepository(),
      registerFor: {_prod});
  gh.factory<MovieWatcherBloc>(() => MovieWatcherBloc(get<IMovieRepository>()));
  gh.factory<GenreWatcherBloc>(() => GenreWatcherBloc(get<IMovieRepository>()));
  return get;
}
