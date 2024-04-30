import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/features/pages/exercise_page/cubit/exercise_cubit.dart';
import 'package:street_talk/app/injection_container.dart';
import 'package:street_talk/app/widgets/animations/animation.dart';
import 'package:street_talk/app/widgets/drawer/drawer.dart';
import 'package:street_talk/app/widgets/exercise_listview/exercise_listview_page_one/exercise_listview_page_one.dart';
import 'package:street_talk/app/widgets/exercise_listview/exercise_listview_page_three/exercise_listview_page_three.dart';
import 'package:street_talk/app/widgets/exercise_listview/exercise_listview_page_two/exercise_listview_page_two.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      endDrawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: kRedDrawer),
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
            ).animate().fade(delay: 500.ms, duration: 500.ms).slideX(),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: FadeInAnimation(
            delay: 1.3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: kRedGradient,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 1.5, bottom: 5),
                child: Column(
                  children: [
                    Text(
                      'Ćwiczenia',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: screenWidth / 12),
                    ),
                    AutoSizeText(
                      'Tutaj możesz przetestować swoją wiedzę, powodzenia!',
                      style: GoogleFonts.lora(
                          color: Colors.white, fontSize: screenWidth / 28),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: BlocProvider<ExerciseCubit>(
        create: (context) => getIt()..start(),
        child: BlocBuilder<ExerciseCubit, ExerciseState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Status.success:
                return FadeInAnimation(
                  delay: 1.6,
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: state.controllerTaskPage,
                    children: const [
                      ExerciseOne(),
                      ExerciseTwo(),
                      ExerciseThree(),
                    ],
                  ),
                );
              case Status.error:
                return Center(
                  child: Text(
                    state.errorMessage ?? 'Unknown error',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.error,
                    ),
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
