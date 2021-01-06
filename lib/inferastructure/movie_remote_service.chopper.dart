// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_remote_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MovieRemoteService extends MovieRemoteService {
  _$MovieRemoteService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MovieRemoteService;

  @override
  Future<Response<MovieResponse>> watchAllMovies() {
    final $url = '/movie/now_playing';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<MovieResponse, MovieResponse>($request);
  }

  @override
  Future<Response<GenreResult>> getAllGenre() {
    final $url = '/genre/movie/list';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<GenreResult, GenreResult>($request);
  }
}
