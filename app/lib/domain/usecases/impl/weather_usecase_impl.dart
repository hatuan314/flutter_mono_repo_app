import 'package:app/domain/entities/weather_usecase.dart';
import 'package:app/domain/usecases/interface/weather_usecase.dart';
import 'package:weather_module/data/models/open_weather_model.dart';
import 'package:weather_module/controllers/weather_controller.dart';

class WeatherUseCaseImpl implements WeatherUseCase {
  @override
  Future<WeatherEntity> getCurrentWeather() async {
    OpenWeatherModel model = await WeatherController().getCurrentWeather();
    return WeatherEntity.fromOpenWeatherModel(model);
  }

}