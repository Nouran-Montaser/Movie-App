import 'dart:async';
import 'package:chopper/chopper.dart';

class CustomInterceptor implements RequestInterceptor {
  static const String APK_KEY = "api_key";
  static const String V4_AUTH_PRAM = "77eea4dea8e5a679b4b6d7678585422b";

  @override
  FutureOr<Request> onRequest(Request request) async {
    Request newRequest = request.copyWith(parameters: {APK_KEY: V4_AUTH_PRAM});
    return newRequest;
  }
  
}