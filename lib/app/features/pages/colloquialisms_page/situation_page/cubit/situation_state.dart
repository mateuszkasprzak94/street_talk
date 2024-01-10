part of 'situation_cubit.dart';

class SituationState {
  SituationState({
    this.results = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<SituationModel> results;
  final Status status;
  final String? errorMessage;
}
