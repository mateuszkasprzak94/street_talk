import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/exercise_question_model.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview_page_one/tasks_listview_page_one_data.dart';

class TasksOne extends StatefulWidget {
  const TasksOne({
    super.key,
  });

  @override
  State<TasksOne> createState() => _TasksOneState();
}

class _TasksOneState extends State<TasksOne> {
  List<ExerciseQuestionModel> questions = [
    ExerciseQuestionModel(
      text: '1',
      options: ['ni fu ni fa', 'opcja 2', 'opcja 3'],
      correctAnswerIndex: 0,
    ),
    ExerciseQuestionModel(
        text: '2',
        options: ['opcja 1', 'metió la pata', 'opcja 3'],
        correctAnswerIndex: 1),
    ExerciseQuestionModel(
      text: '3',
      options: ['ni fu ni fa', 'opcja 2', 'tirarse del barco'],
      correctAnswerIndex: 2,
    ),
    ExerciseQuestionModel(
        text: '4',
        options: ['ni fu ni fa', 'opcja 2', 'cagado'],
        correctAnswerIndex: 2),
    ExerciseQuestionModel(
        text: '5',
        options: ['La verdad sea dicha', 'opcja 2', 'opcja 3'],
        correctAnswerIndex: 0),
    ExerciseQuestionModel(
        text: '6',
        options: ['La verdad sea dicha', 'tirarle los trastos', 'opcja 3'],
        correctAnswerIndex: 1),
    ExerciseQuestionModel(
        text: '7',
        options: ['La verdad sea dicha', 'no le hizo caso', 'opcja 3'],
        correctAnswerIndex: 1),
    ExerciseQuestionModel(
        text: '8',
        options: ['La verdad sea dicha', 'opcja 2', 'echarle la bronca'],
        correctAnswerIndex: 2),
    ExerciseQuestionModel(
        text: '9',
        options: ['hacerle frente a la situación', 'opcja 2', 'opcja 3'],
        correctAnswerIndex: 0),
  ];

  List<int?> userAnswers = List.filled(9, null);
  bool showResults = false;
  bool allAnswers = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(35),
          width: double.infinity,
          height: 3500,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: kRedColor,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SentenceOne(),
              const SizedBox(height: 20),
              const SentenceTwo(),
              const SizedBox(height: 20),
              const SentenceThree(),
              const SizedBox(height: 20),
              const SentenceFour(),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (int i = 0; i < questions.length; i++)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(questions[i].text),
                        for (int j = 0; j < questions[i].options.length; j++)
                          RadioListTile<int?>(
                            title: Text(questions[i].options[j]),
                            value: j,
                            groupValue: userAnswers[i],
                            onChanged: (value) {
                              setState(() {
                                userAnswers[i] = value;
                              });
                            },
                          ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      {
                        setState(() {
                          showResults = true;
                        });
                        checkAnswersAndShowResult();
                      }
                    },
                    child: Center(
                      child: Container(
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: kRedColor,
                          ),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(4, 8),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              Icons.menu_book_sharp,
                              color: kRedColor,
                              size: 37,
                            ),
                            Text(
                              'Comprobar',
                              style: GoogleFonts.lora(
                                fontSize: 22,
                                color: kRedColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  if (showResults &&
                      userAnswers.every((answer) => answer != null))
                    Center(
                      child: Text(
                        'Wynik: ${userAnswers.asMap().entries.where((entry) => entry.value == questions[entry.key].correctAnswerIndex).length}/${questions.length}',
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                context.read<TasksCubit>().previusPage();
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () {
                context.read<TasksCubit>().nextPage();
              },
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  void checkAnswersAndShowResult() {
    // Analiza i wynik użytkownika
    if (userAnswers.every((answer) => answer != null)) {
      int correctAnswersCount = userAnswers
          .asMap()
          .entries
          .where(
              (entry) => entry.value == questions[entry.key].correctAnswerIndex)
          .length;

      // Komunikat z wynikami
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Wyniki ćwiczeń'),
            content: Text(
              'Poprawne odpowiedzi: $correctAnswersCount/${questions.length}',
              style: const TextStyle(fontSize: 18),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Komunikat, gdy użytkownik nie udzielił wszystkich odpowiedzi
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Uwaga'),
            content: const Text(
                'Musisz udzielić odpowiedzi na wszystkie pytania, aby sprawdzić wyniki.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }
}
