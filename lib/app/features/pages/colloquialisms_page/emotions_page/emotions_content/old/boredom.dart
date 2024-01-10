import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/emotions_page/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class BoredomContent extends StatelessWidget {
  const BoredomContent({
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
                  image: AssetImage('assets/emotions_images/bored.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Text(
                boredTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 192, 47, 11),
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
          title: boredWord1,
          titleTranslation: boredTranslation1,
          exampleOne: boredExampleOne1,
          exampleTwo: boredExampleTwo1,
          exampleColor: const Color.fromARGB(255, 192, 47, 11),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: boredWord2,
          titleTranslation: boredTranslation2,
          exampleOne: boredExampleOne2,
          exampleTwo: boredExampleTwo2,
          exampleColor: const Color.fromARGB(255, 192, 47, 11),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: boredWord3,
          titleTranslation: boredTranslation3,
          exampleOne: boredExampleOne3,
          exampleTwo: boredExampleTwo3,
          exampleColor: const Color.fromARGB(255, 192, 47, 11),
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
