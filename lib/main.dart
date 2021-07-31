import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:places/blocs/onboarding/onboarding_bloc.dart';
import 'package:places/data/repository/filters_repository.dart';
import 'package:places/data/repository/place_repository.dart';
import 'package:places/data/service/media_picker_service.dart';
import 'package:places/data/storage/app_data_base.dart';
import 'package:places/data/storage/storage.dart';
import 'package:places/dio_client.dart';
import 'package:places/ui/screen/splash_screen.dart';
import 'package:provider/provider.dart';
import 'blocs/place_filters/place_filters_bloc.dart';
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
        Provider<IDataStorage>(
          create: (context) => SharedPreferencesStorage(),
        ),
        Provider<IMediaPickerService>(
          create: (context) => DefaultMediaPickerService(),
        ),
        Provider<AppDataBase>(
          create: (context) => AppDataBase(),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              ThemeSettingsInteractor(context.read<IDataStorage>()),
        ),
        Provider<Dio>(
          create: (_) => Dio(
            options,
          )..interceptors.add(logInterceptor),
        ),
        Provider<IPlaceRepository>(
          create: (context) => DioPlaceRepository(context.read<Dio>()),
        ),
        Provider<IFiltersRepository>(
          create: (context) => FiltersRepository(context.read<IDataStorage>()),
        ),
        Provider<ISearchPlaceInteractor>(
          create: (context) => InMemorySearchPlaceInteractor(
            context.read<IPlaceRepository>(),
            context.read<IFiltersRepository>(),
            context.read<AppDataBase>(),
          ),
        ),
        Provider<IPlaceInteractor>(
          create: (context) => MoorPlaceInteractor(
            context.read<IPlaceRepository>(),
            context.read<AppDataBase>(),
          ),
        ),
        BlocProvider(
          create: (context) =>
              PlaceFiltersBloc(context.read<ISearchPlaceInteractor>())
                ..add(
                  PlaceFiltersEvent.load(),
                ),
        ),
        BlocProvider(
          create: (context) => OnboardingBloc(context.read<IDataStorage>())
            ..add(
              OnboardingEvent.checkOnboarding(),
            ),
        ),
      ],
      child: Consumer<ThemeSettingsInteractor>(
        builder: (context, value, child) {
          return MaterialApp(
            title: 'App title',
            theme: value.currentTheme,
            home: SplashScreen(
              isInitialized: BlocProvider.of<PlaceFiltersBloc>(context)
                  .stream
                  .firstWhere((_state) {
                return _state.filter != null;
              }),
            ),
          );
        },
      ),
    );
  }
}
