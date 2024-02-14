part of 'quiz_cubit.dart';

@freezed
class QuizState with _$QuizState {
  factory QuizState({
    @Default([]) List<QuizQuestionModel> quizData,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _QuizState;
}
