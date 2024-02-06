import 'package:flutter/material.dart';

// Page 1

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

// Page 3

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
                'A pesar de las sugerencias del grupo sobre qué hacer el fin de semana, Marta decidió',
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

// Page 2

class ExerciseTwoDetails {
  ExerciseTwoDetails({
    required this.id,
    required this.title,
    required this.options,
  });

  final String id;
  final RichText title;
  final List<String> options;
}

final controllerTaskTwo1 = TextEditingController();
final controllerTaskTwo2 = TextEditingController();
final controllerTaskTwo3 = TextEditingController();
final controllerTaskTwo4 = TextEditingController();
final controllerTaskTwo5 = TextEditingController();
final controllerTaskTwo6 = TextEditingController();
final controllerTaskTwo7 = TextEditingController();

final List<ExerciseTwoDetails> exerciseTwoDetails = [
  ExerciseTwoDetails(
    id: '1.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'La oficina de turismo',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: ', tienes que cruzar toda la ciudad para llegar.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    options: [
      'a) está en el quinto pino',
      'b) está como un flan',
      'c) está de bajón '
    ],
  ),
  ExerciseTwoDetails(
    id: '2.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: ', he dejado las llaves en casa.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    options: ['a) Voy de culo', 'b) Me cago en la leche', 'c) Como Dios manda'],
  ),
  ExerciseTwoDetails(
    id: '3.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '¡Tu hermano',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text:
                '! Ha conseguido un trabajo de actor con un director muy famoso.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    options: ['a) es la leche', 'b) hace la vista gorda', 'c) está sin blanca'],
  ),
  ExerciseTwoDetails(
    id: '4.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Ayer perdí mi trabajo y',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
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
    options: [
      'a) estoy manga por hombro',
      'b) estoy de bajón',
      'c) estoy de buen rollo'
    ],
  ),
  ExerciseTwoDetails(
    id: '5.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Estaba tan cansada que dormí doce horas',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
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
    options: ['a) del tirón', 'b) ¡Manda huevos!', 'c) me pasé tres pueblos'],
  ),
  ExerciseTwoDetails(
    id: '6.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: '',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'con lo que te ha dicho, no me lo creo.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    options: ['a) No me da la vida', 'b) Estoy sobao', 'c) Flipo'],
  ),
  ExerciseTwoDetails(
    id: '7.',
    title: RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            text: 'Hala,',
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
                  readOnly: true,
                  enableInteractiveSelection: false,
                  enabled: false,
                  controller: controllerTaskTwo2,
                ),
              ),
            ),
          ),
          const TextSpan(
            text: 'con la burrada que le has dicho.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 2,
            ),
          ),
        ],
      ),
    ),
    options: [
      'a) estás hecho polvo',
      'b) te has pasado tres pueblos',
      'c) estás de mala leche'
    ],
  ),
];
