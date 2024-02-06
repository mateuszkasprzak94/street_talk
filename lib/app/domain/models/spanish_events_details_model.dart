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
      title: 'Las Fellas Festival',
      iconAssetName: 'assets/assets_events/feria_de_abril.jpg',
      category: 'las_fellas',
      iconTag: 'fellas_icon'),
  EventCardDetail(
      title: 'La Tomatina',
      iconAssetName: 'assets/assets_events/la_tomatina.jpg',
      category: 'la_tomatina',
      iconTag: 'tomatina_icon'),
  EventCardDetail(
      title: 'Semana Santa',
      iconAssetName: 'assets/assets_events/semana_santa.jpg',
      category: 'semana_santa',
      iconTag: 'semana_icon'),
  EventCardDetail(
      title: 'Sitges Carnival',
      iconAssetName: 'assets/assets_events/sitges_carnival.jpg',
      category: 'sitges_carnival',
      iconTag: 'sitges_icon'),
  EventCardDetail(
      title: 'Fiesta de San Isidro',
      iconAssetName: 'assets/assets_events/fiesta_de_san_isidro.jpg',
      category: 'san_isidro',
      iconTag: 'isidro_icon'),
  EventCardDetail(
      title: 'Feria de Abril',
      iconAssetName: 'assets/assets_events/feria_de_abril.jpg',
      category: 'feria_de_abril',
      iconTag: 'abril_icon'),
  EventCardDetail(
      title: 'Semana Grande',
      iconAssetName: 'assets/assets_events/semana_grande.jpg',
      category: 'semana_grande',
      iconTag: 'semana_icon'),
  EventCardDetail(
      title: 'Haro Wine Festival',
      iconAssetName: 'assets/assets_events/haro_wine_festival.jpg',
      category: 'wine_festival',
      iconTag: 'wine_icon'),
  EventCardDetail(
      title: 'Fiesta de la Mercè',
      iconAssetName: 'assets/assets_events/fiesta_de_la_merce',
      category: 'la_merce',
      iconTag: 'merce_icon'),
  EventCardDetail(
      title: 'San Fermín (Bieg Byków w Pampelunie)',
      iconAssetName: 'assets/assets_events/san_fermin.jpg',
      category: 'san_fermin',
      iconTag: 'fermin_icon'),
];
