import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zadania'),
        centerTitle: true,
        leading: Transform.scale(
          scale: 1.6,
          child: Container(
            margin: const EdgeInsets.only(left: 15),
            alignment: Alignment.center,
            child: Image.asset(
              'assets/flag/flag.png',
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9),
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Color(0xFFc60b1e)),
                bottom: BorderSide(color: Color(0xFFc60b1e)),
              ),
            ),
            child: const Center(
                child: Text(
                    'Tutaj możesz przetestować swoją wiedzę, powodzenia !')),
          ),
        ),
      ),
      body: const Center(
        child: Text('Tasks Page'),
      ),
    );
  }
}


// Tutaj możesz przetestować swoją wiedze, powodzenia !