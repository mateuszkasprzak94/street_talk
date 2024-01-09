class EmotionsNameMockedDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsName() async {
    return [
      {
        'id': 1,
        'emotion_name': 'Zdziwienie / Zaskoczenie',
        'emotion_name_translation': 'Sorpresa',
      },
      {
        'id': 2,
        'emotion_name': 'Złość / Irytacja',
        'emotion_name_translation': 'Ira / Irritación',
      },
      {
        'id': 3,
        'emotion_name': 'Zgadzanie się z czymś / z kimś',
        'emotion_name_translation': 'Estar de acuerdo con algo/alguien',
      },
      {
        'id': 4,
        'emotion_name': 'Rozczarowanie',
        'emotion_name_translation': 'Decepción',
      },
      {
        'id': 5,
        'emotion_name': 'Radość / Entuzjazm',
        'emotion_name_translation': 'Alegría/Entusiasmo',
      },
      {
        'id': 6,
        'emotion_name': 'Znudzenie',
        'emotion_name_translation': 'Aburrimiento',
      },
      {
        'id': 7,
        'emotion_name': 'Rezygnacja',
        'emotion_name_translation': 'Resignación',
      },
    ];
  }
}
