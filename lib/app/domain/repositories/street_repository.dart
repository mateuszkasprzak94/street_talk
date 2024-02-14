import 'package:street_talk/app/data/remote_data_sources/street_remote_data_source.dart';
import 'package:street_talk/app/domain/models/street_model.dart';

class StreetRepository {
  StreetRepository({required this.remoteDataSource});

  final StreetRetrofitDataSource remoteDataSource;

  Future<List<StreetModel>> getStreetData() async {
    return await remoteDataSource.getStreetData();
  }
}
