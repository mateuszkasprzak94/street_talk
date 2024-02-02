import 'package:flutter/material.dart';

class ExerciseQuestionModel {
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  ExerciseQuestionModel({
    required this.text,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<ExerciseQuestionModel> questions = [
  ExerciseQuestionModel(
    text: '1',
    options: ['ni fu ni fa', 'de maravilla', 'de mal en peor'],
    correctAnswerIndex: 0,
  ),
  ExerciseQuestionModel(
      text: '2',
      options: ['se lució', 'metió la pata', 'sorprendió a todos'],
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

class ExerciseThreeDetails {
  ExerciseThreeDetails({
    required this.id,
    required this.title,
    required this.answer,
  });

  final String id;
  final RichText title;
  final String answer;
}

const double opacity = 0.5;
final textController1 = TextEditingController();
final textController2 = TextEditingController();
final textController3 = TextEditingController();
final textController4 = TextEditingController();
final textController5 = TextEditingController();
final textController6 = TextEditingController();
final textController7 = TextEditingController();
final textController8 = TextEditingController();
final textController9 = TextEditingController();

final List<ExerciseThreeDetails> exerciseDetails = [
  ExerciseThreeDetails(
    id: '1.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'He llamado a Ana por teléfono y me ha',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController1,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'porque acababa de cortar con su novio.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( soltado un rollo )',
  ),
  ExerciseThreeDetails(
    id: '2.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Después de la pelea, María se quedó muy molesta y',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: '. Nadie se le acercaba.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( estuvo de mal rollo )',
  ),
  ExerciseThreeDetails(
    id: '3.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'No entiendo por qué siempre tienes que ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController3,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'tanto. ¡Es agotador escucharte!',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( enrollarte )',
  ),
  ExerciseThreeDetails(
    id: '4.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'No contesta al teléfono, creo que está',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController4,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: '.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( planchando la oreja )',
  ),
  ExerciseThreeDetails(
    id: '5.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Está derrochando dinero',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController5,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: '.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( como si no hubiera un mañana )',
  ),
  ExerciseThreeDetails(
    id: '6.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Después de la pelea, María se quedó muy molesta y',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController6,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: '. Nadie se le acercaba.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( estuvo de mal rollo )',
  ),
  ExerciseThreeDetails(
    id: '7.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'La campaña publicitaria del nuevo producto está tan bien diseñada que sus anuncios  ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController7,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                '; los ves en la televisión, en internet, en las redes sociales y hasta en las paradas de autobús.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( están hasta en la sopa )',
  ),
  ExerciseThreeDetails(
    id: '8.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                'Después de olvidar el aniversario de bodas, Carlos se sentía ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 100,
                child: TextField(
                  controller: textController8,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                'al darse cuenta de su error y ver la decepción en el rostro de su esposa. ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( como el culo )',
  ),
  ExerciseThreeDetails(
    id: '9.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text:
                '9.	A pesar de las sugerencias del grupo sobre qué hacer el fin de semana, Marta decidió',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 10,
                width: 200,
                child: TextField(
                  controller: textController9,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'e improvisar sus propios planes sin consultar a nadie.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    answer: '( ir a su bola )',
  ),
];
