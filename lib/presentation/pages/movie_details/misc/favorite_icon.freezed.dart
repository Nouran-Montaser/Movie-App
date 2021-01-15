// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'favorite_icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoriteIconTearOff {
  const _$FavoriteIconTearOff();

// ignore: unused_element
  _FavoriteIcon call({bool toggle, Icon icon}) {
    return _FavoriteIcon(
      toggle: toggle,
      icon: icon,
    );
  }
}

// ignore: unused_element
const $FavoriteIcon = _$FavoriteIconTearOff();

mixin _$FavoriteIcon {
  bool get toggle;
  Icon get icon;

  $FavoriteIconCopyWith<FavoriteIcon> get copyWith;
}

abstract class $FavoriteIconCopyWith<$Res> {
  factory $FavoriteIconCopyWith(
          FavoriteIcon value, $Res Function(FavoriteIcon) then) =
      _$FavoriteIconCopyWithImpl<$Res>;
  $Res call({bool toggle, Icon icon});
}

class _$FavoriteIconCopyWithImpl<$Res> implements $FavoriteIconCopyWith<$Res> {
  _$FavoriteIconCopyWithImpl(this._value, this._then);

  final FavoriteIcon _value;
  // ignore: unused_field
  final $Res Function(FavoriteIcon) _then;

  @override
  $Res call({
    Object toggle = freezed,
    Object icon = freezed,
  }) {
    return _then(_value.copyWith(
      toggle: toggle == freezed ? _value.toggle : toggle as bool,
      icon: icon == freezed ? _value.icon : icon as Icon,
    ));
  }
}

abstract class _$FavoriteIconCopyWith<$Res>
    implements $FavoriteIconCopyWith<$Res> {
  factory _$FavoriteIconCopyWith(
          _FavoriteIcon value, $Res Function(_FavoriteIcon) then) =
      __$FavoriteIconCopyWithImpl<$Res>;
  @override
  $Res call({bool toggle, Icon icon});
}

class __$FavoriteIconCopyWithImpl<$Res> extends _$FavoriteIconCopyWithImpl<$Res>
    implements _$FavoriteIconCopyWith<$Res> {
  __$FavoriteIconCopyWithImpl(
      _FavoriteIcon _value, $Res Function(_FavoriteIcon) _then)
      : super(_value, (v) => _then(v as _FavoriteIcon));

  @override
  _FavoriteIcon get _value => super._value as _FavoriteIcon;

  @override
  $Res call({
    Object toggle = freezed,
    Object icon = freezed,
  }) {
    return _then(_FavoriteIcon(
      toggle: toggle == freezed ? _value.toggle : toggle as bool,
      icon: icon == freezed ? _value.icon : icon as Icon,
    ));
  }
}

class _$_FavoriteIcon with DiagnosticableTreeMixin implements _FavoriteIcon {
  const _$_FavoriteIcon({this.toggle, this.icon});

  @override
  final bool toggle;
  @override
  final Icon icon;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoriteIcon(toggle: $toggle, icon: $icon)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoriteIcon'))
      ..add(DiagnosticsProperty('toggle', toggle))
      ..add(DiagnosticsProperty('icon', icon));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FavoriteIcon &&
            (identical(other.toggle, toggle) ||
                const DeepCollectionEquality().equals(other.toggle, toggle)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(toggle) ^
      const DeepCollectionEquality().hash(icon);

  @override
  _$FavoriteIconCopyWith<_FavoriteIcon> get copyWith =>
      __$FavoriteIconCopyWithImpl<_FavoriteIcon>(this, _$identity);
}

abstract class _FavoriteIcon implements FavoriteIcon {
  const factory _FavoriteIcon({bool toggle, Icon icon}) = _$_FavoriteIcon;

  @override
  bool get toggle;
  @override
  Icon get icon;
  @override
  _$FavoriteIconCopyWith<_FavoriteIcon> get copyWith;
}
