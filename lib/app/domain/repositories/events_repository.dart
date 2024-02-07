import 'package:street_talk/app/data/remote_data_sources/events_content_remote_data_source.dart';
import 'package:street_talk/app/domain/models/events_model.dart';

class EventsRepository {
  EventsRepository({required this.remoteDataSource});

  final EventsMockedDataSource remoteDataSource;

  Future<List<EventsModel>> getEventsContent(String category) async {
    final json = await remoteDataSource.getEventsContent();
    if (json == null) {
      return [];
    }
    final allEmotions = json.map((item) => EventsModel.fromJson(item)).toList();

    return allEmotions
        .where((element) => element.category == category)
        .toList();
  }
}
