import 'dart:convert';

import 'package:clime_provider/entity/weather_response.dart';
import 'package:clime_provider/services/networking.dart';

import 'package:flutter/material.dart';

class WeatherModel extends ChangeNotifier {

  WeatherResponse? _weather;

  WeatherResponse get weather => _weather ?? WeatherResponse();

  Future getWeather({latitude, longitude}) async {
    _weather = await NetworkHelper().getData(lat: latitude, lng: longitude);
    notifyListeners();
  }
}
