import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/application/genre_watcher/genre_watcher_bloc.dart';
import 'package:movie_app/inferastructure/core/custom_interceptor.dart';
import 'package:movie_app/injection.dart';
import 'package:movie_app/presentation/core/app_localizations.dart';
import 'package:movie_app/presentation/core/colors.dart';
import 'package:movie_app/presentation/routes/router.gr.dart' as r;
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<GenreWatcherBloc>()
            ..add(const GenreWatcherEvent.watchAllStarted()),
        ),
      ],
      child: ScreenUtilInit(
        designSize: Size(2960, 2960),
        allowFontScaling: false,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          builder: ExtendedNavigator(router: r.Router()),
          theme: ThemeData.light().copyWith(
            primaryColor: PRIMARY_COLOR,
            accentColor: ACCENT_COLOR,
            appBarTheme: ThemeData.light().appBarTheme.copyWith(
                brightness: Brightness.dark,
                color: PRIMARY_DARK_COLOR,
                iconTheme: ThemeData.dark().iconTheme),
            inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            ),
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: ACCENT_COLOR,
              foregroundColor: Colors.white,
              elevation: 2.0,
            ),
          ),
          supportedLocales: [Locale('en', 'US'), Locale('ar', 'EG')],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            CustomInterceptor.LANGUAGE = locale.languageCode;
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
        ),
      ),
    );
  }
}
