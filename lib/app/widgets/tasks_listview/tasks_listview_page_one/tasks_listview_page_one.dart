import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview_page_one/tasks_listview_page_one_data.dart';

class TasksOne extends StatelessWidget {
  const TasksOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.all(35),
          width: double.infinity,
          height: 2000,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              color: const Color(0xFFc60b1e),
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
          child: const Column(
            children: [
              SentenceOne(),
              SizedBox(height: 20),
              SentenceTwo(),
              SizedBox(height: 20),
              SentenceThree(),
              SizedBox(height: 20),
              SentenceFour(),
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
