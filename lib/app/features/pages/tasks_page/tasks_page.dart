import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview_page_one/tasks_listview_page_one.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview_page_three/tasks_listview_page_three.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview_page_two/tasks_listview_page_two.dart';

class TasksPage extends StatelessWidget {
  const TasksPage({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return BlocProvider(
      create: (context) => TasksCubit()..start(),
      child: BlocBuilder<TasksCubit, TasksState>(
        builder: (context, state) {
          return Scaffold(
            endDrawer: const NavigationDrawerWidget(),
            appBar: AppBar(
              centerTitle: true,
              leading: Transform.scale(
                scale: 1.6,
                child: Animate(
                  child: Container(
                    margin: const EdgeInsets.only(left: 15),
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/flag/flag.png',
                    ),
                  ).animate().fade(delay: 300.ms, duration: 500.ms).slideX(),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: kRedGradient,
                    ),
                  ),
                  child: Column(children: [
                    Text(
                      'Ćwieczenia',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: screenWidth / 12),
                    ),
                    Text(
                      'Tutaj możesz przetestować swoją wiedzę, powodzenia !',
                      style: GoogleFonts.lora(
                          color: Colors.white, fontSize: screenWidth / 28),
                    ),
                  ]),
                ),
              ),
            ),
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: state.controllerTaskPage,
              children: const [
                TasksOne(),
                TasksTwo(),
                TasksThree(),
              ],
            ),
          );
        },
      ),
    );
  }
}
