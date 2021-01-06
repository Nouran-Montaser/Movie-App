import 'package:freezed_annotation/freezed_annotation.dart';

part 'cast.g.dart';

@JsonSerializable()
class Cast {
  @JsonKey(name: 'profile_path')
  String profilePath;
  @JsonKey(name: 'original_name')
  String name;


  Cast({this.profilePath, this.name});

  factory Cast.fromJson(Map<String, dynamic> json) => _$CastFromJson(json);

  Map<String, dynamic> toJson() => _$CastToJson(this);
}