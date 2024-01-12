import 'package:injectable/injectable.dart';

@injectable
class SituationMockedDataSource {
  Future<List<Map<String, dynamic>>?> getSituationData() async {
    return [
      {
        'id': 1,
        'word': '1. Estar de buen/mal rollo',
        'word_translation': 'być w dobrym/złym humorze',
        'example_one':
            'Me encanta quedar con Juan porque siempre está de buen rollo.',
        'example_two': '',
      },
      {
        'id': 2,
        'word': '2. Sentirse como el culo',
        'word_translation': 'źle się czuć',
        'example_one':
            'Ayer no salí de fiesta porque me sentía como el culo y decidí quedarme en casa.',
        'example_two': '',
      },
      {
        'id': 3,
        'word': '3. Planchar la oreja',
        'word_translation': 'iść spać',
        'example_one':
            'Entiendo que te fuiste a planchar la oreja pero yo realmente necesitaba tu ayuda en aquel momento.',
        'example_two': '',
      },
      {
        'id': 4,
        'word': '4. Dejar (a alguien) con el culo al aire',
        'word_translation': 'zostawić kogoś na lodzie',
        'example_one':
            'Pensé que me ibas a echar una mano y, en cambio, me dejaste con el culo al aire. ',
        'example_two': '',
      },
      {
        'id': 5,
        'word': '5. Voy loca/loco',
        'word_translation': '“nie wyrabiam”, “mam za dużo na głowie”',
        'example_one':
            '…es que voy loca y no puedo dormir con tanta preocupación. ',
        'example_two': '',
      },
      {
        'id': 6,
        'word': '6. Andar mal de algo',
        'word_translation': 'być u kogoś krucho z czymś',
        'example_one':
            '¿Te importaría prestarme unos 50 pavos? Es que ando mal de dinero y lo necesito ahora.',
        'example_two': '',
      },
      {
        'id': 7,
        'word': '7. Tenerle manía a alguien',
        'word_translation': 'uwziąć się na kimś',
        'example_one':
            'Creo que el profesor de matemáticas me tiene manía, me ha suspendido injustamente.',
        'example_two': '',
      },
      {
        'id': 8,
        'word': '8. Estar manga por hombro/ estar patas arriba',
        'word_translation': 'gdy coś jest w nieładzie, zaniedbaniu',
        'example_one':
            'Desde que cambiaron al jefe, todo está manga por hombro en la empresa.',
        'example_two': '',
      },
      {
        'id': 9,
        'word': '9. Tener cara de perro',
        'word_translation':
            'mieć zły wyraz twarzy, który jest spowodowany przez złość lub zły dzień',
        'example_one': '¿Qué te pasa? Vaya cara de perro tienes…',
        'example_two': '',
      },
      {
        'id': 10,
        'word': '10. Llevarse el gato al agua',
        'word_translation': 'osiągnąć coś bardzo trudnego ',
        'example_one':
            'María tuvo que hacer un esfuerzo considerable para conseguir un ascenso en el trabajo pero al final se llevó el gato al agua y ahora gana muy buen dinero.',
        'example_two': '',
      },
      {
        'id': 11,
        'word': '11. Ir pisando huevos',
        'word_translation': 'iść bardzo powoli/ wlec się',
        'example_one': '¡Venga Carla, date prisa que vas pisando huevos!',
        'example_two': '',
      },
      {
        'id': 12,
        'word': '12. Estar hasta en la sopa',
        'word_translation': 'pojawiać się wszędzie (ktoś lub coś)',
        'example_one':
            'Estoy harta de la pandemia. ¡Las noticias sobre este tema están hasta en la sopa! ',
        'example_two': '',
      },
      {
        'id': 13,
        'word': '13. No ser trigo limpio',
        'word_translation':
            'oznacza, że ktoś lub coś nie jest tak nieskazitelne lub bez winy jak się wydaje na pierwszy rzut oka ',
        'example_one':
            'Después de haber atacado el banco, se dieron a la fuga. Ellos nunca me parecieron trigo limpio.',
        'example_two': '',
      },
      {
        'id': 14,
        'word': '14. Estar sin blanca/ estar a dos velas',
        'word_translation': 'być bez grosza',
        'example_one': '- Esta tarde vamos al cine, ¿te apuntas?',
        'example_two': '- No puedo, estoy sin blanca ',
      },
      {
        'id': 15,
        'word': '15. Aburrirse como una ostra',
        'word_translation': 'strasznie się nudzić',
        'example_one':
            'Ayer en la reunión del trabajo, me aburrí como una ostra, mi jefe no paró de hablar del mismo tema.',
        'example_two': '',
      },
      {
        'id': 16,
        'word': '16. Estar como un flan',
        'word_translation': 'być zdenerwowanym, zestresowanym',
        'example_one': '- ¿Qué te pasa? Es que estás como un flan ',
        'example_two':
            '- Hoy tengo una entrevista muy importante y necesito que todo salga bien.',
      },
      {
        'id': 17,
        'word': '17. Hacer la vista gorda',
        'word_translation': 'udawać, ze się czegoś nie widziało',
        'example_one':
            'La policía hizo la vista gorda cuando nos vio bebiendo alcohol en el parque. Todos sabemos que beber en la calle está prohibido.',
        'example_two': '',
      },
      {
        'id': 18,
        'word': '18.  Me cago en la leche (cagarse en la leche)',
        'word_translation':
            'łagodne przekleństwo, którego używa się gdy coś nam nie wyszło (odpowiednik Fuck)',
        'example_one': '¡Me cago en la leche, he perdido las llaves!',
        'example_two': '',
      },
      {
        'id': 19,
        'word': '19. Estar de mala leche',
        'word_translation': 'być w złym humorze ',
        'example_one':
            'El nuevo profesor de literatura es un hombre muy serio que siempre parece estar de mala leche.',
        'example_two': '',
      },
      {
        'id': 20,
        'word': '20. A toda leche',
        'word_translation':
            'na całą parę (odnosi się do szybkości, intensywności, głośności wykonywanej czynności)',
        'example_one':
            'La policía iba a toda leche porque estaban robando el Banco de España.',
        'example_two': '',
      },
    ];
  }
}
