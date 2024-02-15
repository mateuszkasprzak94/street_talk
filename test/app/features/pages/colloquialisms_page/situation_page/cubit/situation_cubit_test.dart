import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';
import 'package:street_talk/app/domain/repositories/situations_reposiotry.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/situation_page/cubit/situation_cubit.dart';

class MockSituationRepository extends Mock implements SituationRepository {}

void main() {
  late SituationCubit sut;
  late MockSituationRepository repository;

  setUp(() {
    repository = MockSituationRepository();
    sut = SituationCubit(situationRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getSituationData()).thenAnswer(
          (_) async => [
            SituationModel(
                1, 'word1', 'wordTranslation1', 'exampleOne1', 'exampleTwo1'),
            SituationModel(
                2, 'word2', 'wordTranslation2', 'exampleOne2', 'exampleTwo2'),
            SituationModel(
                3, 'word3', 'wordTranslation3', 'exampleOne3', 'exampleTwo3'),
          ],
        );
      });

      blocTest<SituationCubit, SituationState>(
        'emit Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          SituationState(status: Status.loading),
          SituationState(
            status: Status.success,
            results: [
              SituationModel(
                  1, 'word1', 'wordTranslation1', 'exampleOne1', 'exampleTwo1'),
              SituationModel(
                  2, 'word2', 'wordTranslation2', 'exampleOne2', 'exampleTwo2'),
              SituationModel(
                  3, 'word3', 'wordTranslation3', 'exampleOne3', 'exampleTwo3'),
            ],
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getSituationData()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<SituationCubit, SituationState>(
        'emit Status.loading then Status.error with erro message',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          SituationState(status: Status.loading),
          SituationState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
