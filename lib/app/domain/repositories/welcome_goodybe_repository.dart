import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';

class WelcomeGoodbyeRepository {
  WelcomeGoodbyeRepository({required this.welcomeGoodbyeDataSource});

  final WelcomeGoodbyeRetrofitDataSource welcomeGoodbyeDataSource;

  Future<List<WelcomeGoodbyeModel>> getWelcomeGoodbyeData() async {
    return await welcomeGoodbyeDataSource.getWelcomeGoodbyeData();
  }
}
