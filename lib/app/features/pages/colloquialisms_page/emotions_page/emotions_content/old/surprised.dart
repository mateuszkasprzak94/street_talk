import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class SurprisedContent extends StatelessWidget {
  const SurprisedContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 40),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/emotions_images/surprised.jpg'))),
            ),
            Expanded(
              child: Text(
                surprisedTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(202, 175, 12, 180),
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 15),
          ],
        ),
        const SizedBox(height: 10),
        Divider(
          thickness: 2,
          color: Colors.grey.withOpacity(0.25),
          indent: 11,
          endIndent: 11,
        ),
        EmotionCardContentWidget(
          title: surprisedWord1,
          titleTranslation: surprisedTranslation1,
          exampleOne: surprisedExampleOne1,
          exampleTwo: surprisedExampleTwo1,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord2,
          titleTranslation: surprisedTranslation2,
          exampleOne: surprisedExampleOne2,
          exampleTwo: surprisedExampleTwo2,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord3,
          titleTranslation: surprisedTranslation3,
          exampleOne: surprisedExampleOne3,
          exampleTwo: surprisedExampleTwo3,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord4,
          titleTranslation: surprisedTranslation4,
          exampleOne: surprisedExampleOne4,
          exampleTwo: surprisedExampleTwo4,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord5,
          titleTranslation: surprisedTranslation5,
          exampleOne: surprisedExampleOne5,
          exampleTwo: surprisedExampleTwo5,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord6,
          titleTranslation: surprisedTranslation6,
          exampleOne: surprisedExampleOne6,
          exampleTwo: surprisedExampleTwo6,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord7,
          titleTranslation: surprisedTranslation7,
          exampleOne: surprisedExampleOne7,
          exampleTwo: surprisedExampleTwo7,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord8,
          titleTranslation: surprisedTranslation8,
          exampleOne: surprisedExampleOne8,
          exampleTwo: surprisedExampleTwo8,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: surprisedWord9,
          titleTranslation: surprisedTranslation9,
          exampleOne: surprisedExampleOne9,
          exampleTwo: surprisedExampleTwo9,
          exampleColor: const Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
      ],
    );
  }

  Divider _divider() {
    return const Divider(
      height: 50,
      thickness: 5,
      color: Colors.grey,
      indent: 150,
      endIndent: 150,
    );
  }
}
