import 'package:get_it/get_it.dart';
import 'package:weather_module/src/data/datasources/weather_datasource.dart';
import 'package:weather_module/src/data/datasources/weather_datasource_impl.dart';
import 'package:weather_module/src/data/repositories/implements/weather_repository_impl.dart';
import 'package:weather_module/src/data/repositories/interfaces/weather_repository.dart';

GetIt getIt = GetIt.instance;

void configLocator() {

  /// Repositories
  getIt.registerFactory<WeatherRepository>(
      () => WeatherRepositoryImpl(weatherDs: getIt<WeatherDataSource>()));

  /// DataSoures
  getIt.registerFactory<WeatherDataSource>(() => WeatherDataSourceImpl());
}
