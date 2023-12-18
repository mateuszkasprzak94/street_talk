import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '3. Zgadzanie się z czymś / z kimś',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: 'Ya ves',
          titleTranslation:
              'używamy aby powiedzieć, że się z kimś zgadzamy. Synonim do „pues sí',
          exampleOne: '- Tengo unas ganas de que llegue el verano…',
          exampleTwo: '- ¡Ya ves! ¡Yo tampoco puedo esperar!',
          exampleColor: Color.fromARGB(255, 11, 198, 36),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'Ya te digo',
          titleTranslation: 'używa się tak samo jak „Ya ves”',
          exampleOne: '- Hace un frío increíble.',
          exampleTwo: '-Ya te digo, tengo la calefacción a tope.',
          exampleColor: Color.fromARGB(255, 11, 198, 36),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'Total',
          titleTranslation:
              'używamy gdy chcemy powiedzieć, że całkowicie się zgadzamy z tym co powiedział nasz rozmówca',
          exampleOne: '- Creo que Valeria ha sido demasiado dura con Enrique.',
          exampleTwo: '- Total. Debería de haber sido más amable.',
          exampleColor: Color.fromARGB(255, 11, 198, 36),
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
