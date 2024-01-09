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
    ];
  }
}
