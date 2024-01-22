import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:street_talk/app/domain/models/quiz_card_details.model.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({required this.index, super.key});

  final int index;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: quizCardDetailList[widget.index].gradientsColor,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: LoadingAnimationWidget.fourRotatingDots(
            color: Colors.white,
            size: 50,
          ),
        ),
      ),
    );
  }
}
