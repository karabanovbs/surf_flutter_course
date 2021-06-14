import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState with _$OnboardingState {
    const factory OnboardingState.init() = _Init;
    const factory OnboardingState.needOnboading() = _NeedOnboading;
    const factory OnboardingState.skipOnboading() = _SkipOnboading;
}

