// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/movie/movie.dart';
import '../pages/movie_details/movie_details_page.dart';
import '../pages/movies/movies_overview_page.dart';
import '../pages/splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String moviesOverviewPage = '/movies-overview-page';
  static const String moviesDetailsPage = '/movies-details-page';
  static const all = <String>{
    splashPage,
    moviesOverviewPage,
    moviesDetailsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.moviesOverviewPage, page: MoviesOverviewPage),
    RouteDef(Routes.moviesDetailsPage, page: MoviesDetailsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    MoviesOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => MoviesOverviewPage().wrappedRoute(context),
        settings: data,
      );
    },
    MoviesDetailsPage: (data) {
      final args = data.getArgs<MoviesDetailsPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            MoviesDetailsPage(selectedMovie: args.selectedMovie)
                .wrappedRoute(context),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushMoviesOverviewPage() =>
      push<dynamic>(Routes.moviesOverviewPage);

  Future<dynamic> pushMoviesDetailsPage({
    @required Movie selectedMovie,
  }) =>
      push<dynamic>(
        Routes.moviesDetailsPage,
        arguments: MoviesDetailsPageArguments(selectedMovie: selectedMovie),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// MoviesDetailsPage arguments holder class
class MoviesDetailsPageArguments {
  final Movie selectedMovie;
  MoviesDetailsPageArguments({@required this.selectedMovie});
}
