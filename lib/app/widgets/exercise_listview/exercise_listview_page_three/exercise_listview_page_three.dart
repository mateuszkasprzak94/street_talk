import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/exercise_page/cubit/exercise_cubit.dart';
import 'package:street_talk/app/utility/exercise_three.dart';

class ExerciseThree extends StatefulWidget {
  const ExerciseThree({
    super.key,
  });

  @override
  State<ExerciseThree> createState() => _ExerciseThreeState();
}

bool isVisible = false;

class _ExerciseThreeState extends State<ExerciseThree> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: ListView(
        children: [
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(15),
            width: screenWidth,
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

class Visible extends StatelessWidget {
  const Visible({
    required this.answer,
    super.key,
  });

  final String answer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 25,
        child: Text(
          answer,
          style: const TextStyle(
              color: Colors.green, fontStyle: FontStyle.italic, fontSize: 15),
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
                  color: kRedSecondary,
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
