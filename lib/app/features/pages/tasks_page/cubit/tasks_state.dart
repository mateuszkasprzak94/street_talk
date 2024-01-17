part of 'tasks_cubit.dart';

class TasksState {
  TasksState({
    this.controllerTaskPage,
    this.status = Status.initial,
    this.errorMessage,
    this.exerciseQuestion = const [],
  });

  final PageController? controllerTaskPage;
  final Status status;
  final String? errorMessage;
  final List<ExerciseQuestionModel> exerciseQuestion;
}
