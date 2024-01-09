import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class AgreeContent extends StatelessWidget {
  const AgreeContent({
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
                  image: AssetImage('assets/emotions_images/agree.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Text(
                agreeTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 11, 198, 36),
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
          title: agreeWord1,
          titleTranslation: agreeTranslation1,
          exampleOne: agreeExampleOne1,
          exampleTwo: agreeExampleTwo1,
          exampleColor: const Color.fromARGB(255, 11, 198, 36),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: agreeWord2,
          titleTranslation: agreeTranslation2,
          exampleOne: agreeExampleOne2,
          exampleTwo: agreeExampleTwo2,
          exampleColor: const Color.fromARGB(255, 11, 198, 36),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: agreeWord3,
          titleTranslation: agreeTranslation3,
          exampleOne: agreeExampleOne3,
          exampleTwo: agreeExampleTwo3,
          exampleColor: const Color.fromARGB(255, 11, 198, 36),
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
