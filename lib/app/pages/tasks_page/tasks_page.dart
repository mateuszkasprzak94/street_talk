import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/drawer/drawer.dart';

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
          preferredSize: const Size.fromHeight(70),
          child: Container(
            height: 70,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFc60b1e),
            ),
            child: Column(children: [
              Text(
                'Zadania',
                style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 25),
              ),
              Text(
                'Tutaj możesz przetestować swoją wiedzę, powodzenia !',
                style: GoogleFonts.lora(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: const Center(
        child: Text('Tasks Page'),
      ),
      endDrawer: NavigationDrawerWidget(),
    );
  }
}
