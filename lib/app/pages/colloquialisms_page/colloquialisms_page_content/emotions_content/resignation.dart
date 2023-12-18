import 'package:flutter/material.dart';
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
            const Expanded(
              child: Text(
                '7. Rezygnacja',
                style: TextStyle(
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
        const EmotionCardContentWidget(
          title: 'Qué le vamos a hacer',
          titleTranslation:
              'jest to wyrażenie retoryczne lub pytanie, które oznacza rezygnację w obliczu sytuacji, na którą nie mamy wpływu i która jest uważana za nieuniknioną.',
          exampleOne:
              '- Perderás la mitad de tus tierras, pero qué le vamos a hacer.',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'Es lo que hay',
          titleTranslation:
              'wyrażenie używane, gdy trzeba zadowolić się tym, co jest w danej chwili, ponieważ nie ma innego wyjścia, jak tylko to zaakceptować.',
          exampleOne:
              '- Me parece fatal que te paguen tan poco por tu trabajo.',
          exampleTwo: '- Ya, pero bueno, es lo que hay...',
          exampleColor: Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: 'No queda otra / No me queda otra',
          titleTranslation:
              'wyrażenia tego używa się do przedstawienia czegoś jako jedynej możliwej alternatywy w trudnej sytuacji lub czegoś, co jest obowiązkowe w danych okolicznościach.',
          exampleOne:
              '- Tengo muchas deudas, tendré que conseguir un segundo trabajo. No me queda otra.',
          exampleTwo: '',
          exampleColor: Color.fromARGB(255, 64, 81, 136),
        ),
        _divider(),
        const EmotionCardContentWidget(
          title: '¡Qué remedio!',
          titleTranslation:
              'używa się go, gdy sytuacja jest jedynym dostępnym rozwiązaniem lub opcją, czymś nieuniknionym.',
          exampleOne: '- No me apetece nada ir a la fiesta.',
          exampleTwo:
              '- A mí tampoco, pero ¡qué remedio! Nos ha invitado y tenemos que ir.',
          exampleColor: Color.fromARGB(255, 64, 81, 136),
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
