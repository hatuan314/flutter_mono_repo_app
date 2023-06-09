import 'package:weather_module/src/data/models/base_response.dart';

abstract class WeatherDataSource {
  Future<BaseResponse> getCurrentWeather(double long, double lat);
}
