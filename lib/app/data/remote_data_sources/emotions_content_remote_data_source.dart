import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';

part 'generated/emotions_content_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class EmotionsContentRetrofitDataSource {
  @factoryMethod
  factory EmotionsContentRetrofitDataSource(Dio dio) =
      _EmotionsContentRetrofitDataSource;

  @GET('/eca52938c03cba140e45')
  Future<List<EmotionsContentModel>> getEmotionsContent();
}
