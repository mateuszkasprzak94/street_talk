import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/emotions_name_model.dart';
import 'package:street_talk/app/domain/repositories/emotions_name_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/cubit/emotions_page_cubit.dart';

class MockEmotionsNameRepository extends Mock
    implements EmotionsNameRepository {}

void main() {
  late EmotionsPageCubit sut;
  late MockEmotionsNameRepository repository;

  setUp(() {
    repository = MockEmotionsNameRepository();
    sut = EmotionsPageCubit(emotionsNameRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getEmotionsName()).thenAnswer(
          (_) async => [
            EmotionsNameModel(1, 'image1', 'emotion1', 'emotionTranslation1'),
            EmotionsNameModel(2, 'image2', 'emotion2', 'emotionTranslation2'),
            EmotionsNameModel(3, 'image3', 'emotion3', 'emotionTranslation3'),
          ],
        );
      });

      blocTest<EmotionsPageCubit, EmotionsPageState>(
        'emit Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          EmotionsPageState(
            status: Status.loading,
          ),
          EmotionsPageState(
            status: Status.success,
            results: [
              EmotionsNameModel(1, 'image1', 'emotion1', 'emotionTranslation1'),
              EmotionsNameModel(2, 'image2', 'emotion2', 'emotionTranslation2'),
              EmotionsNameModel(3, 'image3', 'emotion3', 'emotionTranslation3'),
            ],
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getEmotionsName())
            .thenThrow(Exception('test-exception-error'));
      });

      blocTest<EmotionsPageCubit, EmotionsPageState>(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          EmotionsPageState(
            status: Status.loading,
          ),
          EmotionsPageState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
