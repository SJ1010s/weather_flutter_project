import 'dart:async';
import 'dart:core';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:weather_flutter_project/model/WeatherData.dart';
import 'package:weather_flutter_project/model/WeatherDataRequest.dart';

var weatherDataRequest = WeatherDataRequest();
class WeatherMainState with ChangeNotifier {


  Future<WeatherData> weatherData = weatherDataRequest.getResponseData();

  late String _cityName = "Город";
  String get cityName => _cityName;

  late String _temp = "";

  String get temp => _temp;

  late String _feelsLike = "";

  String get feelsLike => _feelsLike;

  late String _description = "";

  String get description => _description;

  late String _humidity = "";

  String get humidity => _humidity;
  
  initWeatherState(){
    weatherData.then((value){
      _cityName = value.name.toString();
      log(_cityName);
      _temp = value.main.temp.toStringAsFixed(0);
      log(_temp);
      _feelsLike = value.main.feelsLike.toStringAsFixed(0);
      _description = value.weather.first['description'].toString();
      _humidity = value.main.humidity.toString();
      notifyListeners();});
  }
}
