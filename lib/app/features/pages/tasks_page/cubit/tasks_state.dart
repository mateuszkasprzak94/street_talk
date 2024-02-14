part of 'tasks_cubit.dart';

@freezed
class TasksState with _$TasksState {
  factory TasksState({
    @Default([]) List<ExerciseQuestionModel> exerciseQuestion,
    PageController? controllerTaskPage,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _TasksState;
}
