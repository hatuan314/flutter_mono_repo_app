import 'package:weather_module/src/data/datasources/weather_datasource.dart';
import 'package:weather_module/src/data/repositories/interfaces/weather_repository.dart';
import 'package:weather_module/src/data/models/base_response.dart';

import '../../models/open_weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource weatherDs;

  WeatherRepositoryImpl({required this.weatherDs});
  @override
  Future<OpenWeatherModel> getCurrentWeather(double long, double lat) async {
    BaseResponse baseRes = await weatherDs.getCurrentWeather(long, lat);
    OpenWeatherModel data =
    OpenWeatherModel.fromJson(baseRes.data as Map<String, dynamic>);
    return data;
  }
}
