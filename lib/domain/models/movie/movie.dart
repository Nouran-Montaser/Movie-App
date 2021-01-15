import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/genre/genre.dart';
import 'package:movie_app/domain/models/cast/cast.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  @JsonKey(name: 'popularity')
  double popularity;

  @JsonKey(name: 'poster_path')
  String posterPath;

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'backdrop_path')
  String backdropPath;

  @JsonKey(name: 'genre_ids')
  List<int> genreIds;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'overview')
  String overview;

  @JsonKey(name: 'release_date')
  String releaseDate;

  List<Genre> genres = [];

  List<Cast> cast = [];

  bool isFav = false;

  Movie(
      {this.popularity,
      this.posterPath,
      this.id,
      this.backdropPath,
      this.genreIds,
      this.title,
      this.overview,
      this.releaseDate});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);

  Map<String, dynamic> toMap() => {
        "popularity": popularity == null ? null : popularity,
        "poster_path": posterPath == null ? null : posterPath,
        "id": id == null ? null : id,
        "backdrop_path": backdropPath == null ? null : backdropPath,
        "title": title == null ? null : title,
        "overview": overview == null ? null : overview,
        "release_date": releaseDate == null ? null : releaseDate,
      };

  factory Movie.fromDBMap(Map<String, dynamic> json) => Movie(
    popularity: json["popularity"] == null ? null : double.parse(json["popularity"]),
    posterPath: json["poster_path"] == null ? null : json["poster_path"],
    id: json["id"] == null ? null : json["id"],
    backdropPath: json["backdrop_path"] == null ? null : json["backdrop_path"],
    title: json["title"] == null ? null : json["title"],
    overview: json["overview"] == null ? null : json["overview"],
    releaseDate: json["release_date"] == null ? null : json["release_date"],
  );
}
