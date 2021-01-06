// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cast _$CastFromJson(Map<String, dynamic> json) {
  return Cast(
    profilePath: json['profile_path'] as String,
    name: json['original_name'] as String,
  );
}

Map<String, dynamic> _$CastToJson(Cast instance) => <String, dynamic>{
      'profile_path': instance.profilePath,
      'original_name': instance.name,
    };
