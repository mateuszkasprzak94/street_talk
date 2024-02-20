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
    keyFeatures: 'Gigantyczne rzeźby, procesje, fajerwerki, spalenie ninots.',
    description:
        'Las Fallas to nie tylko festiwal sztuki, jest również manifestacją tradycji, szczęścia i wspólnoty. Jest to okazja, kiedy mieszkańcy Walencji świętują razem, oddając hołd twórczości i symbolice. Las Fallas przyciąga zarówno miłośników sztuki, jak i tych, którzy chcą poczuć wyjątkową atmosferę hiszpańskiej tradycji. To wydarzenie napełnia miasto życiem, kolorami i radością, tworząc niezapomniane chwile dla tych, którzy są świadkami tej ekscytującej celebracji.',
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
        'La Tomatina to wyjątkowe święto, które przyciąga ludzi z całego świata do malowniczej miejscowości Buñol. Jest to nie tylko zabawna bitwa pomidorowa, jest to również okazja do łączenia się ze społecznością i doświadczenia ducha festiwalu. Uczestnicy, ubrani w kolorowe stroje, zanurzają się w tym kreatywnym szaleństwie, rzucając pomidorami i biorąc udział w spontanicznych zabawach na ulicach. La Tomatina to nie tylko festiwal jedzenia, jest to również wyjątkowy sposób na wyrażenie szczęścia, spontaniczności i wspólnoty. To zdecydowanie jedno z najbardziej nietypowych i zabawnych wydarzeń w Hiszpanii.',
  ),
  EventCardDetail(
    title: 'La Tamborrada',
    iconAssetName: 'assets/assets_events/la_tamborrada.jpg',
    category: 'la_tamborrada',
    iconTag: 'tamborrada_icon',
    location: 'San Sebastián (Donostia)',
    date: '20 stycznia, start o północy',
    keyFeatures:
        'Rytmiczne dźwięki bębnów, tradycyjne stroje nawiązujące do okresu napoleońskiego, procesje, wspólnota celebrująca Świętego Sebastiana (patrona miasta), oraz całodniowa festynowa atmosfera nasycona muzyką, tańcem i radością.',
    description:
        'La Tamborrada to tradycyjny festiwal muzyczny i jedno z najbardziej charakterystycznych wydarzeń w hiszpańskim mieście San Sebastián. Ten festiwal to hołd złożony Świętemu Sebastianowi, patronowi miasta. Podczas La Tamborrada miasto ożywa dźwiękiem bębnów, a mieszkańcy biorą udział w ulicznych procesjach, paradach i koncertach, tworząc niezapomnianą atmosferę radości i wspólnoty. Uczestnicy ubrani w tradycyjne stroje z okresu napoleońskiego odgrywają różnorodne role, a bębny rozbrzmiewają przez całą dobę, tworząc niepowtarzalny dźwiękowy krajobraz. To wyjątkowe święto łączy tradycję, muzykę i wspólnotę, przyciągając zarówno lokalną społeczność, jak i turystów, chcących doświadczyć niezwykłej atmosfery La Tamborrada.',
  ),
  EventCardDetail(
    title: 'Carnaval de Santa Cruz de Tenerife',
    iconAssetName: 'assets/assets_events/de_tenerife.jpg',
    category: 'santa_cruz',
    iconTag: 'santa_cruz_icon',
    location: 'Santa Cruz de Tenerife, Wyspy Kanaryjskie',
    date: 'Luty lub marzec (daty zmienne)',
    keyFeatures:
        'Kolorowe kostiumy, pełne życia parady, różnorodne postacie, muzyka, taniec, konkursy',
    description:
        'Carnaval de Santa Cruz de Tenerife to kolorowy festiwal karnawałowy, uważany za jeden z największych na świecie, odbywający się w hiszpańskim mieście Santa Cruz de Tenerife na Wyspach Kanaryjskich. Charakteryzuje go ekscytujące połączenie tradycji, muzyki, tańca i bogatych strojów, przyciągając tłumy uczestników z różnych zakątków świata. W trakcie karnawału odbywają się liczne parady, konkursy strojów, koncerty oraz zabawy uliczne, tworząc atmosferę radosnej celebracji i luźnej, beztroskiej zabawy. Carnival Queen Pageant, konkurs wyboru królowej karnawału, stanowi jedno z najważniejszych wydarzeń, podkreślając luksus i ekstrawagancję strojów prezentowanych podczas festiwalu. Karnawał de Santa Cruz de Tenerife przyciąga miłośników kolorowej rozrywki, stając się niezapomnianym doświadczeniem kulturowym.',
  ),
  EventCardDetail(
    title: 'Danza de la muerte de Verges',
    iconAssetName: 'assets/assets_events/la_muerte.jpg',
    category: 'danza_de_la_muerte',
    iconTag: 'muerte_icon',
    location: 'Verges, Katalonia',
    date: 'Wielki Czwartek podczas Semana Santa',
    keyFeatures:
        'Czarne stroje i maski szkieletów, procesja, unikalny taniec, tradycja sięgająca XIV wieku, obchody Wielkiego Tygodnia, hiszpańskie miasteczko Verges, Katalonia.',
    description:
        'Danza de la Muerte de Verges to tradycyjna procesja, odbywająca się w Wielki Czwartek w hiszpańskim miasteczku Verges w Katalonii. Uczestnicy w czarnych strojach i maskach szkieletów symbolizują śmierć, prezentując unikalny taniec i choreografię, które mają korzenie sięgające XIV wieku. To wyjątkowe wydarzenie przyciąga zarówno lokalną społeczność, jak i turystów, chcących doświadczyć bogactwa tradycji i kultury tego regionu.',
  ),
  EventCardDetail(
    title: 'Feria de Abril',
    iconAssetName: 'assets/assets_events/feria_de_abril.jpg',
    category: 'feria_de_abril',
    iconTag: 'abril_icon',
    location: 'Sewilla',
    date: 'Dwa tygodnie po Wielkanocy',
    keyFeatures:
        'Feria de Abril to tradycyjne andaluzyjskie święto w Sewilli, charakteryzujące się kolorowymi dekoracjami, tradycyjnymi strojami flamenco, tańcami, paradami konnymi, muzyką flamenco i wyjątkową atmosferą festiwalowej radości.',
    description:
        'Feria de Abril to barwne i radosne andaluzyjskie święto obchodzone w Sewilli, zazwyczaj w drugiej połowie kwietnia. Uczestnicy celebrują to wydarzenie poprzez kolorowe dekoracje, tradycyjne stroje, muzykę flamenco, tańce i paradę konną. Atmosfera festiwalu jest nasycona energią, a "casetas" (namioty) stają się miejscem spotkań, tańców i świątecznej zabawy.',
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
        'Castells w Tarragonie to coroczne widowisko, w ramach którego zespoły, zwane "colles", tworzą imponujące ludzkie wieże, sięgające kilkunastu pięter wysokości, podczas zawodów mających miejsce w centrum katalońskiej tradycji ludowej. To spektakularne przedstawienie wymaga nie tylko siły, ale także precyzji, techniki i współpracy, stanowiąc symboliczne wyrażenie jedności społeczności oraz katalońskiej dumny i tradycji.',
  ),
  EventCardDetail(
    title: 'Batalla del vino',
    iconAssetName: 'assets/assets_events/del_vino.jpg',
    category: 'batalla_del_vino',
    iconTag: 'vino_icon',
    location: 'Haro, La Rioja',
    date: 'Koniec czerwca',
    keyFeatures:
        'Bitwa del Vino to coroczne święto w Haro, gdzie uczestnicy w białych strojach uczestniczą w radosnej bitwie czerwonym winem, celebrując lokalną kulturę winiarską regionu La Rioja.',
    description:
        'Batalla del Vino, znana również jako Bitwa Wina, to niezwykłe hiszpańskie święto, które odbywa się w miasteczku Haro w regionie La Rioja. Uczestnicy festiwalu ubrani w białe stroje biorą udział w symbolicznej bitwie, podczas której polewają się czerwonym winem, tworząc jednocześnie unikalne widowisko i celebrując bogactwo kultury winiarskiej regionu La Rioja.',
  ),
  EventCardDetail(
    title: 'Fiesta de los Enharinados',
    iconAssetName: 'assets/assets_events/los_enharinados.jpg',
    category: 'los_enharinados',
    iconTag: 'enharinados_icon',
    location: 'Ibi, Alicante',
    date: 'Koniec sierpnia',
    keyFeatures:
        'Chaotyczna bitwa mąką, gdzie uczestnicy w kolorowych strojach celebrują wspólnotę poprzez spontaniczną i radosną zabawę. To wyjątkowe wydarzenie podkreśla lokalną tradycję, jednocząc mieszkańców w atmosferze beztroskiej festiwalowej radości.',
    description:
        'Fiesta de los Enharinados to tradycyjne hiszpańskie święto obchodzone w miejscowości Ibi w regionie Alicante. Podczas tego kolorowego festiwalu, znane także jako Bitwa na Mąkę, mieszkańcy i odwiedzający rzucają się nawzajem mąką, tworząc chaotyczną i radosną bitwę, podkreślającą ducha zabawy i wspólnoty.',
  ),
  EventCardDetail(
    title: 'San Fermín',
    iconAssetName: 'assets/assets_events/san_fermin.jpg',
    category: 'san_fermin',
    iconTag: 'fermin_icon',
    location: 'Pamplona',
    date: '6 lipca do 14 lipca',
    keyFeatures:
        'Bieg przed bykami w tradycyjnych strojach, charakterystyczne czerwone szale, radosna atmosfera, a także korzenie w tradycji religijnej, upamiętniając patrona Nawarry, świętego Fermína.',
    description:
        'San Fermín to słynne hiszpańskie święto, odbywające się w mieście Pamplona, w regionie Nawarry. Najbardziej znana jest za festiwal byków, gdzie uczestnicy, zwani "mozos", biegną przed stadem byków po ulicach miasta do areny, tworząc spektakularne i emocjonujące widowisko.',
  ),
];
