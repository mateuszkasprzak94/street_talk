import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';
import 'package:street_talk/app/domain/repositories/welcome_goodybe_repository.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/welcome_goodbye_page/cubit/welcome_goodbye_cubit.dart';

class MockWelcomeGoodbyeRepository extends Mock
    implements WelcomeGoodbyeRepository {}

void main() {
  late WelcomeGoodbyeCubit sut;
  late MockWelcomeGoodbyeRepository repository;

  setUp(() {
    repository = MockWelcomeGoodbyeRepository();
    sut = WelcomeGoodbyeCubit(welcomeGoobyeRepository: repository);
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getWelcomeGoodbyeData()).thenAnswer(
          (_) async => [
            WelcomeGoodbyeModel(
              1,
              'title1',
              'exampleOne1',
              'exampleOneTranslation1',
              'exampleTwo1',
              'exampleTwoTranslation1',
              'exampleThree1',
              'exampleThreeTranslation1',
              'exampleFour1',
              'exampleFourTranslation1',
              'exampleFive1',
              'exampleFiveTranslation1',
              'exampleSix1',
              'exampleSixTranslation1',
              'exampleSeven1',
              'exampleSevenTranslation1',
              'exampleEight1',
              'exampleEightTranslation1',
            ),
            WelcomeGoodbyeModel(
              2,
              'title2',
              'exampleOne2',
              'exampleOneTranslation2',
              'exampleTwo2',
              'exampleTwoTranslation2',
              'exampleThree2',
              'exampleThreeTranslation2',
              'exampleFour2',
              'exampleFourTranslation2',
              'exampleFive2',
              'exampleFiveTranslation2',
              'exampleSix2',
              'exampleSixTranslation2',
              'exampleSeven2',
              'exampleSevenTranslation2',
              'exampleEight2',
              'exampleEightTranslation2',
            ),
          ],
        );
      });

      blocTest<WelcomeGoodbyeCubit, WelcomeGoodbyeState>(
        'emit Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          WelcomeGoodbyeState(status: Status.loading),
          WelcomeGoodbyeState(
            status: Status.success,
            results: [
              WelcomeGoodbyeModel(
                1,
                'title1',
                'exampleOne1',
                'exampleOneTranslation1',
                'exampleTwo1',
                'exampleTwoTranslation1',
                'exampleThree1',
                'exampleThreeTranslation1',
                'exampleFour1',
                'exampleFourTranslation1',
                'exampleFive1',
                'exampleFiveTranslation1',
                'exampleSix1',
                'exampleSixTranslation1',
                'exampleSeven1',
                'exampleSevenTranslation1',
                'exampleEight1',
                'exampleEightTranslation1',
              ),
              WelcomeGoodbyeModel(
                2,
                'title2',
                'exampleOne2',
                'exampleOneTranslation2',
                'exampleTwo2',
                'exampleTwoTranslation2',
                'exampleThree2',
                'exampleThreeTranslation2',
                'exampleFour2',
                'exampleFourTranslation2',
                'exampleFive2',
                'exampleFiveTranslation2',
                'exampleSix2',
                'exampleSixTranslation2',
                'exampleSeven2',
                'exampleSevenTranslation2',
                'exampleEight2',
                'exampleEightTranslation2',
              ),
            ],
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getWelcomeGoodbyeData()).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<WelcomeGoodbyeCubit, WelcomeGoodbyeState>(
        'emit Status.loading then Status.error with erro message',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          WelcomeGoodbyeState(status: Status.loading),
          WelcomeGoodbyeState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
