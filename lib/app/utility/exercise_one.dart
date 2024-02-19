import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';

class ExerciseOneDetails {
  ExerciseOneDetails({
    required this.title,
  });

  final RichText title;
}

final controllerTaskOne1 = TextEditingController();

final List<ExerciseOneDetails> exerciseOneDetails = [
  ExerciseOneDetails(
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'Lucía, una estudiante de intercambio, llegó a una nueva escuela. Al principio, iba',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '1',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                ', porque se sentía un poco perdida, pero intentaba adaptarse. Un día, durante una clase, Lucía intentó causar una buena primera impresión cuando el profesor le preguntó sobre una lección. Sin embargo,',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '2',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'y respondió incorrectamente.',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
  ExerciseOneDetails(
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'Sus compañeros de clase, en lugar de burlarse de ella, le dijeron que todos cometían errores y que no era necesario',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '3',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                'tan rápido. Pero Lucía, sintiéndose avergonzada, pensó que realmente la había',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '4',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: '.',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '5',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: ', estaba frustrada consigo misma.',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
  ExerciseOneDetails(
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'Después de las clases, Pablo, un compañero amable, se acercó a Lucía y le dijo que no se preocupara, que todos cometían errores. Intentó',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '6',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'a Lucía, pero ella, aún sintiéndose incómoda,',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '7',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'y se marchó.',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
  ExerciseOneDetails(
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'Días después, el profesor elogió a Lucía por su mejora y le dijo que',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '8',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                'en público no era su intención. Lucía, sintiéndose aliviada, se dio cuenta de que la escuela no era tan mala como pensaba y que, a veces,',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 20,
                width: 100,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '9',
                    labelStyle: TextStyle(
                        fontStyle: FontStyle.italic, color: kRedSecondary),
                  ),
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskOne1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'implica superar los obstáculos.',
            style: TextStyle(
              color: Colors.black,
              wordSpacing: 20,
              height: 2,
              fontSize: 20,
            ),
          ),
        ],
      ),
    ),
  ),
];

class ExerciseOneQuestionModel {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  ExerciseOneQuestionModel({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<ExerciseOneQuestionModel> questions = [
  ExerciseOneQuestionModel(
    text: '1.',
    options: ['con pies de plomo', 'a un tiro', 'a todo trapo'],
    correctAnswerIndex: 0,
  ),
  ExerciseOneQuestionModel(
      text: '2.',
      options: [
        'echó las campanas al vuelo',
        'metió la pata',
        'se quedó embobada'
      ],
      correctAnswerIndex: 1),
  ExerciseOneQuestionModel(
    text: '3.',
    options: [
      'quedarse con la conciencia tranquila',
      'tirarse del barco',
      'quitarse un peso de encima'
    ],
    correctAnswerIndex: 1,
  ),
  ExerciseOneQuestionModel(
      text: '4.',
      options: ['cagado', 'tirado', 'enganchado'],
      correctAnswerIndex: 0),
  ExerciseOneQuestionModel(
      text: '5.',
      options: ['Vaya', 'La verdad sea dicha', 'Lo dicho'],
      correctAnswerIndex: 1),
  ExerciseOneQuestionModel(
      text: '6.',
      options: [
        'ir a su rollo',
        'aportar su granito de arena',
        'tirarle los trastos'
      ],
      correctAnswerIndex: 2),
  ExerciseOneQuestionModel(
      text: '7.',
      options: ['no le hizo caso', 'se puso de mala leche', 'se dio a la fuga'],
      correctAnswerIndex: 0),
  ExerciseOneQuestionModel(
      text: '8.',
      options: ['tirarle fichas', 'montar un pollo', 'echarle la bronca'],
      correctAnswerIndex: 2),
  ExerciseOneQuestionModel(
      text: '9.',
      options: [
        'hacerle frente a la situación',
        'quedarse muerta',
        'estar tocado'
      ],
      correctAnswerIndex: 0),
];
