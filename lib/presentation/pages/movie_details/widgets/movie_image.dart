import 'package:flutter/cupertino.dart';

class MovieImage extends StatelessWidget {
  final String imageURL;

  MovieImage(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Image.network(
        imageURL,
        fit: BoxFit.cover,
      ),
    );
  }
}