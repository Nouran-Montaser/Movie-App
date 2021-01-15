// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FailureTearOff {
  const _$FailureTearOff();

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
const $Failure = _$FailureTearOff();

mixin _$Failure {
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

abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

abstract class $InvalidApiKeyCopyWith<$Res> {
  factory $InvalidApiKeyCopyWith(
          InvalidApiKey value, $Res Function(InvalidApiKey) then) =
      _$InvalidApiKeyCopyWithImpl<$Res>;
}

class _$InvalidApiKeyCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
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
    return 'Failure.invalidApiKey()';
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

abstract class InvalidApiKey implements Failure {
  const factory InvalidApiKey() = _$InvalidApiKey;
}

abstract class $ResourceNotFoundCopyWith<$Res> {
  factory $ResourceNotFoundCopyWith(
          ResourceNotFound value, $Res Function(ResourceNotFound) then) =
      _$ResourceNotFoundCopyWithImpl<$Res>;
}

class _$ResourceNotFoundCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
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
    return 'Failure.resourceNotFound()';
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

abstract class ResourceNotFound implements Failure {
  const factory ResourceNotFound() = _$ResourceNotFound;
}
