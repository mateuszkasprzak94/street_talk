import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:street_talk/app/domain/models/street_model.dart';

part 'generated/street_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class StreetRetrofitDataSource {
  @factoryMethod
  factory StreetRetrofitDataSource(Dio dio) = _StreetRetrofitDataSource;

  @GET('/015d09380f8b4887bd68')
  Future<List<StreetModel>> getStreetData();
}
