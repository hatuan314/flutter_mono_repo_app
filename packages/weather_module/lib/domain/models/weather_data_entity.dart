class WeatherDataEntity {
  CoordEntity? coord;
  List<WeatherEntity>? weather;
  String? base;
  MainEntity? main;
  int? visibility;
  WindEntity? wind;
  CloudsEntity? clouds;
  int? dt;
  SysEntity? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  WeatherDataEntity(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});
}

class CoordEntity {
  double? lon;
  double? lat;

  CoordEntity({this.lon, this.lat});
}

class WeatherEntity {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherEntity({this.id, this.main, this.description, this.icon});
}

class MainEntity {
  double? temp;
  double? feelsLike;
  double? tempMin;
  double? tempMax;
  int? pressure;
  int? humidity;
  int? seaLevel;
  int? grndLevel;

  MainEntity(
      {this.temp,
      this.feelsLike,
      this.tempMin,
      this.tempMax,
      this.pressure,
      this.humidity,
      this.seaLevel,
      this.grndLevel});
}

class WindEntity {
  double? speed;
  int? deg;
  double? gust;

  WindEntity({this.speed, this.deg, this.gust});
}

class CloudsEntity {
  int? all;

  CloudsEntity({this.all});
}

class SysEntity {
  int? type;
  int? id;
  String? country;
  int? sunrise;
  int? sunset;

  SysEntity({this.type, this.id, this.country, this.sunrise, this.sunset});
}
