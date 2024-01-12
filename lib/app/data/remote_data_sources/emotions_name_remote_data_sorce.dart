import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class EmotionsNameMockedDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsName() async {
    return [
      {
        'id': 1,
        'image': 'assets/emotions_images/surprised.jpg',
        'emotion': 'Zdziwienie / Zaskoczenie',
        'emotion_translation': 'Sorpresa',
      },
      {
        'id': 2,
        'image': 'assets/emotions_images/angry.jpg',
        'emotion': 'Złość / Irytacja',
        'emotion_translation': 'Ira / Irritación',
      },
      {
        'id': 3,
        'image': 'assets/emotions_images/agree.jpg',
        'emotion': 'Zgadzanie się z czymś / z kimś',
        'emotion_translation': 'Estar de acuerdo con algo/alguien',
      },
      {
        'id': 4,
        'image': 'assets/emotions_images/disappointment.jpg',
        'emotion': 'Rozczarowanie',
        'emotion_translation': 'Decepción',
      },
      {
        'id': 5,
        'image': 'assets/emotions_images/happy.jpg',
        'emotion': 'Radość / Entuzjazm',
        'emotion_translation': 'Alegría/Entusiasmo',
      },
      {
        'id': 6,
        'image': 'assets/emotions_images/bored.jpg',
        'emotion': 'Znudzenie',
        'emotion_translation': 'Aburrimiento',
      },
      {
        'id': 7,
        'image': 'assets/emotions_images/resignation.jpg',
        'emotion': 'Rezygnacja',
        'emotion_translation': 'Resignación',
      },
    ];
  }
}

// API DATA SOURCE

class EmotionsContentDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsName() async {
    final response = await Dio().get<List<dynamic>>('link');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
