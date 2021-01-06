import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_app/application/movie_watcher/movie_watcher_bloc.dart';
import 'package:movie_app/presentation/pages/movies/widgets/movie_card_widget.dart';

class MoviesOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieWatcherBloc, MovieWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: state.movie.size,
              itemBuilder: (BuildContext context, int index) {
                final movie = state.movie[index];
                return MovieCard(movie: movie);
              },
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, 2),
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            );
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
}
