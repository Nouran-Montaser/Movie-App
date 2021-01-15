import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:movie_app/application/favorite_movies_watcher/favorite_movies_watcher_bloc.dart';
import 'package:movie_app/application/movie_details_watcher/movie_details_watcher_bloc.dart';
import 'package:movie_app/application/movie_watcher/movie_watcher_bloc.dart';
import 'package:movie_app/domain/models/movie/movie.dart';
import 'package:movie_app/domain/models/cast/cast.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/favorite_fab_view.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_details_widget.dart';

class MoviesDetailsPage extends HookWidget implements AutoRouteWrapper {

  final Movie selectedMovie;
  List<Cast> movieCast;

  MoviesDetailsPage({
    @required this.selectedMovie,
  });

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(
        providers: [
          BlocProvider<MovieDetailsWatcherBloc>(
              create: (context) => getIt<MovieDetailsWatcherBloc>()
                ..add(MovieDetailsWatcherEvent.watchAllStarted(selectedMovie.id)),
          ),
          BlocProvider<FavoriteMoviesWatcherBloc>(
            create: (context) => getIt<FavoriteMoviesWatcherBloc>(),
          )
        ],
        child: this,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  movieDetailsBody(),
        floatingActionButton: FavoriteFab(isFavorite: selectedMovie.isFav,
            favoriteButtonClicked: (bool isFav) {
          performAction(context, isFav);
        }),
      ),
    );
  }

  Widget movieDetailsBody() {
    return BlocBuilder<MovieDetailsWatcherBloc, MovieDetailsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            movieCast = state.cast.cast;
            return MoviesDetailsWidget(selectedMovie: selectedMovie, movieCast: state.cast.cast);
          },
          loadFailure: (state) {
            print(state.movieFailure);
            return Container();
            //TODO add error widget
            // return CriticalFailureDisplay(
            //   failure: state.noteFailure,
            // );
          },
        );
      },
    );
  }

  void performAction(BuildContext context, bool fav) {
    context.bloc<FavoriteMoviesWatcherBloc>().add(
      fav
          ? FavoriteMoviesWatcherEvent.addMovieToDatabase(selectedMovie, movieCast)
          : FavoriteMoviesWatcherEvent.removeMovieFromDatabase(selectedMovie),
    );
  }
}
