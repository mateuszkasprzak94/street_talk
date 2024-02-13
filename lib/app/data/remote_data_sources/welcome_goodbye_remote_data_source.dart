import 'package:dio/dio.dart';

class WelcomeGoodbyeDioDataSource {
  Future<List<Map<String, dynamic>>?> getWelcomeGoodbyeData() async {
    final response = await Dio()
        .get<List<dynamic>>('https://api.npoint.io/6ee16762c58cee2b218a');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
