import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/genre_watcher/genre_watcher_bloc.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';


class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<GenreWatcherBloc, GenreWatcherState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          loadFailure: (LoadFailure value) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("please try again later")),
            );
          },
          loadInProgress: (DataTransferInProgress value) {
            _PageWidget();
          },
          loadSuccess: (LoadSuccess value) {
            ExtendedNavigator.of(context).replace(Routes.moviesOverviewPage);
          },
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
