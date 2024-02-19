import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:street_talk/app/core/enums/config.dart';
import 'package:street_talk/app/core/enums/enums.dart';
import 'package:street_talk/app/cubit/internet_cubit.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/quiz_home_page.dart';
import 'package:street_talk/app/features/pages/main_page/main_page.dart';
import 'package:street_talk/app/widgets/connection_checker/no_internet.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.connectivity});

  final Connectivity connectivity;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(connectivity: connectivity),
      child: MaterialApp(
        debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
        title: 'Flutter Demo',
        theme: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              if (state is InternetConnected &&
                  state.connectionType == ConnectionType.wifi) {
                return const MainPage();
              } else if (state is InternetConnected &&
                  state.connectionType == ConnectionType.mobile) {
                return const MainPage();
              } else if (state is InternetDisconnected) {
                return const NoInternet();
              }
              return const Center(
                child: NoInternet(),
              );
            },
          ),
        ),
        navigatorKey: navigatorKey,
        routes: {
          '/notification_screen_quiz': (context) => const QuizHomePage(),
        },
      ),
    );
  }
}
