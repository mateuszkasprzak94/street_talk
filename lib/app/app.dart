import 'package:flutter/material.dart';
import 'package:street_talk/app/core/flavor/config.dart';
import 'package:street_talk/app/drawer/drawer_content/quiz/quiz_home_page.dart';
import 'package:street_talk/app/features/pages/main_page/main_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: Config.debugShowCheckedModeBanner,
      title: 'Flutter Demo',
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: const MainPage(),
      navigatorKey: navigatorKey,
      routes: {
        '/notification_screen_quiz': (context) => const QuizHomePage(),
        '/notification_screen_flashcards': (context) =>
            const MainPage(index: 3),
        '/notification_screen_colloquialisms': (context) =>
            const MainPage(index: 1),
        '/notification_screen_tasks': (context) => const MainPage(index: 2),
      },
    );
  }
}
