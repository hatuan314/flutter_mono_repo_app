import 'package:weather_module/data/datasources/weather_datasource.dart';
import 'package:weather_module/data/models/open_weather_model.dart';
import 'package:weather_module/data/repositories/interfaces/weather_repository.dart';
import 'package:weather_module/data/models/base_response.dart';

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
