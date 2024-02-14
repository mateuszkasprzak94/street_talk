import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:street_talk/app/domain/models/quiz_model.dart';

part 'generated/quiz_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class QuizQuestionRetrofitDataSource {
  @factoryMethod
  factory QuizQuestionRetrofitDataSource(Dio dio) =
      _QuizQuestionRetrofitDataSource;

  @GET('/2d6ba7ac1e4da38445a3')
  Future<List<QuizQuestionModel>> getQuizContent();
}
