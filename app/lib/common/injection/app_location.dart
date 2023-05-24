import 'package:app/domain/usecases/impl/countries_usecase_impl.dart';
import 'package:app/domain/usecases/impl/weather_usecase_impl.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:app/domain/usecases/interface/images_usecase.dart';
import 'package:app/domain/usecases/impl/images_usecase_impl.dart';
import 'package:app/domain/usecases/interface/weather_usecase.dart';
import 'package:app/presentation/journey/countries/bloc/countries_bloc.dart';
import 'package:app/presentation/journey/images/bloc/images_bloc.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  /// Bloc
  getIt.registerFactory<WeatherBloc>(
      () => WeatherBloc(weatherUc: getIt<WeatherUseCase>()));
  getIt.registerFactory<CountriesBloc>(
      () => CountriesBloc(countriesUc: getIt<CountriesUseCase>()));
  getIt.registerFactory<ImagesBloc>(
      () => ImagesBloc(imagesUc: getIt<ImagesUseCase>()));

  /// UseCase
  getIt.registerFactory<CountriesUseCase>(() => CountriesUseCaseImpl());
  getIt.registerFactory<ImagesUseCase>(() => ImagesUseCaseImpl());
  getIt.registerFactory<WeatherUseCase>(() => WeatherUseCaseImpl());
}
