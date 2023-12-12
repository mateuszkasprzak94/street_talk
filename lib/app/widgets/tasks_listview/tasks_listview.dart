import 'package:flutter/material.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({
    super.key,
    required this.controllerPage,
  });

  final PageController controllerPage;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: 1000,
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: const Color(0xFFc60b1e),
            ),
          ),
          child: const Column(
            children: [
              Text(
                  '1. Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie  Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie '),
              SizedBox(height: 5),
              Text(
                  '1. Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie Zadanie _______ Zadanie Zadanie '),
              SizedBox(height: 5),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => controllerPage.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut),
              icon: const Icon(Icons.arrow_back_ios),
            ),
            IconButton(
              onPressed: () => controllerPage.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOut),
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
