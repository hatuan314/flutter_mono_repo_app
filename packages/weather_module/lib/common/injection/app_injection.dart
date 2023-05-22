import 'package:get_it/get_it.dart';
import 'package:weather_module/data/datasources/weather_datasource.dart';
import 'package:weather_module/data/datasources/weather_datasource_impl.dart';
import 'package:weather_module/data/repositories/implements/weather_repository_impl.dart';
import 'package:weather_module/data/repositories/interfaces/weather_repository.dart';
import 'package:weather_module/domain/usecases/implements/weather_usecase_impl.dart';
import 'package:weather_module/domain/usecases/interfaces/weather_usecase.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  /// UseCase
  getIt.registerFactory<WeatherUseCase>(
      () => WeatherUseCaseImpl(repo: getIt<WeatherRepository>()));

  /// Repositories
  getIt.registerFactory<WeatherRepository>(
      () => WeatherRepositoryImpl(weatherDs: getIt<WeatherDataSource>()));

  /// DataSoures
  getIt.registerFactory<WeatherDataSource>(() => WeatherDataSourceImpl());
}
