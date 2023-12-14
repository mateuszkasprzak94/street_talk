import 'package:flutter/material.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page.dart';
import 'package:street_talk/app/pages/dictionary_page/dictionary_page.dart';
import 'package:street_talk/app/pages/flashcards_page/flashcards_page.dart';
import 'package:street_talk/app/pages/home_page/home_page.dart';
import 'package:street_talk/app/pages/tasks_page/tasks_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens = const [
    HomePage(),
    ColloquialismsPage(),
    TasksPage(),
    FlashCardsPage(),
    DictionaryPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: const Color(0xFFc60b1e),
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
            label: 'Ćwieczenia',
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
