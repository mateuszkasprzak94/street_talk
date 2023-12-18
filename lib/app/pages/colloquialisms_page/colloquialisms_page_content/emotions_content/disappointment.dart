import 'package:flutter/material.dart';
import 'package:street_talk/app/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class DisappointmentContent extends StatelessWidget {
  const DisappointmentContent({
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
                  image:
                      AssetImage('assets/emotions_images/disappointment.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Text(
                disappointmentTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(179, 11, 108, 198),
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
          title: disappointmentWord1,
          titleTranslation: disappointmentTranslation1,
          exampleOne: disappointmentExampleOne1,
          exampleTwo: disappointmentExampleTwo1,
          exampleColor: const Color.fromARGB(179, 11, 108, 198),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: disappointmentWord2,
          titleTranslation: disappointmentTranslation2,
          exampleOne: disappointmentExampleOne2,
          exampleTwo: disappointmentExampleTwo2,
          exampleColor: const Color.fromARGB(179, 11, 108, 198),
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
