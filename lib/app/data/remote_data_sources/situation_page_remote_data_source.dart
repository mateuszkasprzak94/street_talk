import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:street_talk/app/domain/models/situations_model.dart';

part 'generated/situation_page_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class SituationRetrofitDataSource {
  @factoryMethod
  factory SituationRetrofitDataSource(Dio dio) = _SituationRetrofitDataSource;

  @GET('/e545b01cd8ccc9e6c65a')
  Future<List<SituationModel>> getSituationData();
}