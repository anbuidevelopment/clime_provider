import 'package:clime_provider/models/location_model.dart';
import 'package:clime_provider/routes/routes.dart';
import 'package:clime_provider/screens/loading_screen.dart';
import 'package:clime_provider/screens/location_screen.dart';
import 'package:clime_provider/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/weather_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => WeatherModel(),
        )
      ],
      builder: (context, child) {
        return MaterialApp(
          theme: baseThemeApp,
          initialRoute: RouteManager.loadingPage,
          onGenerateRoute: RouteManager.onGenerate,
        );
      },
    );
  }
}
