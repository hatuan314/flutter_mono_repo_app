import '../../models/open_weather_model.dart';

abstract class WeatherRepository {
  Future<OpenWeatherModel> getCurrentWeather(double long, double lat);
}
