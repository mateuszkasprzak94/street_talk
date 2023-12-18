import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '4. Rozczarowanie',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: '¡Vaya palo! ',
          titleTranslation:
              'gdy ktoś mówi, że przydarzyło mu się coś złego lub przeżył rozczarowanie, używamy tego wyrażenia aby wyrazić empatię, a także potwierdzić że sytuacja rzeczywiście była nieciekawa',
          exampleOne:
              '- Suspendió el examen y no puede hacer la carrera que le gusta. ¡Vaya palo!',
          exampleTwo: '',
          exampleColor: Color.fromARGB(179, 11, 108, 198),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Vaya chasco! ',
          titleTranslation:
              'wyrażenie o podobnym znaczeniu do „Co za rozczarowanie!”',
          exampleOne: '- Mañana juega la Juventus',
          exampleTwo:
              '- Sí, pero no emiten el partido en España               - ¡Pues vaya chasco!',
          exampleColor: Color.fromARGB(179, 11, 108, 198),
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
