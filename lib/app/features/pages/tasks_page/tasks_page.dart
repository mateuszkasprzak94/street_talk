import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/features/pages/tasks_page/cubit/tasks_cubit.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:street_talk/app/widgets/tasks_listview/tasks_listview.dart';

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
                TasksListView(),
                TasksListView(),
                TasksListView(),
              ],
            ),
          );
        },
      ),
    );
  }
}
