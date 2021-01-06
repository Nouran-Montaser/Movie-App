// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'movie_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MovieFailureTearOff {
  const _$MovieFailureTearOff();

// ignore: unused_element
  InvalidApiKey invalidApiKey() {
    return const InvalidApiKey();
  }

// ignore: unused_element
  ResourceNotFound resourceNotFound() {
    return const ResourceNotFound();
  }
}

// ignore: unused_element
const $MovieFailure = _$MovieFailureTearOff();

mixin _$MovieFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidApiKey(),
    @required Result resourceNotFound(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidApiKey(),
    Result resourceNotFound(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidApiKey(InvalidApiKey value),
    @required Result resourceNotFound(ResourceNotFound value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidApiKey(InvalidApiKey value),
    Result resourceNotFound(ResourceNotFound value),
    @required Result orElse(),
  });
}

abstract class $MovieFailureCopyWith<$Res> {
  factory $MovieFailureCopyWith(
          MovieFailure value, $Res Function(MovieFailure) then) =
      _$MovieFailureCopyWithImpl<$Res>;
}

class _$MovieFailureCopyWithImpl<$Res> implements $MovieFailureCopyWith<$Res> {
  _$MovieFailureCopyWithImpl(this._value, this._then);

  final MovieFailure _value;
  // ignore: unused_field
  final $Res Function(MovieFailure) _then;
}

abstract class $InvalidApiKeyCopyWith<$Res> {
  factory $InvalidApiKeyCopyWith(
          InvalidApiKey value, $Res Function(InvalidApiKey) then) =
      _$InvalidApiKeyCopyWithImpl<$Res>;
}

class _$InvalidApiKeyCopyWithImpl<$Res> extends _$MovieFailureCopyWithImpl<$Res>
    implements $InvalidApiKeyCopyWith<$Res> {
  _$InvalidApiKeyCopyWithImpl(
      InvalidApiKey _value, $Res Function(InvalidApiKey) _then)
      : super(_value, (v) => _then(v as InvalidApiKey));

  @override
  InvalidApiKey get _value => super._value as InvalidApiKey;
}

class _$InvalidApiKey implements InvalidApiKey {
  const _$InvalidApiKey();

  @override
  String toString() {
    return 'MovieFailure.invalidApiKey()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidApiKey);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidApiKey(),
    @required Result resourceNotFound(),
  }) {
    assert(invalidApiKey != null);
    assert(resourceNotFound != null);
    return invalidApiKey();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidApiKey(),
    Result resourceNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidApiKey != null) {
      return invalidApiKey();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidApiKey(InvalidApiKey value),
    @required Result resourceNotFound(ResourceNotFound value),
  }) {
    assert(invalidApiKey != null);
    assert(resourceNotFound != null);
    return invalidApiKey(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidApiKey(InvalidApiKey value),
    Result resourceNotFound(ResourceNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidApiKey != null) {
      return invalidApiKey(this);
    }
    return orElse();
  }
}

abstract class InvalidApiKey implements MovieFailure {
  const factory InvalidApiKey() = _$InvalidApiKey;
}

abstract class $ResourceNotFoundCopyWith<$Res> {
  factory $ResourceNotFoundCopyWith(
          ResourceNotFound value, $Res Function(ResourceNotFound) then) =
      _$ResourceNotFoundCopyWithImpl<$Res>;
}

class _$ResourceNotFoundCopyWithImpl<$Res>
    extends _$MovieFailureCopyWithImpl<$Res>
    implements $ResourceNotFoundCopyWith<$Res> {
  _$ResourceNotFoundCopyWithImpl(
      ResourceNotFound _value, $Res Function(ResourceNotFound) _then)
      : super(_value, (v) => _then(v as ResourceNotFound));

  @override
  ResourceNotFound get _value => super._value as ResourceNotFound;
}

class _$ResourceNotFound implements ResourceNotFound {
  const _$ResourceNotFound();

  @override
  String toString() {
    return 'MovieFailure.resourceNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResourceNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidApiKey(),
    @required Result resourceNotFound(),
  }) {
    assert(invalidApiKey != null);
    assert(resourceNotFound != null);
    return resourceNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidApiKey(),
    Result resourceNotFound(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resourceNotFound != null) {
      return resourceNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidApiKey(InvalidApiKey value),
    @required Result resourceNotFound(ResourceNotFound value),
  }) {
    assert(invalidApiKey != null);
    assert(resourceNotFound != null);
    return resourceNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidApiKey(InvalidApiKey value),
    Result resourceNotFound(ResourceNotFound value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (resourceNotFound != null) {
      return resourceNotFound(this);
    }
    return orElse();
  }
}

abstract class ResourceNotFound implements MovieFailure {
  const factory ResourceNotFound() = _$ResourceNotFound;
}
