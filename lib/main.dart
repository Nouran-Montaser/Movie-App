import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}