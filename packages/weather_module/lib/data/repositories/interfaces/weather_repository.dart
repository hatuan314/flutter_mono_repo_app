import 'package:weather_module/domain/models/weather_data_entity.dart';

abstract class WeatherRepository {
  Future<WeatherDataEntity> getCurrentWeather(double long, double lat);
}