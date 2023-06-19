import 'package:app/common/utils/app_logger.dart';

import 'package:app/domain/entities/weather_usecase.dart';
import 'package:app/domain/usecases/interface/weather_usecase.dart';
import 'package:app/presentation/journey/weather/bloc/weather_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherBloc extends Cubit<WeatherState> {
  final WeatherUseCase weatherUc;
  WeatherBloc({required this.weatherUc}) : super(WeatherState(loading: true));

  Future<void> onInitial() async {
    logger("initial");
    emit(state.copyWith(loading: true));
    WeatherEntity data = await weatherUc.getCurrentWeather();
    emit(state.copyWith(loading: false, data: data));
  }
}
