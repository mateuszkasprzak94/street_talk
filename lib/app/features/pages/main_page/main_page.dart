import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/colloquialisms_page.dart';
import 'package:street_talk/app/features/pages/dictionary_page/dictionary_page.dart';
import 'package:street_talk/app/features/pages/flashcards_page/flashcards_page.dart';
import 'package:street_talk/app/features/pages/home_page/home_page.dart';
import 'package:street_talk/app/features/pages/tasks_page/tasks_page.dart';

class MainPage extends StatefulWidget {
  final int? index;
  const MainPage({super.key, this.index});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    // Set the initial index based on the widget's parameter if provided
    currentIndex = widget.index ?? 0;
  }

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
