import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/emotions_content_remote_data_source.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart';

class MockEmotionsContentDataSource extends Mock
    implements EmotionsContentRetrofitDataSource {}

void main() {
  late EmotionsContentRepository sut;
  late MockEmotionsContentDataSource dataSource;

  setUp(() {
    dataSource = MockEmotionsContentDataSource();
    sut = EmotionsContentRepository(remoteDataSource: dataSource);
  });

  group('getContentForEmotionId', () {
    test('should call remoteDataSource.getEmotionsContent() method', () async {
      // 1
      when(() => dataSource.getEmotionsContent()).thenAnswer((_) async => []);
      // 2
      await sut.getContentForEmotionId(111);
      // 3
      verify(() => dataSource.getEmotionsContent()).called(1);
    });

    test('should filter data source results with provided emotionId', () async {
      // 1
      when(() => dataSource.getEmotionsContent()).thenAnswer(
        (_) async => [
          EmotionsContentModel(1, 111, 'word1', 'wordTranslation1',
              'exampleOne1', 'exampleTwo1'),
          EmotionsContentModel(2, 333, 'word1', 'wordTranslation2',
              'exampleOne2', 'exampleTwo2'),
          EmotionsContentModel(3, 111, 'word1', 'wordTranslation3',
              'exampleOne3', 'exampleTwo3'),
          EmotionsContentModel(4, 111, 'word1', 'wordTranslation5',
              'exampleOne4', 'exampleTwo4'),
        ],
      );
      // 2
      final results = await sut.getContentForEmotionId(111);
      // 3
      expect(
        results,
        [
          EmotionsContentModel(1, 111, 'word1', 'wordTranslation1',
              'exampleOne1', 'exampleTwo1'),
          EmotionsContentModel(3, 111, 'word1', 'wordTranslation3',
              'exampleOne3', 'exampleTwo3'),
          EmotionsContentModel(4, 111, 'word1', 'wordTranslation5',
              'exampleOne4', 'exampleTwo4'),
        ],
      );
    });
  });
}
