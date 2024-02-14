import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';

class EmotionsContentRepository {
  EmotionsContentRepository({required this.remoteDataSource});

  final EmotionsContentRetrofitDataSource remoteDataSource;

  Future<List<EmotionsContentModel>> getContentForEmotionId(
      int emotionId) async {
    final allEmotions = await remoteDataSource.getEmotionsContent();

    return allEmotions
        .where((emotion) => emotion.emotionId == emotionId)
        .toList();
  }
}
