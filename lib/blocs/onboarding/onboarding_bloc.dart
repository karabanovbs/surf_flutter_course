import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:places/data/storage/storage.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

export 'onboarding_event.dart';
export 'onboarding_state.dart';

final _isFirstTime = 'isFirstTime';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final IDataStorage _dataStorage;

  OnboardingBloc(
    this._dataStorage,
  ) : super(OnboardingState.init());

  @override
  Stream<OnboardingState> mapEventToState(
    OnboardingEvent event,
  ) =>
      state.map(
        init: (_) => event.maybeMap(
          checkOnboarding: (value) async* {
            var isFt = await _dataStorage.getBool(_isFirstTime);
            if (isFt == null || isFt == true) {
              yield OnboardingState.needOnboading();
            } else {
              yield OnboardingState.skipOnboading();
            }
          },
          orElse: () => Stream.empty(),
        ),
        needOnboading: (_) => event.maybeMap(
          skip: (value) async* {
            await _dataStorage.setBool(
              _isFirstTime,
              false,
            );
            yield OnboardingState.skipOnboading();
          },
          complete: (value) async* {
            await _dataStorage.setBool(
              _isFirstTime,
              false,
            );
            yield OnboardingState.skipOnboading();
          },
          orElse: () => Stream.empty(),
        ),
        skipOnboading: (_) => event.maybeMap(
          orElse: () => Stream.empty(),
        ),
      );
}
