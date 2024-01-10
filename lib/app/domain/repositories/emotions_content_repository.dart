import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';

class EmotionsContentRepository {
  EmotionsContentRepository({required this.remoteDataSource});

  final EmotionsContentMockedDataSource remoteDataSource;

  Future<List<EmotionsContentModel>> getContentForEmotionId(
      int emotionId) async {
    final json = await remoteDataSource.getEmotionsContent();
    if (json == null) {
      return [];
    }
    return json.map((item) => EmotionsContentModel.fromJson(item)).toList();
  }
}
