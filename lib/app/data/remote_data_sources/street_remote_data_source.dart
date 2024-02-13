import 'package:dio/dio.dart';

class StreetDioDataSource {
  Future<List<Map<String, dynamic>>?> getStreetData() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.npoint.io/015d09380f8b4887bd68');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
