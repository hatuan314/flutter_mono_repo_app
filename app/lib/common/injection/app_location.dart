import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  getIt.registerFactory<WeatherBloc>(() => WeatherBloc());
}
