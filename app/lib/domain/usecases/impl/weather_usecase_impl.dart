import 'package:app/domain/entities/weather_usecase.dart';
import 'package:app/domain/usecases/interface/weather_usecase.dart';
import 'package:weather_module/weather_module.dart';

class WeatherUseCaseImpl implements WeatherUseCase {
  @override
  Future<WeatherEntity> getCurrentWeather() async {
    OpenWeatherModel model = await WeatherController().getCurrentWeather();
    return WeatherEntity.fromOpenWeatherModel(model);
  }

}