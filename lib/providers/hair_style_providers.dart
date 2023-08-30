import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/model.dart';

class HairdresserProvider {
  final url = Uri.parse('https://www.datos.gov.co/resource/e27n-di57.json');

  Future<List<HairdresserModel>> getHairdressers() async {
    final resp = await http.get(url);

    if (resp.statusCode == 200) {
      String body = utf8.decode(resp.bodyBytes);
      final jsonList = jsonDecode(body);
      final hairdressers = Hairdresser.fromJsonList(jsonList);
      return hairdressers.items;
    } else {
      throw Exception(' Ocurrio Algo ${resp.statusCode}');
    }
  }
}
