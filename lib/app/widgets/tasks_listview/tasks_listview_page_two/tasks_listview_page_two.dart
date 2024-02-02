import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';

class TasksTwo extends StatelessWidget {
  const TasksTwo({
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
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  '1. La oficina de turismo  (          ) , tienes que cruzar toda la ciudad para llegar'),
              SizedBox(height: 20),
              Text('2. (         ) , he dejado las llaves en casa.'),
              SizedBox(height: 20),
              Text(
                  '3. ¡Tu hermano  (         ) ! Ha conseguido un trabajo de actor con un director muy famoso.'),
              SizedBox(height: 20),
              Text('4. Ayer perdí mi trabajo y  (         )'),
              SizedBox(height: 20),
              Text('5. Estaba tan cansada que dormí doce horas (         )'),
              SizedBox(height: 20),
              Text('6. (           ) con lo que te ha dicho, no me lo creo.'),
              SizedBox(height: 20),
              Text('7. Hala,  (        ) con la burrada que le has dicho'),
              SizedBox(height: 20),
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
