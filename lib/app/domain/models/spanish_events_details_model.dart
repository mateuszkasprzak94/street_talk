class EventCardDetail {
  EventCardDetail({
    required this.title,
    required this.iconAssetName,
    required this.category,
    required this.iconTag,
    required this.location,
    required this.date,
    required this.keyFeatures,
    required this.description,
  });

  final String title;
  final String iconAssetName;
  final String category;
  final String iconTag;
  final String location;
  final String date;
  final String keyFeatures;
  final String description;
}

final List<EventCardDetail> eventCardDetailList = [
  EventCardDetail(
    title: 'Las Fallas',
    iconAssetName: 'assets/assets_events/las_fallas.jpg',
    category: 'las_fallas',
    iconTag: 'fellas_icon',
    location: 'Walencja',
    date: '15 marca do 19 marca',
    keyFeatures:
        'Wielkie rzeźby, pełne życia procesje, fajerwerki, La Planta, Mascletà, La Cremà',
    description:
        'Las Fallas to dynamiczna celebracja w Walencji, znana z gigantycznych rzeźb, pełnych życia atmosfery i spalania ninots, symbolicznie witająca wiosnę.',
  ),
  EventCardDetail(
    title: 'La Tomatina',
    iconAssetName: 'assets/assets_events/la_tomatina.jpg',
    category: 'la_tomatina',
    iconTag: 'tomatina_icon',
    location: 'Buñol',
    date: 'Ostatnia środa sierpnia',
    keyFeatures: 'Bitwa pomidorowa, kolorowe stroje, festynowa atmosfera',
    description:
        'La Tomatina to światowo znany festiwal rzucania pomidorami, podczas którego uczestnicy biorą udział w zabawnej i chaotycznej bitwie pomidorowej na ulicach Buñol',
  ),
  EventCardDetail(
    title: 'La Tamborrada',
    iconAssetName: 'assets/assets_events/la_tamborrada.jpg',
    category: 'la_tamborrada',
    iconTag: 'tamborrada_icon',
    location: 'San Sebastián (Donostia)',
    date: '20 stycznia, start o północy',
    keyFeatures:
        'Zespoły grające na bębnach, tradycyjne stroje, pełne życia procesje.',
    description:
        'La Tamborrada to energetyczny festiwal perkusyjny w San Sebastián, gdzie uczestnicy ubrani jak żołnierze grają na bębnach, świętując patrona miasta',
  ),
  EventCardDetail(
    title: 'Carnaval de Santa Cruz de Tenerife',
    iconAssetName: 'assets/assets_events/de_tenerife.jpg',
    category: 'santa_cruz',
    iconTag: 'santa_cruz_icon',
    location: 'Santa Cruz de Tenerife, Wyspy Kanaryjskie',
    date: 'Luty lub marzec (daty zmienne)',
    keyFeatures:
        'Kolorowe kostiumy, pełne życia parady, różnorodne postacie, muzyka, taniec',
    description:
        'Carnaval de Santa Cruz de Tenerife to karnawał pełen kreatywnych kostiumów, radosnych parad i zabawnej atmosfery',
  ),
  EventCardDetail(
    title: 'Danza de la muerte de Verges',
    iconAssetName: 'assets/assets_events/la_muerte.jpg',
    category: 'danza_de_la_muerte',
    iconTag: 'muerte_icon',
    location: 'Verges, Katalonia',
    date: 'Wielki Czwartek podczas Semana Santa',
    keyFeatures: 'Tradycyjny taniec, kostiumy ze szkieletem, procesja',
    description:
        'Danza de la Muerte de Verges to tradycyjny taniec odbywający się w Wielki Czwartek, gdzie uczestnicy ubrani jak szkielety tworzą unikalne i uroczyste widowisko',
  ),
  EventCardDetail(
    title: 'Feria de Abril',
    iconAssetName: 'assets/assets_events/feria_de_abril.jpg',
    category: 'feria_de_abril',
    iconTag: 'abril_icon',
    location: 'Sewilla',
    date: 'Dwa tygodnie po Wielkanocy',
    keyFeatures: 'Casetas, suknie flamenco, zaprzęgi konne, występy taneczne',
    description:
        'Feria de Abril to radosne andaluzyjskie targi z kolorowymi budykami, muzyką flamenco i radosnym świętowaniem kultury Sewilli',
  ),
  EventCardDetail(
    title: 'Castells w Tarragonie',
    iconAssetName: 'assets/assets_events/castells.jpg',
    category: 'castells',
    iconTag: 'castells_icon',
    location: 'Tarragona, Katalonia',
    date: 'Różne wydarzenia przez cały rok',
    keyFeatures: 'Ludzkie wieże (Castells), praca zespołowa, tradycyjne stroje',
    description:
        'Tarragona słynie z Castells, gdzie zespoły tworzą imponujące ludzkie wieże, prezentując jedność, siłę i tradycyjną kulturę katalońską',
  ),
  EventCardDetail(
    title: 'Batalla del vino',
    iconAssetName: 'assets/assets_events/del_vino.jpg',
    category: 'batalla_del_vino',
    iconTag: 'vino_icon',
    location: 'Haro, La Rioja',
    date: 'Koniec czerwca',
    keyFeatures: 'Bitwa wina, uczestnicy w bieli, malownicze winnice',
    description:
        'Haro Wine Festival obejmuje kultową Bitwę Wina, gdzie uczestnicy polewają się czerwonym winem, świętując winiarską tradycję regionu',
  ),
  EventCardDetail(
    title: 'Fiesta de los Enharinados',
    iconAssetName: 'assets/assets_events/los_enharinados.jpg',
    category: 'los_enharinados',
    iconTag: 'enharinados_icon',
    location: 'Ibi, Alicante',
    date: 'Koniec sierpnia',
    keyFeatures:
        'Bitwa mączna, uczestnicy pokryci mąką, pełne życia uliczne festiwale.',
    description:
        'Fiesta de los Enharinados to unikalny festiwal w Ibi, gdzie uczestnicy biorą udział w zabawnej walce mącznej, tworząc pełną życia i radosną atmosferę',
  ),
  EventCardDetail(
    title: 'San Fermín',
    iconAssetName: 'assets/assets_events/san_fermin.jpg',
    category: 'san_fermin',
    iconTag: 'fermin_icon',
    location: 'Pamplona',
    date: '6 lipca do 14 lipca',
    keyFeatures:
        'Biegi byków, biało-czerwona odzież, pełne adrenaliny środowisko.',
    description:
        'San Fermín słynie z odważnych Biegów Byków, gdzie uczestnicy biegną wzdłuż wąskich ulic razem z bykami, łącząc tradycję z ekscytującym przeżyciem',
  ),
];
