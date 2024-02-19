part of 'exercise_cubit.dart';

@freezed
class ExerciseState with _$ExerciseState {
  factory ExerciseState({
    PageController? controllerTaskPage,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _ExerciseState;
}
