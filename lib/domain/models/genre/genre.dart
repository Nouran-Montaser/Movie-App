import 'package:freezed_annotation/freezed_annotation.dart';

part 'genre.g.dart';

@JsonSerializable()
class Genre {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'name')
  String name;
  int movieId;


  Genre({this.id, this.name, this.movieId});
  factory Genre.fromJson(Map<String, dynamic> json) => _$GenreFromJson(json);

  Map<String, dynamic> toJson() => _$GenreToJson(this);
}