import 'package:flutter/material.dart';

class ExerciseTwoDetails {
  ExerciseTwoDetails({
    required this.id,
    required this.title,
    required this.options,
    required this.correctOption,
  });

  final String id;
  final RichText title;
  final List<String> options;
  final int correctOption;
}

final controllerTaskTwo1 = TextEditingController();

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
                  controller: controllerTaskTwo1,
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
    correctOption: 0,
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
                  controller: controllerTaskTwo1,
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
    correctOption: 1,
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
                  controller: controllerTaskTwo1,
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
    correctOption: 0,
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
                    controller: controllerTaskTwo1,
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
      correctOption: 1),
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
                  controller: controllerTaskTwo1,
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
    correctOption: 0,
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
                  controller: controllerTaskTwo1,
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
    correctOption: 2,
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
                  controller: controllerTaskTwo1,
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
    correctOption: 1,
  ),
];
