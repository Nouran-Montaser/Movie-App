import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/application/movie_watcher/movie_watcher_bloc.dart';
import 'package:movie_app/presentation/core/app_localizations.dart';
import 'package:movie_app/presentation/pages/movies/widgets/favorite_switch.dart';
import 'package:movie_app/presentation/pages/movies/widgets/movies_body_widget.dart';
import '../../../injection.dart';

class MoviesOverviewPage extends HookWidget implements AutoRouteWrapper {

  @override
  Widget wrappedRoute(BuildContext context) => BlocProvider<MovieWatcherBloc>(
    create: (context) => getIt<MovieWatcherBloc>()
      ..add(const MovieWatcherEvent.watchAllStarted()),
    child: this,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).translate('Movies')),
        actions: <Widget>[
          FavoriteSwitch(),
        ],
      ),
      body:  MoviesOverviewBody()
    );
  }
}