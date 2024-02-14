import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';

part 'generated/welcome_goodbye_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class WelcomeGoodbyeRetrofitDataSource {
  @factoryMethod
  factory WelcomeGoodbyeRetrofitDataSource(Dio dio) =
      _WelcomeGoodbyeRetrofitDataSource;

  @GET('/6ee16762c58cee2b218a')
  Future<List<WelcomeGoodbyeModel>> getWelcomeGoodbyeData();
}