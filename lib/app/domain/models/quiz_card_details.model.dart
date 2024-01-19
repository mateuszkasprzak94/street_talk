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
      iconName: '',
      gradientsColor: [
        const Color(0xff0846a3),
        const Color(0xff387ee8),
      ],
      shadowColor: const Color(0xff387ee8).withOpacity(opacity),
      textColor: const Color(0xff0846a3),
      category: 'kultura_i_społeczeństwo',
      iconTag: 'kultura_icon'),
  QuizCardDetail(
      title: 'Film i Muzyka',
      iconName: '',
      gradientsColor: [
        const Color(0xfff2bd05),
        const Color(0xffe6c657),
      ],
      shadowColor: const Color(0xffe6c657).withOpacity(opacity),
      textColor: const Color(0xfff2bd05),
      category: 'film_i_muzyka',
      iconTag: 'film_icon'),
  QuizCardDetail(
      title: 'Historia i Sztuka',
      iconName: '',
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
      iconName: '',
      gradientsColor: [
        const Color(0xff395c91),
        const Color(0xff75aafa),
      ],
      shadowColor: const Color(0xff75aafa).withOpacity(opacity),
      textColor: const Color(0xff395c91),
      category: 'wiedza_ogolna',
      iconTag: 'wiedza_icon'),
  QuizCardDetail(
      title: 'Jedzenie i Picie',
      iconName: '',
      gradientsColor: [
        const Color(0xff0846a3),
        const Color(0xff387ee8),
      ],
      shadowColor: const Color(0xff387ee8).withOpacity(opacity),
      textColor: const Color(0xff0846a3),
      category: 'jedzenie_i_picie',
      iconTag: 'jedzenie_icon'),
  QuizCardDetail(
      title: 'Filmy',
      iconName: '',
      gradientsColor: [
        const Color(0xffd6182e),
        const Color(0xffed475a),
      ],
      shadowColor: const Color(0xffed475a).withOpacity(opacity),
      textColor: const Color(0xffd6182e),
      category: 'filmy',
      iconTag: 'filmy_icon'),
];
