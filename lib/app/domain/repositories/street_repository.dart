import 'package:street_talk/app/data/remote_data_sources/street_page_data_source/street_remote_data_source.dart';
import 'package:street_talk/app/domain/models/street_model.dart';

class StreetRepository {
  StreetRepository({required this.remoteDataSource});

  final StreetMockedDataSource remoteDataSource;

  Future<List<StreetModel>> getStreetData() async {
    final json = await remoteDataSource.getStreetData();
    if (json == null) {
      return [];
    }
    return json.map((item) => StreetModel.fromJson(item)).toList();
  }
}