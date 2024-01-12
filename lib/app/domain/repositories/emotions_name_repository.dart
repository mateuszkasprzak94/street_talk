import 'package:street_talk/app/data/remote_data_sources/emotions_name_remote_data_sorce.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';

class EmotionsNameRepository {
  EmotionsNameRepository({required this.remoteDataSource});

  final EmotionsNameMockedDataSource remoteDataSource;

  Future<List<EmotionsNameModel>> getEmotionsName() async {
    final json = await remoteDataSource.getEmotionsName();
    if (json == null) {
      return [];
    }
    return json.map((item) => EmotionsNameModel.fromJson(item)).toList();
  }
}
