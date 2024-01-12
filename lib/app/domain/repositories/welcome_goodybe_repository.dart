import 'package:injectable/injectable.dart';
import 'package:street_talk/app/data/remote_data_sources/welcome_goodbye_remote_data_source.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';

@injectable
class WelcomeGoodbyeRepository {
  WelcomeGoodbyeRepository({required this.welcomeGoodbyeMockedDataSource});

  final WelcomeGoodbyeMockedDataSource welcomeGoodbyeMockedDataSource;

  Future<List<WelcomeGoodbyeModel>> getWelcomeGoodbyeData() async {
    final json = await welcomeGoodbyeMockedDataSource.getWelcomeGoodbyeData();
    if (json == null) {
      return [];
    }
    return json.map((item) => WelcomeGoodbyeModel.fromJson(item)).toList();
  }
}
