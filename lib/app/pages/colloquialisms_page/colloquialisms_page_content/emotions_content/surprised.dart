import 'package:flutter/material.dart';
import 'package:street_talk/app/widgets/colloquialisms_content/emotions_card_content_widget.dart';

class SurprisedContent extends StatelessWidget {
  const SurprisedContent({
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
                          AssetImage('assets/emotions_images/surprised.jpg'))),
            ),
            const Expanded(
              child: Text(
                '1. Zdziwienie / Zaskoczenie',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: '¡Hala!',
          titleTranslation:
              'jest to wykrzyknienie używane, aby wyrazić zdziwienie, chociaż używa się go również do wyrażenia wsparcia',
          exampleOne:
              '- Me han regalado un viaje de avión a Valencia por mi cumpleaños.',
          exampleTwo:
              '- ¡Hala! ¡Felicidades! ¡Disfrútalo muchísimo! Valencia es una ciudad fantástica.',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Anda!',
          titleTranslation:
              'używamy tego wykrzyknienia, aby wyrazić podziw lub zaskoczenie, a także zachęcić do zrobienia czegoś',
          exampleOne: '- Ya no quedan donuts de chocolate en la pastelería.',
          exampleTwo: '- ¡Anda! Y yo que tenía ganas de probarlos hoy.',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué dices!',
          titleTranslation:
              'używamy, aby wyrazić zdziwienie i dezorientację w związku z tym, co mówi nam nasz rozmówca',
          exampleOne: '- ¡Mi perra ha tenido cachorritos!',
          exampleTwo:
              '- ¡Qué dices! Pero, si no me habías contado que estaba preñada.',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¿Pero qué me estás contando?',
          titleTranslation:
              'używamy gdy chcemy wyrazić totalny szok lub zdziwienie tym, co właśnie nam ogłoszono',
          exampleOne: '- ¡Me voy a casar el mes que viene!',
          exampleTwo: '- ¿Pero qué me estás contando?',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué fuerte!',
          titleTranslation: 'używamy w takich samych sytuacjach jak powyżej',
          exampleOne:
              '-¿Te has enterado de que Ana y Pedro están saliendo juntos?',
          exampleTwo: '-¡Qué fuerte! Pero si siempre se han llevado fatal.',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡No me digas!',
          titleTranslation:
              'używamy wtedy gdy cos wydaje się nam nieprawdopodobne lub zadziwiające ',
          exampleOne: '-Este año vamos de vacaciones a África.',
          exampleTwo: '-¡No me digas! ¿Y eso?',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'Estoy flipando / Yo flipo / Flipo en colores',
          titleTranslation:
              'używamy w sytuacjach gdy jesteśmy bardzo zaskoczeni. Może być używane w kontekście pozytywnym lub negatywnym',
          exampleOne: '-No me esperaba para nada esa noticia.',
          exampleTwo: '-Ni yo, estoy flipando. ',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Venga ya! / ¡Venga yaaa!',
          titleTranslation: 'używamy, gdy jest nam ciężko w coś uwierzyć',
          exampleOne: '- ¿Sabes que han despedido a Irene de su trabajo?',
          exampleTwo: '- ¡Venga ya! Pero si estaba súper bien, ¿no?',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'No jodas / No me jodas',
          titleTranslation:
              'używamy, żeby wyrazić niedowierzanie względem czegoś co zostało powiedziane lub zrobione ',
          exampleOne: '- Creo que he dejado mi chaqueta en el bar.',
          exampleTwo: '- ¡No me jodas!',
          exampleColor: Color.fromARGB(202, 175, 12, 180),
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
