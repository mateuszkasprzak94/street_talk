import 'package:street_talk/app/data/remote_data_sources/situation_page_remote_data_source.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';

class SituationRepository {
  SituationRepository({required this.remoteDataSource});

  final SituationDioDataSource remoteDataSource;

  Future<List<SituationModel>> getSituationData() async {
    final json = await remoteDataSource.getSituationData();
    if (json == null) {
      return [];
    }
    return json.map((item) => SituationModel.fromJson(item)).toList();
  }
}
