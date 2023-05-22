import 'package:weather_module/domain/models/weather_data_entity.dart';

abstract class WeatherUseCase {
  Future<WeatherDataEntity> getCurrentWeather(double lat, double lon);
}