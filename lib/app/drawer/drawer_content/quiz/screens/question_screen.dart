import 'package:auto_size_text/auto_size_text.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/domain/models/quiz_card_details_model.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/cubit/quiz_cubit.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/screens/score_screen.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/quiz/custom_close_button.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({required this.categoryIndex, super.key});

  final int categoryIndex;

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  final CountDownController _controller = CountDownController();

  bool isAbsorbing = false;

  int questionNumber = 0;

  final int timerDuration = 15;
  List<Color> optionColor = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white
  ];

  List<String> shuffledOptions = [];

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isAbsorbing,
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 60, bottom: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: quizCardDetailList[widget.categoryIndex].gradientsColor,
          ),
        ),
        child: BlocProvider<QuizCubit>(
          create: (context) => getIt()
            ..startQuiz(
                category: quizCardDetailList[widget.categoryIndex].category),
          child: BlocBuilder<QuizCubit, QuizState>(
            builder: (context, state) {
              final model = state.quizData;
              final quizCubit = context.read<QuizCubit>();
              switch (state.status) {
                case Status.initial:
                  return const Center(
                    child: Text('Initial state'),
                  );
                case Status.loading:
                  return Center(
                    child: LoadingAnimationWidget.fourRotatingDots(
                      color: Colors.white,
                      size: 50,
                    ),
                  );
                case Status.success:
                  if (model.isEmpty) {
                    return const Center(
                      child: Text('No data found'),
                    );
                  }

                  List<Widget> buildOptions(int i) {
                    if (shuffledOptions.isEmpty) {
                      shuffledOptions = quizCubit.getShuffledOptions(model[i]);
                    }

                    int correctIndex =
                        shuffledOptions.indexOf(model[i].correctAnswer);

                    List<Widget> allOptions = [];

                    for (int j = 0; j < shuffledOptions.length; j++) {
                      allOptions.add(OptionWidget(
                        widget: widget,
                        option: shuffledOptions[j],
                        optionColor: optionColor[j],
                        onTap: () async {
                          _controller.pause();
                          if (shuffledOptions[j] == model[i].correctAnswer) {
                            setState(() {
                              optionColor[j] = Colors.green;
                              isAbsorbing = true;
                            });
                            quizCubit.increaseScore();
                          } else {
                            setState(() {
                              optionColor[j] = Colors.red;
                              optionColor[correctIndex] = Colors.green;
                              isAbsorbing = true;
                            });
                          }

                          await Future.delayed(
                              const Duration(seconds: 1), () {});

                          // Reset all options to white
                          setState(() {
                            optionColor = List.filled(4, Colors.white);
                          });

                          _controller.reset();
                          // Reset shuffledOptions for the next question
                          shuffledOptions = [];
                          setState(() {
                            isAbsorbing =
                                false; // Reset isAbsorbing after resetting controller
                          });
                        },
                      ));
                    }
                    return allOptions;
                  }

                  return Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomCloseButton(),
                            CircularCountDownTimer(
                              width: 55,
                              height: 55,
                              duration: timerDuration,
                              fillColor: kRedColor.withOpacity(0.7),
                              ringColor: Colors.white,
                              textStyle: const TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              autoStart: true,
                              isReverse: true,
                              controller: _controller,
                              onComplete: () {
                                if (questionNumber < 9) {
                                  setState(() {
                                    questionNumber++;
                                  });
                                  _controller.restart();
                                } else {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ScoreScreen(
                                        score: quizCubit.getScore(),
                                        index: widget.categoryIndex,
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                            const CircleAvatar(
                              radius: 20,
                              foregroundImage:
                                  AssetImage('assets/images/logo.jpg'),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 210,
                          width: 310,
                          child: Image.asset(
                            quizCardDetailList[widget.categoryIndex].iconName,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Question ${(questionNumber + 1).toString()} of 10',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.75),
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 120,
                          child: AutoSizeText(
                            model[questionNumber].question,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        ...buildOptions(questionNumber),
                      ],
                    ),
                  );
                case Status.error:
                  return Center(
                    child: Text(
                      state.errorMessage ?? 'Unknown error',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  );
              }
            },
          ),
        ),
      ),
    );
  }
}

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    Key? key,
    required this.widget,
    required this.option,
    required this.onTap,
    required this.optionColor,
  }) : super(key: key);

  final QuizQuestionScreen widget;
  final String option;
  final VoidCallback onTap;
  final Color optionColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuizCubit, QuizState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              alignment: Alignment.center,
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: optionColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(1, 3),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Text(
                option,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: quizCardDetailList[widget.categoryIndex].textColor,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
