import 'package:injectable/injectable.dart';
import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart';
import 'package:street_talk/app/domain/models/street_model.dart';

@injectable
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
