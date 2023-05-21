import 'package:app/common/utils/app_utils.dart';
import 'package:app/presentation/journey/weather/bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/presentation/weather_service.dart';

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherState());

  Future<void> initial() async {
    logger("initial");
    WeatherService service = WeatherService();
    await service.getCurrentWeather();
  }

}