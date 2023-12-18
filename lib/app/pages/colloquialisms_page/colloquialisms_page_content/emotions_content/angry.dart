import 'package:flutter/material.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class AngryContent extends StatelessWidget {
  const AngryContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/emotions_images/angry.jpg'))),
            ),
            Expanded(
              child: Text(
                angryTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 241, 11, 34),
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
          title: angryWord1,
          titleTranslation: angryTranslation1,
          exampleOne: angryExampleOne1,
          exampleTwo: angryExampleTwo1,
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: angryWord2,
          titleTranslation: angryTranslation2,
          exampleOne: angryExampleOne2,
          exampleTwo: angryExampleTwo2,
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: angryWord3,
          titleTranslation: angryTranslation3,
          exampleOne: angryExampleOne3,
          exampleTwo: angryExampleTwo3,
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: angryWord4,
          titleTranslation: angryTranslation4,
          exampleOne: angryExampleOne4,
          exampleTwo: angryExampleTwo4,
          exampleColor: Color.fromARGB(255, 241, 11, 34),
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
