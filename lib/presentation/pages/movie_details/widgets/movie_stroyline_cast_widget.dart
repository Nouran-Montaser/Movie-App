import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/domain/models/movie/movie.dart';
import 'package:movie_app/domain/models/cast/cast.dart';
import 'package:movie_app/inferastructure/core/constants.dart';
import 'package:movie_app/presentation/core/app_localizations.dart';

class MovieStorylineCast extends StatelessWidget {
  final Movie movie;
  final List<Cast> cast;

  MovieStorylineCast({this.movie, this.cast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 1000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Text(
                AppLocalizations.of(context).translate("Storyline"),
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10.0),
            Flexible(
              child: Text(
                movie.overview,
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            SizedBox(height: 30.0),
            Flexible(
              child: Text(
                AppLocalizations.of(context).translate("Cast"),
                style: Theme.of(context).textTheme.headline6,
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 10.0),
            if (cast.length > 0) ...[
              const SizedBox(height: 5),
              Flexible(
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10.0,
                  children: <Widget>[
                    ...cast
                        .where((cast) => cast.profilePath != null)
                        .map((cast) => movieCastDisplay(cast.profilePath))
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget movieCastDisplay(String profilePath) {
    return CircleAvatar(
      radius: 30.0,
      backgroundImage: NetworkImage(IMAGE_URL + profilePath),
      backgroundColor: Colors.transparent,
    );
  }
}
