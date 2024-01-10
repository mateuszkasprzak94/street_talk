import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class HappyContent extends StatelessWidget {
  const HappyContent({
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
                  image: AssetImage('assets/emotions_images/happy.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Text(
                happyTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 131, 250, 34),
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
          title: happyWord1,
          titleTranslation: happyTranslation1,
          exampleOne: happyExampleOne1,
          exampleTwo: happyExampleTwo1,
          exampleColor: const Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: happyWord2,
          titleTranslation: happyTranslation2,
          exampleOne: happyExampleOne2,
          exampleTwo: happyExampleTwo2,
          exampleColor: const Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: happyWord3,
          titleTranslation: happyTranslation3,
          exampleOne: happyExampleOne3,
          exampleTwo: happyExampleTwo3,
          exampleColor: const Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: happyWord4,
          titleTranslation: happyTranslation4,
          exampleOne: happyExampleOne4,
          exampleTwo: happyExampleTwo4,
          exampleColor: const Color.fromARGB(255, 131, 250, 34),
        ),
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
