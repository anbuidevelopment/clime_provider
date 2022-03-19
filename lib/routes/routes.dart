import 'package:clime_provider/screens/city_screen.dart';
import 'package:clime_provider/screens/loading_screen.dart';
import 'package:clime_provider/screens/location_screen.dart';
import 'package:clime_provider/utilities/constants.dart';
import 'package:flutter/material.dart';

class RouteManager {
  static const loadingPage = '/';
  static const locationPage = '/location';
  static const cityPage = '/city';

  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case loadingPage:
        return CustomPageRoute(builder: (context) => const LoadingScreen());
      case locationPage:
        return CustomPageRoute(builder: (context) => const LocationScreen());
      case cityPage:
        return CustomPageRoute(builder: (context) => const CityScreen());
        default:
        throw const FormatException('Route not found!');
    }
  }
}
