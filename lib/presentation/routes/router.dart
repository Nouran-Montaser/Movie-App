import 'package:auto_route/auto_route_annotations.dart';
import 'package:movie_app/presentation/pages/movie_details/movie_details_page.dart';
import 'package:movie_app/presentation/pages/movies/movies_overview_page.dart';
import 'package:movie_app/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter(
    generateNavigationHelperExtension: true,
    routes: <AutoRoute>[
      MaterialRoute(page: SplashPage, initial: true),
      MaterialRoute(page: MoviesOverviewPage),
      MaterialRoute(page: MoviesDetailsPage),
    ])
class $Router {}
