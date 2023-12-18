import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '6. Znudzenie',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: '¡Qué rollo!/ ¡Vaya rollo! ',
          titleTranslation: 'oznacza cos baaardzo nudnego',
          exampleOne:
              '- Ayer tuve que ir a una conferencia de trabajo que duró dos horas y encima de pie...',
          exampleTwo: '- Vaya rollo...',
          exampleColor: Color.fromARGB(255, 192, 47, 11),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Vaya coñazo! /¡Qué coñazo ! /Ser un coñazo ',
          titleTranslation: 'coś bardzo nudnego, meczącego',
          exampleOne: '- Vaya coñazo de peli.',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 192, 47, 11),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Menudo tostón! / ¡Vaya tostón! ',
          titleTranslation:
              '“tostón” oznacza to samo co „rollo” lub „coñazo”, używamy w takim samym kontekście ',
          exampleOne:
              '- Menudo tostón de conferencia, no han dicho nada interesante.',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 192, 47, 11),
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
