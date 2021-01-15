import 'package:json_annotation/json_annotation.dart';
import 'package:movie_app/domain/models/genre/genre.dart';

part 'genre_result.g.dart';

@JsonSerializable()
class GenreResult {
  @JsonKey(name: 'genres')
  List<Genre> genres;

  GenreResult({this.genres});

  factory GenreResult.fromJson(Map<String, dynamic> json) =>
      _$GenreResultFromJson(json);

  Map<String, dynamic> toJson() => _$GenreResultToJson(this);
}