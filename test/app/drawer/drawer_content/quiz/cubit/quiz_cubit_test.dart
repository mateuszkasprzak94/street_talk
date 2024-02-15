import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/quiz_model.dart';
import 'package:street_talk/app/domain/repositories/quiz_repository.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/cubit/quiz_cubit.dart';

class MockQuizRepository extends Mock implements QuizRepository {}

void main() {
  late QuizCubit sut;
  late MockQuizRepository repository;

  setUp(() {
    repository = MockQuizRepository();
    sut = QuizCubit(quizRepository: repository);
  });

  group('startQuiz', () {
    group('success', () {
      setUp(() {
        when(() => repository.getQuizData('category')).thenAnswer(
          (_) async => [
            QuizQuestionModel(
              'category',
              'id1',
              'question1',
              ['incorrectAnswer1', 'incorrectAnswer1', 'incorrectAnswer1'],
              'correctAnswer1',
            ),
          ],
        );
      });

      blocTest<QuizCubit, QuizState>(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.startQuiz(category: 'category'),
        expect: () => [
          QuizState(
            status: Status.loading,
          ),
          QuizState(
            status: Status.success,
            quizData: [
              QuizQuestionModel(
                'category',
                'id1',
                'question1',
                ['incorrectAnswer1', 'incorrectAnswer1', 'incorrectAnswer1'],
                'correctAnswer1',
              ),
            ],
          ),
        ],
      );
    });
    group('failure', () {
      setUp(() {
        when(() => repository.getQuizData('category')).thenThrow(
          Exception('test-exception-error'),
        );
      });

      blocTest<QuizCubit, QuizState>(
        'emits Status.loading then Status.error with error message',
        build: () => sut,
        act: (cubit) => cubit.startQuiz(category: 'category'),
        expect: () => [
          QuizState(
            status: Status.loading,
          ),
          QuizState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error',
          ),
        ],
      );
    });
  });
}
