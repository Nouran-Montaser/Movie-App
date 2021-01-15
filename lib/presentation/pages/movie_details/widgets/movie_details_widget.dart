import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/screenutil.dart';
import 'package:movie_app/domain/models/movie/movie.dart';
import 'package:movie_app/inferastructure/core/constants.dart';
import 'package:movie_app/presentation/core/colors.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_stroyline_cast_widget.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_image_view.dart';
import 'package:movie_app/presentation/pages/movie_details/widgets/movie_header_view.dart';
import 'package:movie_app/domain/models/cast/cast.dart';

class MoviesDetailsWidget extends HookWidget {
  final Movie selectedMovie;
  final List<Cast> movieCast;

  MoviesDetailsWidget({
    @required this.selectedMovie,
    @required this.movieCast,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: ClampingScrollPhysics(),
      slivers: <Widget>[
        silverAppBarWidget(),
        SliverList(
          delegate: SliverChildListDelegate(<Widget>[
            MovieStorylineCast(movie: selectedMovie, cast: movieCast),
          ]),
        ),
      ],
    );
  }

  Widget silverAppBarWidget() {
    return SliverAppBar(
      title: Text(selectedMovie.title),
      backgroundColor: PRIMARY_DARK_COLOR,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            MovieImage(IMAGE_URL + selectedMovie.backdropPath, selectedMovie.id),
            MovieHeader(selectedMovie, 25.0),
          ],
        ),
      ),
      expandedHeight: ScreenUtil().setHeight(1250),
      pinned: true,
      floating: true,
      elevation: 2.0,
    );
  }
}