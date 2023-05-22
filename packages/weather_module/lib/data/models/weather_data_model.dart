import 'package:weather_module/domain/models/weather_data_entity.dart';

class WeatherDataModel extends WeatherDataEntity {
  WeatherDataModel(
      CoordModel? coord,
      List<WeatherModel>? weather,
      String? base,
      MainModel? main,
      int? visibility,
      WindModel? wind,
      CloudsModel? clouds,
      int? dt,
      SysModel? sys,
      int? timezone,
      int? id,
      String? name,
      int? cod)
      : super(
            coord: coord,
            weather: weather,
            base: base,
            main: main,
            visibility: visibility,
            wind: wind,
            clouds: clouds,
            dt: dt,
            sys: sys,
            timezone: timezone,
            id: id,
            name: name,
            cod: cod);

  WeatherDataModel.fromJson(Map<String, dynamic> json) {
    coord = json['coord'] != null ? CoordModel.fromJson(json['coord']) : null;
    if (json['weather'] != null) {
      weather = <WeatherModel>[];
      json['weather'].forEach((v) {
        weather!.add(WeatherModel.fromJson(v));
      });
    }
    base = json['base'];
    main = json['main'] != null ? MainModel.fromJson(json['main']) : null;
    visibility = json['visibility'];
    wind = json['wind'] != null ? WindModel.fromJson(json['wind']) : null;
    clouds =
        json['clouds'] != null ? CloudsModel.fromJson(json['clouds']) : null;
    dt = json['dt'];
    sys = json['sys'] != null ? SysModel.fromJson(json['sys']) : null;
    timezone = json['timezone'];
    id = json['id'];
    name = json['name'];
    cod = json['cod'];
  }
}

class CoordModel extends CoordEntity {
  CoordModel({double? lon, double? lat}) : super(lon: lon, lat: lat);

  CoordModel.fromJson(Map<String, dynamic> json) {
    lon = json['lon'];
    lat = json['lat'];
  }
}

class WeatherModel extends WeatherEntity {
  WeatherModel({
    int? id,
    String? main,
    String? description,
    String? icon,
  }) : super(id: id, main: main, description: description, icon: icon);

  WeatherModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    main = json['main'];
    description = json['description'];
    icon = json['icon'];
  }
}

class MainModel extends MainEntity {
  MainModel({
    double? temp,
    double? feelsLike,
    double? tempMin,
    double? tempMax,
    int? pressure,
    int? humidity,
    int? seaLevel,
    int? grndLevel,
  }) : super(
            temp: temp,
            feelsLike: feelsLike,
            tempMin: tempMin,
            tempMax: tempMax,
            pressure: pressure,
            humidity: humidity,
            seaLevel: seaLevel,
            grndLevel: grndLevel);

  MainModel.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    feelsLike = json['feels_like'];
    tempMin = json['temp_min'];
    tempMax = json['temp_max'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    seaLevel = json['sea_level'];
    grndLevel = json['grnd_level'];
  }
}

class WindModel extends WindEntity {
  double? speed;
  int? deg;
  double? gust;

  WindModel({double? speed, int? deg, double? gust})
      : super(speed: speed, deg: deg, gust: gust);

  WindModel.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
    deg = json['deg'];
    gust = json['gust'];
  }
}

class CloudsModel extends CloudsEntity {
  CloudsModel({int? all}) : super(all: all);

  CloudsModel.fromJson(Map<String, dynamic> json) {
    all = json['all'];
  }
}

class SysModel extends SysEntity {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  SysModel({int? type, int? id, String? country, int? sunrise, int? sunset})
      : super(
            type: type,
            id: id,
            country: country,
            sunrise: sunrise,
            sunset: sunset);

  SysModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }
}
