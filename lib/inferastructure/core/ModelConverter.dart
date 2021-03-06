import 'dart:convert';
import 'package:chopper/chopper.dart';
import 'package:movie_app/domain/models/genre/genre_result.dart';
import 'package:movie_app/domain/models/movie/movie_response.dart';
import 'package:movie_app/domain/models/cast/cast_response.dart';

class ModelConverter implements Converter {
  @override
  Request convertRequest(Request request) {
    final req = applyHeader(
      request,
      contentTypeKey,
      jsonHeaders,
      override: false,
    );

    return encodeJson(req);
  }

  Request encodeJson(Request request) {
    var contentType = request.headers[contentTypeKey];
    if (contentType != null && contentType.contains(jsonHeaders)) {
      return request.copyWith(body: json.encode(request.body));
    }
    return request;
  }

  Response decodeJson<BodyType, InnerType>(Response response) {
    var contentType = response.headers[contentTypeKey];
    var body = response.body;
    if (contentType != null && contentType.contains(jsonHeaders)) {
      body = utf8.decode(response.bodyBytes);
    }
    try {
      var mapData = json.decode(body);
      var jsonData;
      if (MovieResponse.fromJson(mapData).results != null)
        jsonData = MovieResponse.fromJson(mapData);
      else if (GenreResult.fromJson(mapData).genres != null)
        jsonData = GenreResult.fromJson(mapData);
      else
        jsonData = CastResponse.fromJson(mapData);
      return response.copyWith<BodyType>(body: jsonData as BodyType);
    } catch (e) {
      chopperLogger.warning(e);
      return response.copyWith<BodyType>(body: body);
    }
  }

  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    return decodeJson<BodyType, InnerType>(response);
  }
}
