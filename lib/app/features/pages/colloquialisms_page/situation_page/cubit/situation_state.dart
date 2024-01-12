part of 'situation_cubit.dart';

@freezed
class SituationState with _$SituationState {
  factory SituationState({
    @Default([]) List<SituationModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SituationState;
}
