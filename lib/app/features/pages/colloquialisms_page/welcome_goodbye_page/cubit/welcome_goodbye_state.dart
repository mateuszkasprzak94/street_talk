part of 'welcome_goodbye_cubit.dart';

@freezed
class WelcomeGoodbyeState with _$WelcomeGoodbyeState {
  factory WelcomeGoodbyeState({
    @Default([]) List<WelcomeGoodbyeModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _WelcomeGoodbyeState;
}
