import 'package:app/domain/usecases/images_usecase.dart';
import 'package:app/domain/usecases/images_usecase_impl.dart';
import 'package:app/presentation/journey/countries/bloc/countries_bloc.dart';
import 'package:app/presentation/journey/images/bloc/images_bloc.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  getIt.registerFactory<WeatherBloc>(() => WeatherBloc());
  getIt.registerFactory<CountriesBloc>(() => CountriesBloc());
  getIt.registerFactory<ImagesBloc>(() => ImagesBloc(imagesUc: getIt<ImagesUseCase>()));

  getIt.registerFactory<ImagesUseCase>(() => ImagesUseCaseImpl());
}
