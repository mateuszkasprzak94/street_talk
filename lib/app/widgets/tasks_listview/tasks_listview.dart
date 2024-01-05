import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/pages/tasks_page/cubit/tasks_cubit.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          height: 1000,
          margin: const EdgeInsets.all(10),
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
}
