class ExerciseQuestionModel {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  ExerciseQuestionModel({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
  });
}
