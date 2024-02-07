class EventsMockedDataSource {
  Future<List<Map<String, dynamic>>?> getEventsContent() async {
    return [
      {
        'category': 'las_fellas',
        'location': 'Walencja',
        'date': '15 marca do 19 marca',
        'key_features':
            'Wielkie rzeźby, pełne życia procesje, fajerwerki, La Planta, Mascletà, La Cremà',
        'description':
            'Las Fallas to dynamiczna celebracja w Walencji, znana z gigantycznych rzeźb, pełnych życia atmosfery i spalania ninots, symbolicznie witająca wiosnę.',
      },
      {
        'category': 'la_tomatina',
        'location': 'Buñol',
        'date': 'Ostatnia środa sierpnia',
        'key_features':
            'Bitwa pomidorowa, kolorowe stroje, festynowa atmosfera',
        'description':
            'La Tomatina to światowo znany festiwal rzucania pomidorami, podczas którego uczestnicy biorą udział w zabawnej i chaotycznej bitwie pomidorowej na ulicach Buñol',
      },
      {
        'category': 'la_tamborrada',
        'location': 'San Sebastián (Donostia)',
        'date': '20 stycznia, start o północy',
        'key_features':
            'Zespoły grające na bębnach, tradycyjne stroje, pełne życia procesje.',
        'description':
            'La Tamborrada to energetyczny festiwal perkusyjny w San Sebastián, gdzie uczestnicy ubrani jak żołnierze grają na bębnach, świętując patrona miasta',
      },
      {
        'category': 'santa_cruz',
        'location': 'Santa Cruz de Tenerife, Wyspy Kanaryjskie',
        'date': 'Luty lub marzec (daty zmienne)',
        'key_features':
            'Kolorowe kostiumy, pełne życia parady, różnorodne postacie, muzyka, taniec',
        'description':
            'Carnaval de Santa Cruz de Tenerife to karnawał pełen kreatywnych kostiumów, radosnych parad i zabawnej atmosfery',
      },
      {
        'category': 'danza_de_la_muerte',
        'location': 'Verges, Katalonia',
        'date': 'Wielki Czwartek podczas Semana Santa',
        'key_features': 'Tradycyjny taniec, kostiumy ze szkieletem, procesja',
        'description':
            'Danza de la Muerte de Verges to tradycyjny taniec odbywający się w Wielki Czwartek, gdzie uczestnicy ubrani jak szkielety tworzą unikalne i uroczyste widowisko',
      },
      {
        'category': 'feria_de_abril',
        'location': 'Sewilla',
        'date': 'Dwa tygodnie po Wielkanocy',
        'key_features':
            'Casetas, suknie flamenco, zaprzęgi konne, występy taneczne',
        'description':
            'Feria de Abril to radosne andaluzyjskie targi z kolorowymi budykami, muzyką flamenco i radosnym świętowaniem kultury Sewilli',
      },
      {
        'category': 'castells',
        'location': 'Tarragona, Katalonia',
        'date': 'Różne wydarzenia przez cały rok',
        'key_features':
            'Ludzkie wieże (Castells), praca zespołowa, tradycyjne stroje',
        'description':
            'Tarragona słynie z Castells, gdzie zespoły tworzą imponujące ludzkie wieże, prezentując jedność, siłę i tradycyjną kulturę katalońską',
      },
      {
        'category': 'batalla_del_vino',
        'location': 'Haro, La Rioja',
        'date': 'Koniec czerwca',
        'key_features': 'Bitwa wina, uczestnicy w bieli, malownicze winnice',
        'description':
            'Haro Wine Festival obejmuje kultową Bitwę Wina, gdzie uczestnicy polewają się czerwonym winem, świętując winiarską tradycję regionu',
      },
      {
        'category': 'los_enharinados',
        'location': 'Ibi, Alicante',
        'date': 'Koniec sierpnia',
        'key_features':
            'Bitwa mączna, uczestnicy pokryci mąką, pełne życia uliczne festiwale.',
        'description':
            'Fiesta de los Enharinados to unikalny festiwal w Ibi, gdzie uczestnicy biorą udział w zabawnej walce mącznej, tworząc pełną życia i radosną atmosferę',
      },
      {
        'category': 'san_fermin',
        'location': 'Pamplona',
        'date': '6 lipca do 14 lipca',
        'key_features':
            'Biegi byków, biało-czerwona odzież, pełne adrenaliny środowisko.',
        'description':
            'San Fermín słynie z odważnych Biegów Byków, gdzie uczestnicy biegną wzdłuż wąskich ulic razem z bykami, łącząc tradycję z ekscytującym przeżyciem',
      },
    ];
  }
}
