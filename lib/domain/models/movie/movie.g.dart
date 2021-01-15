// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    popularity: (json['popularity'] as num)?.toDouble(),
    posterPath: json['poster_path'] as String,
    id: json['id'] as int,
    backdropPath: json['backdrop_path'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    title: json['title'] as String,
    overview: json['overview'] as String,
    releaseDate: json['release_date'] as String,
  )
    ..genres = (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..cast = (json['cast'] as List)
        ?.map(
            (e) => e == null ? null : Cast.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'title': instance.title,
      'overview': instance.overview,
      'release_date': instance.releaseDate,
      'genres': instance.genres,
      'cast': instance.cast,
    };
