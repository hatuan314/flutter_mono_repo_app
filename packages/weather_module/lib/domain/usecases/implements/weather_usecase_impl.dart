import 'package:weather_module/data/repositories/interfaces/weather_repository.dart';
import 'package:weather_module/domain/models/weather_data_entity.dart';
import 'package:weather_module/domain/usecases/interfaces/weather_usecase.dart';

class WeatherUseCaseImpl implements WeatherUseCase {
  final WeatherRepository repo;

  WeatherUseCaseImpl({required this.repo});
  @override
  Future<WeatherDataEntity> getCurrentWeather(double lat, double lon) async {
    WeatherDataEntity entity = await repo.getCurrentWeather(lon, lat);
    return entity;
  }

}