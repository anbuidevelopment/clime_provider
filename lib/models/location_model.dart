import 'package:clime_provider/models/weather_model.dart';
import 'package:clime_provider/services/user_location.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LocationModel extends ChangeNotifier {
  UserLocation? _userLocation;

  UserLocation get userLocation => _userLocation ?? UserLocation();

  Future getLocation() async {
    UserLocation userLocation = UserLocation();
    await userLocation.getUserLocation();
    _userLocation = userLocation;
    notifyListeners();
  }


}
