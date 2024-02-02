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
                      if (userAnswers.every((answer) => answer != null)) {
                        // Set showResults to true only when all questions are answered
                        setState(() {
                          showResults = true;
                        });

                        // Show results
                        checkAnswersAndShowResult();
                      } else {
                        // If not all questions are answered, show a message
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
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'Wynik: ${userAnswers.asMap().entries.where((entry) => entry.value == questions[entry.key].correctAnswerIndex).length}/${questions.length}',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Odpowiedzi:',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('1. ni fu ni fa'),
                            SizedBox(height: 5),
                            Text('2. metió la pata'),
                            SizedBox(height: 5),
                            Text('3. tirarse del barco'),
                            SizedBox(height: 5),
                            Text('4. cagado '),
                            SizedBox(height: 5),
                            Text('5. La verdad sea dicha'),
                            SizedBox(height: 5),
                            Text('6. tirarle los trastos'),
                            SizedBox(height: 5),
                            Text('7. no le hizo caso'),
                            SizedBox(height: 5),
                            Text('8. echarle la bronca'),
                            SizedBox(height: 5),
                            Text('9. hacerle frente a la situación '),
                          ],
                        ),
                      ],
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
    }
  }
}
