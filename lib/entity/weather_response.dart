/// coord : {"lon":-122.4064,"lat":37.7858}
/// weather : [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04n"}]
/// base : "stations"
/// main : {"temp":283.74,"feels_like":282.94,"temp_min":282.41,"temp_max":285.03,"pressure":1021,"humidity":80}
/// visibility : 10000
/// wind : {"speed":4.47,"deg":230,"gust":8.49}
/// clouds : {"all":100}
/// dt : 1647149497
/// sys : {"type":2,"id":2007646,"country":"US","sunrise":1647095110,"sunset":1647137620}
/// timezone : -28800
/// id : 5391959
/// name : "San Francisco"
/// cod : 200

class WeatherResponse {
  WeatherResponse({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    Main? main,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) {
    _coord = coord;
    _weather = weather;
    _base = base;
    _main = main;
    _visibility = visibility;
    _wind = wind;
    _clouds = clouds;
    _dt = dt;
    _sys = sys;
    _timezone = timezone;
    _id = id;
    _name = name;
    _cod = cod;
  }

  WeatherResponse.fromJson(dynamic json) {
    _coord = json['coord'] != null ? Coord.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      _weather = [];
      json['weather'].forEach((v) {
        _weather?.add(Weather.fromJson(v));
      });
    }
    _base = json['base'];
    _main = json['main'] != null ? Main.fromJson(json['main']) : null;
    _visibility = json['visibility'];
    _wind = json['wind'] != null ? Wind.fromJson(json['wind']) : null;
    _clouds = json['clouds'] != null ? Clouds.fromJson(json['clouds']) : null;
    _dt = json['dt'];
    _sys = json['sys'] != null ? Sys.fromJson(json['sys']) : null;
    _timezone = json['timezone'];
    _id = json['id'];
    _name = json['name'];
    _cod = json['cod'];
  }

  Coord? _coord;
  List<Weather>? _weather;
  String? _base;
  Main? _main;
  int? _visibility;
  Wind? _wind;
  Clouds? _clouds;
  int? _dt;
  Sys? _sys;
  int? _timezone;
  int? _id;
  String? _name;
  int? _cod;

  Coord? get coord => _coord;

  List<Weather>? get weather => _weather;

  String? get base => _base;

  Main? get main => _main;

  int? get visibility => _visibility;

  Wind? get wind => _wind;

  Clouds? get clouds => _clouds;

  int? get dt => _dt;

  Sys? get sys => _sys;

  int? get timezone => _timezone;

  int? get id => _id;

  String? get name => _name;

  int? get cod => _cod;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_coord != null) {
      map['coord'] = _coord?.toJson();
    }
    if (_weather != null) {
      map['weather'] = _weather?.map((v) => v.toJson()).toList();
    }
    map['base'] = _base;
    if (_main != null) {
      map['main'] = _main?.toJson();
    }
    map['visibility'] = _visibility;
    if (_wind != null) {
      map['wind'] = _wind?.toJson();
    }
    if (_clouds != null) {
      map['clouds'] = _clouds?.toJson();
    }
    map['dt'] = _dt;
    if (_sys != null) {
      map['sys'] = _sys?.toJson();
    }
    map['timezone'] = _timezone;
    map['id'] = _id;
    map['name'] = _name;
    map['cod'] = _cod;
    return map;
  }
}

/// type : 2
/// id : 2007646
/// country : "US"
/// sunrise : 1647095110
/// sunset : 1647137620

class Sys {
  Sys({
    int? type,
    int? id,
    String? country,
    int? sunrise,
    int? sunset,
  }) {
    _type = type;
    _id = id;
    _country = country;
    _sunrise = sunrise;
    _sunset = sunset;
  }

  Sys.fromJson(dynamic json) {
    _type = json['type'];
    _id = json['id'];
    _country = json['country'];
    _sunrise = json['sunrise'];
    _sunset = json['sunset'];
  }

  int? _type;
  int? _id;
  String? _country;
  int? _sunrise;
  int? _sunset;

  int? get type => _type;

  int? get id => _id;

  String? get country => _country;

  int? get sunrise => _sunrise;

  int? get sunset => _sunset;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['id'] = _id;
    map['country'] = _country;
    map['sunrise'] = _sunrise;
    map['sunset'] = _sunset;
    return map;
  }
}

/// all : 100

class Clouds {
  Clouds({
    int? all,
  }) {
    _all = all;
  }

  Clouds.fromJson(dynamic json) {
    _all = json['all'];
  }

  int? _all;

  int? get all => _all;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['all'] = _all;
    return map;
  }
}

/// speed : 4.47
/// deg : 230
/// gust : 8.49

class Wind {
  Wind({
    double? speed,
    int? deg,
    double? gust,
  }) {
    _speed = speed;
    _deg = deg;
    _gust = gust;
  }

  Wind.fromJson(dynamic json) {
    _speed = json['speed'];
    _deg = json['deg'];
    _gust = json['gust'];
  }

  double? _speed;
  int? _deg;
  double? _gust;

  double? get speed => _speed;

  int? get deg => _deg;

  double? get gust => _gust;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['speed'] = _speed;
    map['deg'] = _deg;
    map['gust'] = _gust;
    return map;
  }
}

/// temp : 283.74
/// feels_like : 282.94
/// temp_min : 282.41
/// temp_max : 285.03
/// pressure : 1021
/// humidity : 80

class Main {
  Main({
    double? temp,
    dynamic feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
  }) {
    _temp = temp;
    _feelsLike = feelsLike;
    _tempMin = tempMin;
    _tempMax = tempMax;
    _pressure = pressure;
    _humidity = humidity;
  }

  Main.fromJson(dynamic json) {
    _temp = json['temp'];
    _feelsLike = json['feels_like'];
    _tempMin = json['temp_min'];
    _tempMax = json['temp_max'];
    _pressure = json['pressure'];
    _humidity = json['humidity'];
  }

  double? _temp;
  dynamic? _feelsLike;
  double? _tempMin;
  double? _tempMax;
  int? _pressure;
  int? _humidity;

  double? get temp => _temp ?? 32;

  dynamic? get feelsLike => _feelsLike;

  double? get tempMin => _tempMin;

  double? get tempMax => _tempMax;

  int? get pressure => _pressure;

  int? get humidity => _humidity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['temp'] = _temp;
    map['feels_like'] = _feelsLike;
    map['temp_min'] = _tempMin;
    map['temp_max'] = _tempMax;
    map['pressure'] = _pressure;
    map['humidity'] = _humidity;
    return map;
  }

  String getMessage() {
    if (_temp! > 25) {
      return 'It\'s 🍦 time';
    } else if (_temp! > 20) {
      return 'Time for shorts and 👕';
    } else if (_temp! < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}

/// id : 804
/// main : "Clouds"
/// description : "overcast clouds"
/// icon : "04n"

class Weather {
  Weather({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) {
    _id = id;
    _main = main;
    _description = description;
    _icon = icon;
  }

  Weather.fromJson(dynamic json) {
    _id = json['id'];
    _main = json['main'];
    _description = json['description'];
    _icon = json['icon'];
  }

  int? _id;
  String? _main;
  String? _description;
  String? _icon;

  int? get id => _id ?? 800;

  String? get main => _main;

  String? get description => _description;

  String? get icon => _icon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['main'] = _main;
    map['description'] = _description;
    map['icon'] = _icon;
    return map;
  }

  String getWeatherIcon() {
    if (_id! < 300) {
      return '🌩';
    } else if (_id! < 400) {
      return '🌧';
    } else if (_id! < 600) {
      return '☔️';
    } else if (_id! < 700) {
      return '☃️';
    } else if (_id! < 800) {
      return '🌫';
    } else if (_id == 800) {
      return '☀️';
    } else if (_id! <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }
}

/// lon : -122.4064
/// lat : 37.7858

class Coord {
  Coord({
    double? lon,
    double? lat,
  }) {
    _lon = lon;
    _lat = lat;
  }

  Coord.fromJson(dynamic json) {
    _lon = json['lon'];
    _lat = json['lat'];
  }

  double? _lon;
  double? _lat;

  double? get lon => _lon;

  double? get lat => _lat;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['lon'] = _lon;
    map['lat'] = _lat;
    return map;
  }
}
