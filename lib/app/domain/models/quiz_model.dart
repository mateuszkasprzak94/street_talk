import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_model.freezed.dart';
part 'quiz_model.g.dart';

@freezed
class QuizQuestionModel with _$QuizQuestionModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory QuizQuestionModel(
    String category,
    String id,
    String question,
    List<String> incorrectAnswer,
    String correctAnswer,
  ) = _QuizQuestionModel;

  factory QuizQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuizQuestionModelFromJson(json);
}
