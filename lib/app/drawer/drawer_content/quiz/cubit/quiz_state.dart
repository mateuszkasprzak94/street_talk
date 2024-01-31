part of 'quiz_cubit.dart';

class QuizState {
  QuizState({
    this.quizData = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<QuizQuestionModel> quizData;
  final Status status;
  final String? errorMessage;
}
