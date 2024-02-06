import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/exercise_question_model.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';

class TasksTwo extends StatelessWidget {
  const TasksTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            width: double.infinity,
            // height: 1000,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...buildExerciseTwo(),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {},
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
                            'Pokaż Odpowiedzi',
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
                const SizedBox(height: 20),
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

List<Widget> buildExerciseTwo() {
  List<Widget> allExerciseTwo = [];

  for (int j = 0; j < exerciseTwoDetails.length; j++) {
    List<Widget> optionsWidgets = exerciseTwoDetails[j].options.map((option) {
      return Text(
        option,
        style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
      );
    }).toList();

    allExerciseTwo.add(
      Column(
        children: [
          Row(
            children: [
              Container(
                child: Text(
                  exerciseTwoDetails[j].id,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              )
            ],
          ),
          exerciseTwoDetails[j].title,
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: optionsWidgets,
              )
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  return allExerciseTwo;
}
