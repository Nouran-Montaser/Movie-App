import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/cast/cast.dart';

part 'cast_response.g.dart';

@JsonSerializable()
class CastResponse {
  @JsonKey(name: 'id')
  int id;
  @JsonKey(name: 'cast')
  List<Cast> cast;

  CastResponse({this.id, this.cast});

  factory CastResponse.fromJson(Map<String, dynamic> json) => _$CastResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CastResponseToJson(this);
}