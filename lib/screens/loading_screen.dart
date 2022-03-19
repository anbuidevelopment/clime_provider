import 'package:clime_provider/models/location_model.dart';
import 'package:clime_provider/models/weather_model.dart';
import 'package:clime_provider/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'location_screen.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  Future initWeatherData(context) async {
    var location = Provider.of<LocationModel>(context, listen: false);
    var weather = Provider.of<WeatherModel>(context, listen: false);

    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) async {
      await location.getLocation();
      await weather.getWeather(
          latitude: location.userLocation.lat,
          longitude: location.userLocation.lng);

      Navigator.pushNamedAndRemoveUntil(
          context, RouteManager.locationPage, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    initWeatherData(context);
    return const Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
