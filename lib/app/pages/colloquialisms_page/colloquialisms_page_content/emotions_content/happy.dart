import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '5. Radość / Entuzjazm',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: '¡Qué guay! / ¡Qué chulo! / Chachi',
          titleTranslation:
              'używamy aby wyrazić, że coś nam się bardzo podoba, coś jest super, świetne, wspaniałe, itp.',
          exampleOne:
              '- Tu amiga es muy guay, ¡me lo he pasado genial con ella!',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Cómo mola!',
          titleTranslation:
              'to wyrażenie może być używane w takim samym kontekście jak powyżej, gdy chcemy powiedzieć, że coś nam się podoba',
          exampleOne: '- ¿Qué te parecen mis gafas nuevas?',
          exampleTwo: '- ¡Cómo molan!',
          exampleColor: Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué pasada! ',
          titleTranslation:
              'używamy w odniesieniu do czegoś wyjątkowo dobrego, niesamowitego, a nawet zaskakującego',
          exampleOne:
              '- Mira, mi tía hizo esta colcha a mano y solo tardó dos días.',
          exampleTwo: '- ¡Qué pasada! ¡Es súper bonita!',
          exampleColor: Color.fromARGB(255, 131, 250, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Es la caña! / ¡Es lo más! ',
          titleTranslation:
              'wyrażenia te są synonimem „bycia świetnym, niezwykłym”, czymś, co jest „super topowe”',
          exampleOne: '- ¿Has conocido ya al nuevo profesor de matemáticas?',
          exampleTwo:
              '- Sí, ¡es la caña! / ¡Es lo más! Es súper simpático y gracioso.',
          exampleColor: Color.fromARGB(255, 131, 250, 34),
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
