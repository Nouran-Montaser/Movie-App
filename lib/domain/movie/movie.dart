import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/genre/genre.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  double popularity;
  @JsonKey(name: 'vote_count')
  int voteCount;
  @JsonKey(name: 'video')
  bool video;
  @JsonKey(name: 'poster_path')
  String posterPath;
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'adult')
  bool adult;
  @JsonKey(name: 'backdrop_path')
  String backdropPath;
  @JsonKey(name: 'original_language')
  String originalLanguage;
  @JsonKey(name: 'original_title')
  String originalTitle;
  @JsonKey(name: 'genre_ids')
  List<int> genreIds;
  @JsonKey(name: 'title')
  String title;
  @JsonKey(name: 'vote_average')
  double voteAverage;
  @JsonKey(name: 'overview')
  String overview;
  @JsonKey(name: 'release_date')
  String releaseDate;

  List<Genre> genres = [];
  List<String> cast = [];

  Movie(
      {this.popularity,
      this.voteCount,
      this.video,
      this.posterPath,
      this.id,
      this.adult,
      this.backdropPath,
      this.originalLanguage,
      this.originalTitle,
      this.genreIds,
      this.title,
      this.voteAverage,
      this.overview,
      this.releaseDate,
      this.genres});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
