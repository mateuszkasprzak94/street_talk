import 'package:bloc/bloc.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/quiz_model.dart';
import 'package:street_talk/app/domain/repositories/quiz_repository.dart';

part 'quiz_state.dart';

class QuizCubit extends Cubit<QuizState> {
  QuizCubit({required this.quizRepository}) : super(QuizState());

  final QuizRepository quizRepository;

  Future<void> startQuiz({required String category}) async {
    emit(
      QuizState(
        status: Status.loading,
      ),
    );
    try {
      final quizData = await quizRepository.getQuizData(category);

      quizData.shuffle();

      emit(
        QuizState(
          status: Status.success,
          quizData: quizData,
        ),
      );
    } catch (error) {
      emit(
        QuizState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  int _score = 0;

  List<String> getShuffledOptions(
    QuizQuestionModel question,
  ) {
    List<String> options = [];
    options.add(question.correctAnswer);
    options.addAll(question.incorrectAnswer);
    options.shuffle();
    return options;
  }

  void increaseScore() {
    _score++;
  }

  int getScore() {
    return _score;
  }
}
