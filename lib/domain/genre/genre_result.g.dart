// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenreResult _$GenreResultFromJson(Map<String, dynamic> json) {
  return GenreResult(
    genres: (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Genre.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GenreResultToJson(GenreResult instance) =>
    <String, dynamic>{
      'genres': instance.genres,
    };
