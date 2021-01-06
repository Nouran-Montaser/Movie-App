import 'package:flutter/cupertino.dart';

class MovieImage extends StatelessWidget {
  final String imageURL;
  final int  movieId;

  MovieImage(this.imageURL, this.movieId);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Hero(
        tag: "movie-$movieId",
        child: Image.network(
          imageURL,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}