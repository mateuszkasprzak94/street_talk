part of 'welcome_goodbye_cubit.dart';

class WelcomeGoodbyeState {
  WelcomeGoodbyeState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<WelcomeGoodbyeModel> results;
  final Status status;
  final String? errorMessage;
}
