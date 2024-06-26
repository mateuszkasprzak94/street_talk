import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';

class SituationItemWidget extends StatelessWidget {
  const SituationItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final SituationModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  model.id.toString(),
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.green),
                ),
              ),
              SizedBox(
                height: 100,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: AutoSizeText(
                      textAlign: TextAlign.center,
                      model.word,
                      style: const TextStyle(
                        fontSize: 35,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.7,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 50,
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: AutoSizeText(
                      textAlign: TextAlign.center,
                      model.wordTranslation,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 3,
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1.7,
                color: kRedColor,
                indent: 70,
                endIndent: 70,
              ),
              SizedBox(
                height: 190,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: kSituationGradient),
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
                                  model.exampleOne,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  model.exampleTwo,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
