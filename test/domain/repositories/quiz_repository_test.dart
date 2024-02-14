import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:street_talk/app/data/remote_data_sources/quiz_remote_data_source.dart';
import 'package:street_talk/app/domain/models/quiz_model.dart';
import 'package:street_talk/app/domain/repositories/quiz_repository.dart';

class MockQuizQuestionDataSource extends Mock
    implements QuizQuestionRetrofitDataSource {}

void main() {
  late QuizRepository sut;
  late MockQuizQuestionDataSource dataSource;

  setUp(() {
    dataSource = MockQuizQuestionDataSource();
    sut = QuizRepository(remoteDataSource: dataSource);
  });

  group('getQuizData', () {
    test('should call remoteDataSource.getQuizContent() method', () async {
      // 1
      when(() => dataSource.getQuizContent()).thenAnswer((_) async => []);
      // 2
      await sut.getQuizData('category1');
      // 3
      verify(() => dataSource.getQuizContent()).called(1);
    });

    test('should filter data source results with provided category', () async {
      // 1
      when(() => dataSource.getQuizContent()).thenAnswer(
        (_) async => [
          QuizQuestionModel(
            'category',
            '1',
            'question1',
            ['incorrectAnswer1', 'incorrectAnswer1', 'incorrectAnswer1'],
            'correctAnswer1',
          ),
          QuizQuestionModel(
            'category',
            '2',
            'question2',
            ['incorrectAnswer2', 'incorrectAnswer2', 'incorrectAnswer2'],
            'correctAnswer',
          ),
          QuizQuestionModel(
            'category',
            '3',
            'question3',
            ['incorrectAnswer3', 'incorrectAnswer3', 'incorrectAnswer3'],
            'correctAnswer3',
          ),
        ],
      );
      // 2
      final results = await sut.getQuizData('category');
      // 3
      expect(
        results,
        [
          QuizQuestionModel(
            'category',
            '1',
            'question1',
            ['incorrectAnswer1', 'incorrectAnswer1', 'incorrectAnswer1'],
            'correctAnswer1',
          ),
          QuizQuestionModel(
            'category',
            '2',
            'question2',
            ['incorrectAnswer2', 'incorrectAnswer2', 'incorrectAnswer2'],
            'correctAnswer',
          ),
          QuizQuestionModel(
            'category',
            '3',
            'question3',
            ['incorrectAnswer3', 'incorrectAnswer3', 'incorrectAnswer3'],
            'correctAnswer3',
          ),
        ],
      );
    });
  });
}
