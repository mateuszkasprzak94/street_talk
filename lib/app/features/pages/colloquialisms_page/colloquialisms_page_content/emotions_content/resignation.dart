import 'package:flutter/material.dart';
import 'package:street_talk/app/features/pages/colloquialisms_page/colloquialisms_page_content/emotions_content/text_for_emotions_content/text_for_emotions_content.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class ResignationContent extends StatelessWidget {
  const ResignationContent({
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
                  image: AssetImage('assets/emotions_images/resignation.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Text(
                resignationTitle,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 64, 81, 136),
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
          title: resignationWord1,
          titleTranslation: resignationTranslation1,
          exampleOne: resignationExampleOne1,
          exampleTwo: resignationExampleTwo1,
          exampleColor: const Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: resignationWord2,
          titleTranslation: resignationTranslation2,
          exampleOne: resignationExampleOne2,
          exampleTwo: resignationExampleTwo2,
          exampleColor: const Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: resignationWord3,
          titleTranslation: resignationTranslation3,
          exampleOne: resignationExampleOne3,
          exampleTwo: resignationExampleTwo3,
          exampleColor: const Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        EmotionCardContentWidget(
          title: resignationWord4,
          titleTranslation: resignationTranslation4,
          exampleOne: resignationExampleOne4,
          exampleTwo: resignationExampleTwo4,
          exampleColor: const Color.fromARGB(255, 64, 81, 136),
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
