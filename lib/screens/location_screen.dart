import 'package:clime_provider/models/location_model.dart';
import 'package:clime_provider/models/weather_model.dart';
import 'package:clime_provider/routes/routes.dart';
import 'package:clime_provider/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  WeatherModel _weather(context, {bool listen = true}) {
    return Provider.of<WeatherModel>(context, listen: listen);
  }

  LocationModel _location(context, {bool listen = true}) {
    return Provider.of<LocationModel>(context, listen: listen);
  }

  int? temperature(context) => _weather(context).weather.main?.temp?.toInt();

  String? cityName(context) => _weather(context).weather.name;

  String? weatherIcon(context) =>
      _weather(context).weather.weather?.first.getWeatherIcon();

  String? weatherMessage(context) =>
      _weather(context).weather.main?.getMessage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.white60, BlendMode.dstATop),
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buttonOutlinedIcon(Icons.near_me, onPressed: () async {
                    await _location(context, listen: false).getLocation();
                    await _weather(context, listen: false).getWeather(
                        latitude: _location(context, listen: false).userLocation.lat,
                        longitude: _location(context, listen: false).userLocation.lng);
                  }),
                  _buttonOutlinedIcon(Icons.location_city, onPressed: () {
                    Navigator.of(context).pushNamed(RouteManager.cityPage);
                  }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      '${temperature(context) ?? 32}\u00B0',
                      style: tempTextStyle,
                    ),
                    Text(
                      '${weatherIcon(context)}',
                      style: conditionTextStyle,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '${weatherMessage(context) ?? ''} in ${cityName(context) ?? ''}',
                  textAlign: TextAlign.right,
                  style: messageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buttonOutlinedIcon(IconData iconData, {required onPressed}) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 50.0,
        color: Colors.white,
      ),
      style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 0.0, style: BorderStyle.none)),
    );
  }
}
