import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_content_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/cubit/emotions_content_cubit.dart';

class MockEmotionsContentRepository extends Mock
    implements EmotionsContentRepository {}

void main() {
  late EmotionsContentCubit sut;
  late MockEmotionsContentRepository repository;

  setUp(() {
    repository = MockEmotionsContentRepository();
    sut = EmotionsContentCubit(emotionsContentRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getContentForEmotionId(111)).thenAnswer(
          (_) async => [
            EmotionsContentModel(1, 111, 'word1', 'wordTranslation1',
                'exampleOne1', 'exampleTwo1'),
            EmotionsContentModel(2, 111, 'word2', 'wordTranslation2',
                'exampleOne2', 'exampleTwo2'),
            EmotionsContentModel(3, 111, 'word3', 'wordTranslation3',
                'exampleOne3', 'exampleTwo3'),
          ],
        );
      });

      blocTest<EmotionsContentCubit, EmotionsContentState>(
        'emit Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.fetchData(emotionId: 111),
        expect: () => [
          EmotionsContentState(
            status: Status.loading,
          ),
          EmotionsContentState(
            status: Status.success,
            results: [
              EmotionsContentModel(1, 111, 'word1', 'wordTranslation1',
                  'exampleOne1', 'exampleTwo1'),
              EmotionsContentModel(2, 111, 'word2', 'wordTranslation2',
                  'exampleOne2', 'exampleTwo2'),
              EmotionsContentModel(3, 111, 'word3', 'wordTranslation3',
                  'exampleOne3', 'exampleTwo3'),
            ],
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getContentForEmotionId(111))
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest<EmotionsContentCubit, EmotionsContentState>(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.fetchData(emotionId: 111),
        expect: () => [
          EmotionsContentState(
            status: Status.loading,
          ),
          EmotionsContentState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
