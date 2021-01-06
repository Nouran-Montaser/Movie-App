import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_icon.freezed.dart';

@freezed
abstract class FavoriteIcon with _$FavoriteIcon {
  const factory FavoriteIcon({bool toggle, Icon icon}) = _FavoriteIcon;
}
