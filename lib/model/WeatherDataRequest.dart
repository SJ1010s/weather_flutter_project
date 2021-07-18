
import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';

import 'WeatherData.dart';

class WeatherDataRequest{

  Future<WeatherData> getResponseData() async {
    final url = await Uri.http("api.openweathermap.org", "/data/2.5/weather", {
      "id": "1510853",
      "units": "metric",
      "lang": "ru",
      "appid": "33020a8305ee2a1b97e1c10307ba658b"
    });
    final response = await get(url);
    log(response.body);
    return WeatherData.fromJson(jsonDecode(response.body));
  }
}