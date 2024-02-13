import 'package:dio/dio.dart';

class QuizQuestionDioDataSource {
  Future<List<Map<String, dynamic>>?> getQuizContent() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.npoint.io/2d6ba7ac1e4da38445a3');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
