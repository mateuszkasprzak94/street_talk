import 'package:injectable/injectable.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';

@injectable
class EmotionsContentRepository {
  EmotionsContentRepository({required this.remoteDataSource});

  final EmotionsContentMockedDataSource remoteDataSource;

  Future<List<EmotionsContentModel>> getContentForEmotionId(
      int emotionId) async {
    final json = await remoteDataSource.getEmotionsContent();
    if (json == null) {
      return [];
    }
    final allEmotions =
        json.map((item) => EmotionsContentModel.fromJson(item)).toList();

    return allEmotions
        .where((emotion) => emotion.emotionId == emotionId)
        .toList();
  }
}
