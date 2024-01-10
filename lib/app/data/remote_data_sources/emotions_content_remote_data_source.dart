import 'package:dio/dio.dart';

class EmotionsContentMockedDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsContent() async {
    return [
      {
        'id': 1,
        'emotion_id': 1,
        'word': '¡Hala!',
        'word_translation':
            'jest to wykrzyknienie używane, aby wyrazić zdziwienie, chociaż używa się go również do wyrażenia wsparcia',
        'example_one':
            '- Me han regalado un viaje de avión a Valencia por mi cumpleaños.',
        'example_two':
            '- ¡Hala! ¡Felicidades! ¡Disfrútalo muchísimo! Valencia es una ciudad fantástica.',
      },
      {
        'id': 2,
        'emotion_id': 1,
        'word': '¡Anda!',
        'word_translation':
            'używamy tego wykrzyknienia, aby wyrazić podziw lub zaskoczenie, a także zachęcić do zrobienia czegoś',
        'example_one': '- Ya no quedan donuts de chocolate en la pastelería.',
        'example_two': '- ¡Anda! Y yo que tenía ganas de probarlos hoy.',
      },
      {
        'id': 3,
        'emotion_id': 1,
        'word': '¡Qué dices!',
        'word_translation':
            'używamy, aby wyrazić zdziwienie i dezorientację w związku z tym, co mówi nam nasz rozmówca',
        'example_one': '- ¡Mi perra ha tenido cachorritos!',
        'example_two':
            '- ¡Qué dices! Pero, si no me habías contado que estaba preñada.',
      },
      {
        'id': 4,
        'emotion_id': 1,
        'word': '¿Pero qué me estás contando?',
        'word_translation':
            'używamy gdy chcemy wyrazić totalny szok lub zdziwienie tym, co właśnie nam ogłoszono',
        'example_one': '- ¡Me voy a casar el mes que viene!',
        'example_two': '- ¿Pero qué me estás contando?',
      },
      {
        'id': 5,
        'emotion_id': 1,
        'word': '¡Qué fuerte!',
        'word_translation': 'używamy w takich samych sytuacjach jak powyżej',
        'example_one':
            '-¿Te has enterado de que Ana y Pedro están saliendo juntos?',
        'example_two': '-¡Qué fuerte! Pero si siempre se han llevado fatal.',
      },
      {
        'id': 6,
        'emotion_id': 1,
        'word': '¡No me digas!',
        'word_translation':
            'używamy wtedy gdy cos wydaje się nam nieprawdopodobne lub zadziwiające',
        'example_one': '-Este año vamos de vacaciones a África.',
        'example_two': '-¡No me digas! ¿Y eso?',
      },
      {
        'id': 7,
        'emotion_id': 1,
        'word': 'Estoy flipando / Yo flipo / Flipo en colores',
        'word_translation':
            'używamy w sytuacjach gdy jesteśmy bardzo zaskoczeni. Może być używane w kontekście pozytywnym lub negatywnym',
        'example_one': '-No me esperaba para nada esa noticia.',
        'example_two': '-Ni yo, estoy flipando.',
      },
      {
        'id': 8,
        'emotion_id': 1,
        'word': '¡Venga ya! / ¡Venga yaaa!',
        'word_translation': 'używamy, gdy jest nam ciężko w coś uwierzyć',
        'example_one': '- ¿Sabes que han despedido a Irene de su trabajo?',
        'example_two': '- ¡Venga ya! Pero si estaba súper bien, ¿no?',
      },
      {
        'id': 9,
        'emotion_id': 1,
        'word': 'No jodas / No me jodas',
        'word_translation':
            'używamy, żeby wyrazić niedowierzanie względem czegoś co zostało powiedziane lub zrobione',
        'example_one': '- Creo que he dejado mi chaqueta en el bar.',
        'example_two': '- ¡No me jodas!',
      },
      {
        'id': 10,
        'emotion_id': 2,
        'word': '¡Vaya tela!',
        'word_translation':
            'używamy, aby zareagować na coś, co mówi nam druga osoba lub na wiadomość, która nas negatywnie zaskakuje, szokuje, denerwuje, oburza',
        'example_one': '- Vaya tela lo de Pedro, ¿no?',
        'example_two': '',
      },
      {
        'id': 11,
        'emotion_id': 2,
        'word': '¡Qué coraje! / ¡Qué rabia!',
        'word_translation': 'używamy, aby wyrazić złość lub irytację',
        'example_one': '- He perdido el tren y no voy a poder ir a la cena...',
        'example_two': '- ¡Qué dices! Aggg ¡¡¡qué rabia/qué coraje!!!',
      },
      {
        'id': 12,
        'emotion_id': 2,
        'word': '¡Vaya mierda! / ¡Qué putada!',
        'word_translation':
            'te dwa wyrażenia wyrażają złość, wściekłość, ale z nutą rozczarowania',
        'example_one':
            '- No voy a poder ir a la fiesta porque se me ha estropeado el coche.',
        'example_two': '- Vaya mierda/Qué putada tío...',
      },
      {
        'id': 13,
        'emotion_id': 2,
        'word': '¡Qué barbaridad!',
        'word_translation': 'może wyrażać oburzenie, zdziwienie, zszokowanie',
        'example_one': '¡Qué barbaridad! No puedo creer lo que acabo de ver.',
        'example_two': '',
      },
      {
        'id': 14,
        'emotion_id': 3,
        'word': 'Ya ves',
        'word_translation':
            'używamy aby powiedzieć, że się z kimś zgadzamy. Synonim do „pues sí',
        'example_one': '- Tengo unas ganas de que llegue el verano…',
        'example_two': '- ¡Ya ves! ¡Yo tampoco puedo esperar!',
      },
      {
        'id': 15,
        'emotion_id': 3,
        'word': 'Ya te digo',
        'word_translation': 'używa się tak samo jak „Ya ves”',
        'example_one': '- Hace un frío increíble.',
        'example_two': '-Ya te digo, tengo la calefacción a tope.',
      },
      {
        'id': 16,
        'emotion_id': 3,
        'word': 'Total',
        'word_translation':
            'używamy gdy chcemy powiedzieć, że całkowicie się zgadzamy z tym co powiedział nasz rozmówca',
        'example_one': '- Creo que Valeria ha sido demasiado dura con Enrique.',
        'example_two': '- Total. Debería de haber sido más amable.',
      },
      {
        'id': 17,
        'emotion_id': 4,
        'word': '¡Vaya palo!',
        'word_translation':
            'gdy ktoś mówi, że przydarzyło mu się coś złego lub przeżył rozczarowanie, używamy tego wyrażenia aby wyrazić empatię, a także potwierdzić że sytuacja rzeczywiście była nieciekawa',
        'example_one':
            '- Suspendió el examen y no puede hacer la carrera que le gusta. ¡Vaya palo!',
        'example_two': '',
      },
      {
        'id': 18,
        'emotion_id': 4,
        'word': '¡Vaya chasco!',
        'word_translation':
            'wyrażenie o podobnym znaczeniu do „Co za rozczarowanie!”',
        'example_one': '- Mañana juega la Juventus',
        'example_two': '- Sí, pero no emiten el partido en España',
      },
      {
        'id': 19,
        'emotion_id': 5,
        'word': '¡Qué guay! / ¡Qué chulo! / Chachi',
        'word_translation':
            'używamy aby wyrazić, że coś nam się bardzo podoba, coś jest super, świetne, wspaniałe, itp.',
        'example_one':
            '- Tu amiga es muy guay, ¡me lo he pasado genial con ella!',
        'example_two': '',
      },
      {
        'id': 20,
        'emotion_id': 5,
        'word': '¡Cómo mola!',
        'word_translation':
            'to wyrażenie może być używane w takim samym kontekście jak powyżej, gdy chcemy powiedzieć, że coś nam się podoba',
        'example_one': '- ¿Qué te parecen mis gafas nuevas?',
        'example_two': '- ¡Cómo molan!',
      },
      {
        'id': 21,
        'emotion_id': 5,
        'word': '¡Qué pasada!',
        'word_translation':
            'używamy w odniesieniu do czegoś wyjątkowo dobrego, niesamowitego, a nawet zaskakującego',
        'example_one':
            '- Mira, mi tía hizo esta colcha a mano y solo tardó dos días.',
        'example_two': '- ¡Qué pasada! ¡Es súper bonita!',
      },
      {
        'id': 22,
        'emotion_id': 5,
        'word': '¡Es la caña! / ¡Es lo más!',
        'word_translation':
            'wyrażenia te są synonimem „bycia świetnym, niezwykłym”, czymś, co jest „super topowe”',
        'example_one': '- ¿Has conocido ya al nuevo profesor de matemáticas?',
        'example_two':
            '- Sí, ¡es la caña! / ¡Es lo más! Es súper simpático y gracioso.',
      },
      {
        'id': 23,
        'emotion_id': 6,
        'word': '¡Qué rollo!/ ¡Vaya rollo!',
        'word_translation': 'oznacza cos baaardzo nudnego',
        'example_one':
            '- Ayer tuve que ir a una conferencia de trabajo que duró dos horas y encima de pie...',
        'example_two': '- Vaya rollo...',
      },
      {
        'id': 24,
        'emotion_id': 6,
        'word': '¡Vaya coñazo! /¡Qué coñazo ! /Ser un coñazo',
        'word_translation': 'coś bardzo nudnego, meczącego',
        'example_one': '- Vaya coñazo de peli.',
        'example_two': '',
      },
      {
        'id': 25,
        'emotion_id': 6,
        'word': '¡Menudo tostón! / ¡Vaya tostón!',
        'word_translation':
            '“tostón” oznacza to samo co „rollo” lub „coñazo”, używamy w takim samym kontekście',
        'example_one':
            '- Menudo tostón de conferencia, no han dicho nada interesante.',
        'example_two': '',
      },
      {
        'id': 26,
        'emotion_id': 7,
        'word': 'Qué le vamos a hacer',
        'word_translation':
            'jest to wyrażenie retoryczne lub pytanie, które oznacza rezygnację w obliczu sytuacji, na którą nie mamy wpływu i która jest uważana za nieuniknioną.',
        'example_one':
            '- Perderás la mitad de tus tierras, pero qué le vamos a hacer.',
        'example_two': '',
      },
      {
        'id': 27,
        'emotion_id': 7,
        'word': 'Es lo que hay',
        'word_translation':
            'wyrażenie używane, gdy trzeba zadowolić się tym, co jest w danej chwili, ponieważ nie ma innego wyjścia, jak tylko to zaakceptować.',
        'example_one':
            '- Me parece fatal que te paguen tan poco por tu trabajo.',
        'example_two': '- Ya, pero bueno, es lo que hay...',
      },
      {
        'id': 28,
        'emotion_id': 7,
        'word': 'No queda otra / No me queda otra',
        'word_translation':
            'wyrażenia tego używa się do przedstawienia czegoś jako jedynej możliwej alternatywy w trudnej sytuacji lub czegoś, co jest obowiązkowe w danych okolicznościach.',
        'example_one':
            '- Tengo muchas deudas, tendré que conseguir un segundo trabajo. No me queda otra.',
        'example_two': '',
      },
      {
        'id': 29,
        'emotion_id': 7,
        'word': '¡Qué remedio!',
        'word_translation':
            'używa się go, gdy sytuacja jest jedynym dostępnym rozwiązaniem lub opcją, czymś nieuniknionym.',
        'example_one': '- No me apetece nada ir a la fiesta.',
        'example_two':
            '- A mí tampoco, pero ¡qué remedio! Nos ha invitado y tenemos que ir.',
      },
    ];
  }
}

// API DATA SOURCE

class EmotionsContentDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsContent() async {
    final response = await Dio().get<List<dynamic>>('link');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
