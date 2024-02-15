import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/street_model.dart';
import 'package:street_talk/app/domain/repositories/street_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/street_page/cubit/street_cubit.dart';

class MockStreetRepository extends Mock implements StreetRepository {}

void main() {
  late StreetCubit sut;
  late MockStreetRepository repository;

  setUp(() {
    repository = MockStreetRepository();
    sut = StreetCubit(streetRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getStreetData()).thenAnswer(
          (_) async => [
            StreetModel(
                1, 'word1', 'wordTranslation1', 'exampleOne1', 'exampleTwo1'),
            StreetModel(
                2, 'word2', 'wordTranslation2', 'exampleOne2', 'exampleTwo2'),
            StreetModel(
                3, 'word3', 'wordTranslation3', 'exampleOne3', 'exampleTwo3'),
          ],
        );
      });

      blocTest<StreetCubit, StreetState>(
        'emit Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          StreetState(status: Status.loading),
          StreetState(
            status: Status.success,
            results: [
              StreetModel(
                  1, 'word1', 'wordTranslation1', 'exampleOne1', 'exampleTwo1'),
              StreetModel(
                  2, 'word2', 'wordTranslation2', 'exampleOne2', 'exampleTwo2'),
              StreetModel(
                  3, 'word3', 'wordTranslation3', 'exampleOne3', 'exampleTwo3'),
            ],
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getStreetData()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<StreetCubit, StreetState>(
        'emit Status.loading then Status.error with erro message',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          StreetState(status: Status.loading),
          StreetState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
