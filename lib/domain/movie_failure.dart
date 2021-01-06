import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
abstract class MovieFailure with _$MovieFailure {
  const factory MovieFailure.invalidApiKey() = InvalidApiKey;
  const factory MovieFailure.resourceNotFound() = ResourceNotFound;
}
