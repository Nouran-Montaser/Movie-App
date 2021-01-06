import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/domain/movie/movie.dart';
import 'package:movie_app/inferastructure/core/constants.dart';
import 'package:movie_app/presentation/routes/router.gr.dart';
import 'package:uuid/uuid.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "movie-${movie.id}",
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(6),
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        color: Colors.white60,
        child: InkWell(
          onTap: () {
            ExtendedNavigator.of(context).push(Routes.moviesDetailsPage,
                arguments: MoviesDetailsPageArguments(selectedMovie: movie));
          },
          child: GridTile(
            footer: Container(
              color: Colors.white60,
              child: ListTile(
                leading: Text(
                  movie.title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
              ),
            ),
            child:
                Image.network(IMAGE_URL + movie.posterPath, fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
