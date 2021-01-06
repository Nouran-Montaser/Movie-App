import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/domain/movie/movie.dart';

class MovieHeader extends StatelessWidget {
  final Movie movie;
  final double padding;

  MovieHeader(this.movie, this.padding);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (movie.genres.length > 0) ...[
            const SizedBox(height: 4),
            Wrap(
              spacing: 8,
              children: <Widget>[
                ...movie.genres.map((genre) =>
                    Text(genre.name, style: TextStyle(fontSize: 14, color: Colors.black87, fontWeight: FontWeight.w900))
                ),
              ],
            ),
          ],
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.timer, size: 20.0),
              SizedBox(width: 5.0),
              Text(
                "ReleaseDate:  ",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
              ),
              Text(
                movie.releaseDate,
                style: TextStyle(fontSize: 12, color: Colors.black54, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ],
      ),
    );
  }
}