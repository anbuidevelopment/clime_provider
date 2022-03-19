import 'package:clime_provider/models/weather_model.dart';
import 'package:clime_provider/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CityScreen extends StatelessWidget {
  CityScreen({Key? key}) : super(key: key);
  String city = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 0.0, style: BorderStyle.none)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: kTextFieldInputDecoration,
                  onChanged: (value) {
                    city = value;
                  },
                ),
              ),
              TextButton(
                onPressed: () async {
                  await Provider.of<WeatherModel>(context, listen: false).getWeatherByCity(city);
                  Navigator.pop(context);
                  },
                child: const Text(
                  'Get Weather',
                  style: buttonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
