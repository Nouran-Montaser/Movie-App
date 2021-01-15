import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/movie/movie.dart';

part 'movie_response.g.dart';

@JsonSerializable()
class MovieResponse {
  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'results')
  List<Movie>  results;

  @JsonKey(name: 'total_pages')
  int totalPages;

  @JsonKey(name: 'total_results')
  int totalResults;

  MovieResponse({this.page, this.results, this.totalPages,
      this.totalResults});

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseToJson(this);
}