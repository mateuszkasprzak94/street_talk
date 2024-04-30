import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:street_talk/app/core/constants/constants.dart';
import 'package:street_talk/app/domain/models/emotions_content_model.dart';

class EmotionsItemWidget extends StatelessWidget {
  const EmotionsItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final EmotionsContentModel model;

  @override
  Widget build(BuildContext context) {
    final dw = MediaQuery.of(context).size.width;
    final colorGradient = getEmotionColorGradient(model.emotionId);
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
              const Padding(
                padding: EdgeInsets.all(8),
                child: FaIcon(
                  FontAwesomeIcons.mapPin,
                  color: Colors.green,
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
                      style: TextStyle(
                        fontSize: dw / 11.2,
                      ),
                      maxLines: 2,
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
                height: 85,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: AutoSizeText(
                      textAlign: TextAlign.center,
                      model.wordTranslation,
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: dw / 28,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                      minFontSize: 10,
                      maxLines: 5,
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
                height: 166,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: colorGradient),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'EJEMPLO',
                            style: TextStyle(
                                letterSpacing: 2,
                                fontWeight: FontWeight.bold,
                                fontSize: dw / 30,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  model.exampleOne,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: dw / 28,
                                  ),
                                  minFontSize: 10,
                                  maxLines: 3,
                                ),
                                const SizedBox(height: 8),
                                AutoSizeText(
                                  model.exampleTwo,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: dw / 28,
                                  ),
                                  minFontSize: 10,
                                  maxLines: 3,
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
