import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:places/data/repository/place_repository.dart';
import 'package:places/dio_client.dart';
import 'package:places/ui/screen/splash_screen.dart';
import 'package:provider/provider.dart';

import 'data/interactor/place_interactor.dart';
import 'data/interactor/search_place_interactor.dart';
import 'data/interactor/theme_interactor.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeSettingsInteractor(),
        ),
        Provider<Dio>(
          create: (_) => Dio(
            options,
          )..interceptors.add(logInterceptor),
        ),
        Provider<IPlaceRepository>(
          create: (context) => DioPlaceRepository(context.read<Dio>()),
        ),
        Provider<ISearchPlaceInteractor>(
          create: (context) => InMemorySearchPlaceInteractor(
              context.read<IPlaceRepository>()),
        ),
        Provider<IPlaceInteractor>(
          create: (context) =>
              InMemoryPlaceInteractor(context.read<IPlaceRepository>()),
        ),
      ],
      child: Consumer<ThemeSettingsInteractor>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'App title',
            theme: value.currentTheme,
            home: SplashScreen(
              isInitialized: Future.delayed(Duration(seconds: 2)),
            ),
          );
        },
      ),
    );
  }
}
