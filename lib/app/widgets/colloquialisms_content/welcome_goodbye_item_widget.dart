import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/welcome_goodbye_model.dart';

class WelcomeGoodbyeItemWidget extends StatelessWidget {
  const WelcomeGoodbyeItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final WelcomeGoodbyeModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(4, 8),
              ),
            ],
          ),
          child: Column(
            children: [
              const SizedBox(height: 5),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 60,
                endIndent: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: AutoSizeText(
                    textAlign: TextAlign.center,
                    model.title,
                    style: const TextStyle(
                      fontSize: 28,
                    ),
                    maxLines: 2,
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: kRedColor,
                indent: 60,
                endIndent: 60,
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 160, 17),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    const Text(
                      'EJEMPLO',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 9),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${model.exampleOne} - ${model.exampleOneTranslation}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${model.exampleTwo} - ${model.exampleTwoTranslation}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${model.exampleThree} - ${model.exampleThreeTranslation}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${model.exampleFour} - ${model.exampleFourTranslation}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 50,
          thickness: 5,
          color: Colors.grey,
          indent: 150,
          endIndent: 150,
        )
      ],
    );
  }
}
