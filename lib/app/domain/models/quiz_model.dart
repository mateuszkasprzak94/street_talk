class QuizQuestionModel {
  final String question;
  final List<String> options;
  final String correctAnswer;

  QuizQuestionModel(
      {required this.question,
      required this.options,
      required this.correctAnswer});
}
