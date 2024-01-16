import 'package:flutter/material.dart';

class SentenceOne extends StatelessWidget {
  const SentenceOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          const TextSpan(
            text:
                'Lucía, una estudiante de intercambio, llegó a una nueva escuela. Al principio, todo iba        ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('1', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text:
                '  , se sentía un poco perdida, pero intentaba adaptarse. Un día, durante una clase, Lucía intentó causar una buena primera impresión cuando el profesor le preguntó sobre una lección. Sin embargo, ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('2', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '    y respondió incorrectamente.',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
        ],
      ),
    );
  }
}

class SentenceTwo extends StatelessWidget {
  const SentenceTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          const TextSpan(
            text:
                'Los compañeros de clase, en lugar de burlarse, le dijeron que todos cometían errores y que no era necesario ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('3', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '               ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text:
                '  tan rápido. Pero Lucía, sintiéndose avergonzada, pensó que realmente la había',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('4', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '   .',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('5', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '    , estaba frustrada consigo misma.',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
        ],
      ),
    );
  }
}

class SentenceThree extends StatelessWidget {
  const SentenceThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          const TextSpan(
            text:
                'Después de las clases, Pablo, un compañero amable, se acercó a Lucía y le dijo que no se preocupara, que todos cometían errores. Intentó  ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('6', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '               ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '  a Lucía, pero ella, aún sintiéndose incómoda, ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('7', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '   y se marchó.',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
        ],
      ),
    );
  }
}

class SentenceFour extends StatelessWidget {
  const SentenceFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          const TextSpan(
            text:
                'Días después, el profesor elogió a Lucía por su mejora y le dijo que ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('8', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '               ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text:
                '  en público no era su intención. Lucía, sintiéndose aliviada, se dio cuenta de que la escuela no era tan mala como pensaba y que, a veces, ',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
          WidgetSpan(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent),
              child: const Text('9', style: TextStyle(color: Colors.red)),
            ),
          ),
          const TextSpan(
            text: '                    ',
            style: TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.grey,
                decorationColor: Colors.black,
                decorationThickness: 2,
                wordSpacing: 20,
                height: 2),
          ),
          const TextSpan(
            text: '  implica superar los obstáculos.',
            style: TextStyle(color: Colors.black, wordSpacing: 20, height: 2),
          ),
        ],
      ),
    );
  }
}
