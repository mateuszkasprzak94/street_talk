import 'package:flutter/material.dart';

class QuizCardDetail {
  QuizCardDetail({
    required this.title,
    required this.iconName,
    required this.gradientsColor,
    required this.shadowColor,
    required this.textColor,
    required this.category,
    required this.iconTag,
  });

  final String title;
  final String iconName;
  final List<Color> gradientsColor;
  final Color shadowColor;
  final Color textColor;
  final String category;
  final String iconTag;
}

const double opacity = 0.5;

final List<QuizCardDetail> quizCardDetailList = [
  QuizCardDetail(
      title: 'Kultura i Społeczeństwo',
      iconName: 'assets/quiz/culture.png',
      gradientsColor: [
        const Color(0xff0846a3),
        const Color(0xff387ee8),
      ],
      shadowColor: const Color(0xff387ee8).withOpacity(opacity),
      textColor: const Color(0xff0846a3),
      category: 'kultura_i_społeczeństwo',
      iconTag: 'kultura_icon'),
  QuizCardDetail(
      title: 'Muzyka',
      iconName: 'assets/quiz/music.png',
      gradientsColor: [
        const Color(0xfff2bd05),
        const Color(0xffe6c657),
      ],
      shadowColor: const Color(0xffe6c657).withOpacity(opacity),
      textColor: const Color(0xfff2bd05),
      category: 'muzyka',
      iconTag: 'film_icon'),
  QuizCardDetail(
      title: 'Historia i Sztuka',
      iconName: 'assets/quiz/history.png',
      gradientsColor: [
        const Color(0xff089e44),
        const Color(0xff3dd178),
      ],
      shadowColor: const Color(0xff3dd178).withOpacity(opacity),
      textColor: const Color(0xff089e44),
      category: 'historia_i_sztuka',
      iconTag: 'historia_icon'),
  QuizCardDetail(
      title: 'Wiedza Ogólna',
      iconName: 'assets/quiz/knowledge.png',
      gradientsColor: [
        const Color(0xffd97014),
        const Color(0xfff2a057),
      ],
      shadowColor: const Color(0xfff2a057).withOpacity(opacity),
      textColor: const Color(0xffd97014),
      category: 'wiedza_ogolna',
      iconTag: 'wiedza_icon'),
  QuizCardDetail(
      title: 'Jedzenie i Picie',
      iconName: 'assets/quiz/food.png',
      gradientsColor: [
        const Color.fromARGB(255, 109, 6, 16),
        const Color.fromARGB(255, 156, 8, 23),
      ],
      shadowColor: const Color.fromARGB(255, 156, 8, 23).withOpacity(opacity),
      textColor: const Color.fromARGB(255, 109, 6, 16),
      category: 'jedzenie_i_picie',
      iconTag: 'jedzenie_icon'),
  QuizCardDetail(
      title: 'Filmy i Telewizja',
      iconName: 'assets/quiz/tv.png',
      gradientsColor: [
        const Color(0xff1c0654),
        const Color(0xff3c2a70),
      ],
      shadowColor: const Color(0xff3c2a70).withOpacity(opacity),
      textColor: const Color(0xff3c2a70),
      category: 'filmy_i_telewizja',
      iconTag: 'filmy_icon'),
];
