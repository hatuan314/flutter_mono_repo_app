import 'package:weather_module/data/datasources/weather_datasource.dart';
import 'package:weather_module/data/models/weather_data_model.dart';
import 'package:weather_module/data/repositories/interfaces/weather_repository.dart';
import 'package:weather_module/domain/models/base_response.dart';
import 'package:weather_module/domain/models/weather_data_entity.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource weatherDs;

  WeatherRepositoryImpl({required this.weatherDs});
  @override
  Future<WeatherDataEntity> getCurrentWeather(
      double long, double lat) async {
    BaseResponse baseRes = await weatherDs.getCurrentWeather(long, lat);
    WeatherDataModel data = WeatherDataModel.fromJson(baseRes.data as Map<String, dynamic>);
    return data;
  }
}
