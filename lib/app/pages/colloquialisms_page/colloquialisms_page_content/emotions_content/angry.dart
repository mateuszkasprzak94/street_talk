import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '2. Złość / Irytacja',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: '¡Vaya tela!',
          titleTranslation:
              'używamy, aby zareagować na coś, co mówi nam druga osoba lub na wiadomość, która nas negatywnie zaskakuje, szokuje, denerwuje, oburza',
          exampleOne: '- Vaya tela lo de Pedro, ¿no?',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué coraje! / ¡Qué rabia!',
          titleTranslation: 'używamy, aby wyrazić złość lub irytację',
          exampleOne: '- He perdido el tren y no voy a poder ir a la cena...',
          exampleTwo: '- ¡Qué dices! Aggg ¡¡¡qué rabia/qué coraje!!!',
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Vaya mierda! / ¡Qué putada!',
          titleTranslation:
              'te dwa wyrażenia wyrażają złość, wściekłość, ale z nutą rozczarowania',
          exampleOne:
              '- No voy a poder ir a la fiesta porque se me ha estropeado el coche.',
          exampleTwo: '- Vaya mierda/Qué putada tío...',
          exampleColor: Color.fromARGB(255, 241, 11, 34),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué barbaridad! ',
          titleTranslation: 'może wyrażać oburzenie, zdziwienie, zszokowanie ',
          exampleOne: '¡Qué barbaridad! No puedo creer lo que acabo de ver.',
          exampleTwo: '',
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
