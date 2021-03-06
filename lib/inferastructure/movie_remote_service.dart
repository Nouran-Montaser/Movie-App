import 'package:chopper/chopper.dart';
import 'package:movie_app/domain/models/genre/genre_result.dart';
import 'package:movie_app/domain/models/cast/cast_response.dart';
import 'package:movie_app/domain/models/movie/movie_response.dart';
import 'package:movie_app/inferastructure/core/ModelConverter.dart';
import 'package:movie_app/inferastructure/core/custom_interceptor.dart';
import 'core/constants.dart';

part 'movie_remote_service.chopper.dart';

@ChopperApi()
abstract class MovieRemoteService extends ChopperService {
  @Get(path: MOVIES_NOW_PLAYING_PATH)
  Future<Response<MovieResponse>> watchAllMovies();

  @Get(path: MOVIE_GENRE_PATH)
  Future<Response<GenreResult>> getAllGenre();

  @Get(path: MOVIE_CAST_PATH)
  Future<Response<CastResponse>> getMovieCast(@Path('movie_id') int id);

  static MovieRemoteService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$MovieRemoteService()],
        converter: ModelConverter(),
        errorConverter: JsonConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
          CustomInterceptor()
          // MobileDataInterceptor()
        ]);
    return _$MovieRemoteService(client);
  }
}