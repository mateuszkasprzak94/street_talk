import 'package:street_talk/app/data/remote_data_sources/quiz_remote_data_source.dart';

import 'package:street_talk/app/domain/models/quiz_model.dart';

class QuizRepository {
  QuizRepository({required this.remoteDataSource});

  final QuizQuestionRetrofitDataSource remoteDataSource;

  Future<List<QuizQuestionModel>> getQuizData(String category) async {
    final quizCategory = await remoteDataSource.getQuizContent();

    return quizCategory
        .where((element) => element.category == category)
        .toList();
  }
}
