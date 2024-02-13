import 'package:dio/dio.dart';

class EmotionsContentDioDataSource {
  Future<List<Map<String, dynamic>>?> getEmotionsContent() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.npoint.io/eca52938c03cba140e45');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
