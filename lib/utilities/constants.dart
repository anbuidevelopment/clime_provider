import 'package:flutter/material.dart';

const baseUrlWeather = 'https://api.openweathermap.org/data/2.5';

const tempTextStyle = TextStyle(fontSize: 100.0, fontFamily: 'Spartan MB');
const messageTextStyle = TextStyle(fontSize: 60.0, fontFamily: 'Spartan MB');
const buttonTextStyle =
    TextStyle(fontSize: 30.0, fontFamily: 'Spartan MB', color: Colors.white);
const conditionTextStyle = TextStyle(fontSize: 100.0);
const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10.0),
    ),
    borderSide: BorderSide.none,
  ),
);
final baseThemeApp = ThemeData(
    brightness: Brightness.dark,
    pageTransitionsTheme: PageTransitionsTheme(builders: {
      TargetPlatform.iOS: FadeTransitionBuilder(),
      TargetPlatform.android: FadeTransitionBuilder(),
    }));

class FadeTransitionBuilder extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(_, __, animation, ___, child) =>
      FadeTransition(opacity: animation, child: child);
}

class CustomPageRoute extends MaterialPageRoute {
  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  CustomPageRoute({builder}) : super(builder: builder);
}
