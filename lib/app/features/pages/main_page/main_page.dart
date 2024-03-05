import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/colloquialisms_page.dart';
import 'package:street_talk/app/features/pages/dictionary_page/dictionary_page.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_page.dart';
import 'package:street_talk/app/features/pages/home_page/home_page.dart';
import 'package:street_talk/app/features/pages/exercise_page/exercise_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  final screens = const [
    HomePage(),
    ColloquialismsPage(),
    ExercisePage(),
    FlashCardsPage(),
    DictionaryPage(),
  ];

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: kRedColor,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Strona Główna',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum),
            label: 'Kolokwializmy',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Ćwiczenia',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.collections_bookmark),
            label: 'Fiszki',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Słownik',
          ),
        ],
      ),
    );
  }
}
