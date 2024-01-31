import 'package:street_talk/app/data/remote_data_sources/quiz_remote_data_source.dart';

import 'package:street_talk/app/domain/models/quiz_model.dart';

class QuizRepository {
  QuizRepository({required this.remoteDataSource});

  final QuizQuestionMockedDataSource remoteDataSource;

  Future<List<QuizQuestionModel>> getQuizData(String category) async {
    final json = await remoteDataSource.getQuizContent();
    if (json == null) {
      return [];
    }
    final quizCategory =
        json.map((item) => QuizQuestionModel.fromJson(item)).toList();

    return quizCategory
        .where((element) => element.category == category)
        .toList();
  }
}
