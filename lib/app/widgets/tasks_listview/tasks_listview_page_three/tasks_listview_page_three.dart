import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/exercise_question_model.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';

class TasksThree extends StatefulWidget {
  const TasksThree({
    super.key,
  });

  @override
  State<TasksThree> createState() => _TasksThreeState();
}

bool isVisible = false;

class _TasksThreeState extends State<TasksThree> {
  late TextEditingController textController;
  String text = '';

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            width: screenWidth,
            // height: screenHeight * 3,
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
              children: [
                const SizedBox(height: 20),
                ...buildExercise(),
                InkWell(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Center(
                    child: Container(
                      height: 60,
                      width: 300,
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
                            'Pokaż/Schowaj Rozwiązania',
                            style: GoogleFonts.lora(
                                fontSize: 15,
                                color: kRedColor,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
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
      ),
    );
  }
}

class Visible extends StatelessWidget {
  const Visible({
    required this.answer,
    super.key,
  });

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 25,
        child: Text(
          answer,
          style: const TextStyle(
              color: Colors.green, fontStyle: FontStyle.italic, fontSize: 18),
        ),
      ),
    );
  }
}

List<Widget> buildExercise() {
  List<Widget> allExercise = [];

  for (int j = 0; j < exerciseDetails.length; j++) {
    allExercise.add(
      Column(
        children: [
          Row(
            children: [
              Text(
                exerciseDetails[j].id,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              )
            ],
          ),
          exerciseDetails[j].title,
          if (isVisible == true)
            Visible(answer: exerciseDetails[j].answer)
          else
            const SizedBox(height: 65)
        ],
      ),
    );
  }
  return allExercise;
}
