class EventCardDetail {
  EventCardDetail({
    required this.title,
    required this.iconAssetName,
    required this.category,
    required this.iconTag,
  });

  final String title;
  final String iconAssetName;
  final String category;
  final String iconTag;
}

const double opacity = 0.5;

final List<EventCardDetail> eventCardDetailList = [
  EventCardDetail(
      title: 'Las Fallas',
      iconAssetName: 'assets/assets_events/las_fallas.jpg',
      category: 'las_fellas',
      iconTag: 'fellas_icon'),
  EventCardDetail(
      title: 'La Tomatina',
      iconAssetName: 'assets/assets_events/la_tomatina.jpg',
      category: 'la_tomatina',
      iconTag: 'tomatina_icon'),
  EventCardDetail(
      title: 'La Tamborrada',
      iconAssetName: 'assets/assets_events/la_tamborrada.jpg',
      category: 'la_tamborrada',
      iconTag: 'tamborrada_icon'),
  EventCardDetail(
      title: 'Carnaval de Santa Cruz de Tenerife',
      iconAssetName: 'assets/assets_events/de_tenerife.jpg',
      category: 'santa_cruz',
      iconTag: 'santa_cruz_icon'),
  EventCardDetail(
      title: 'Danza de la muerte de Verges',
      iconAssetName: 'assets/assets_events/la_muerte.jpg',
      category: 'danza_de_la_muerte',
      iconTag: 'muerte_icon'),
  EventCardDetail(
      title: 'Feria de Abril',
      iconAssetName: 'assets/assets_events/feria_de_abril.jpg',
      category: 'feria_de_abril',
      iconTag: 'abril_icon'),
  EventCardDetail(
      title: 'Castells w Tarragonie',
      iconAssetName: 'assets/assets_events/castells.jpg',
      category: 'castells',
      iconTag: 'castells_icon'),
  EventCardDetail(
      title: 'Batalla del vino',
      iconAssetName: 'assets/assets_events/del_vino.jpg',
      category: 'batalla_del_vino',
      iconTag: 'vino_icon'),
  EventCardDetail(
      title: 'Fiesta de los Enharinados',
      iconAssetName: 'assets/assets_events/los_enharinados.jpg',
      category: 'los_enharinados',
      iconTag: 'enharinados_icon'),
  EventCardDetail(
      title: 'San Fermín',
      iconAssetName: 'assets/assets_events/san_fermin.jpg',
      category: 'san_fermin',
      iconTag: 'fermin_icon'),
];
