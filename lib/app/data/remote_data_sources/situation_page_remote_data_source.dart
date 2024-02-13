import 'package:dio/dio.dart';

class SituationDioDataSource {
  Future<List<Map<String, dynamic>>?> getSituationData() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.npoint.io/e545b01cd8ccc9e6c65a');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
