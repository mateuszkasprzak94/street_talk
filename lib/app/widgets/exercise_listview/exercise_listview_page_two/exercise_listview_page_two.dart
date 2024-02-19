import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/exercise_page/cubit/exercise_cubit.dart';
import 'package:street_talk/app/utility/exercise_two.dart';

class ExerciseTwo extends StatefulWidget {
  const ExerciseTwo({
    super.key,
  });

  @override
  State<ExerciseTwo> createState() => _ExerciseTwoState();
}

class _ExerciseTwoState extends State<ExerciseTwo> {
  bool showResults = false;

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
                  onTap: () {
                    setState(() {
                      showResults = !showResults;
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
                            'Mostrar soluciones',
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
                if (showResults)
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1.   a) está en el quinto pino',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '2.   b) Me cago en la leche',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '3.   a) es la leche',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '4.   b) estoy de bajón',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '5.   a) del tirón',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '6.   c) Flipo',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '7.   b) te has pasado tres pueblos',
                        style: TextStyle(
                          color: Colors.green,
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
                  context.read<ExerciseCubit>().previousPage();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                onPressed: () {
                  context.read<ExerciseCubit>().nextPage();
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
              Text(
                exerciseTwoDetails[j].id,
                style: const TextStyle(
                  color: kRedSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
          exerciseTwoDetails[j].title,
          const SizedBox(height: 20),
          Row(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: optionsWidgets)
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
  return allExerciseTwo;
}
