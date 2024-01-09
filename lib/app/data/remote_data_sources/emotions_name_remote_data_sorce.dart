class EmotionsNameMockedDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsName() async {
    return [
      {
        'id': 1,
        'emotion': 'Zdziwienie / Zaskoczenie',
        'emotion_translation': 'Sorpresa',
      },
      {
        'id': 2,
        'emotion': 'Złość / Irytacja',
        'emotion_translation': 'Ira / Irritación',
      },
      {
        'id': 3,
        'emotion': 'Zgadzanie się z czymś / z kimś',
        'emotion_translation': 'Estar de acuerdo con algo/alguien',
      },
      {
        'id': 4,
        'emotion': 'Rozczarowanie',
        'emotion_translation': 'Decepción',
      },
      {
        'id': 5,
        'emotion': 'Radość / Entuzjazm',
        'emotion_translation': 'Alegría/Entusiasmo',
      },
      {
        'id': 6,
        'emotion': 'Znudzenie',
        'emotion_translation': 'Aburrimiento',
      },
      {
        'id': 7,
        'emotion': 'Rezygnacja',
        'emotion_translation': 'Resignación',
      },
    ];
  }
}
