import 'package:app/common/utils/app_utils.dart';
import 'package:app/presentation/journey/weather/bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_module/domain/models/weather_data_entity.dart';
import 'package:weather_module/presentation/weather_controller.dart';

class WeatherBloc extends Cubit<WeatherState> {
  WeatherBloc() : super(WeatherState(loading: true));

  Future<void> onInitial() async {
    logger("initial");
    emit(state.copyWith(loading: true));
    WeatherController service = WeatherController();
    WeatherDataEntity data = await service.getCurrentWeather();
    emit(state.copyWith(loading: false, data: data));
  }
}
