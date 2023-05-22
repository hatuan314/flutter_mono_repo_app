import 'package:countries_module/data/datasources/rest_countries_datasource.dart';
import 'package:countries_module/data/datasources/rest_countries_datasource_impl.dart';
import 'package:countries_module/data/repositories/rest_countries_repository_impl.dart';
import 'package:countries_module/domain/repositories/rest_countries_repository.dart';
import 'package:countries_module/domain/usecases/rest_countries_usecase.dart';
import 'package:countries_module/domain/usecases/rest_countries_usecase_impl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  /// UseCase
  getIt.registerFactory<RestCountriesUseCase>(() => RestCountriesUseCaseImpl(
      restCountriesRepo: getIt<RestCountriesRepository>()));

  /// Repositories
  getIt.registerFactory<RestCountriesRepository>(() =>
      RestCountriesRepositoryImpl(
          restCountriesDs: getIt<RestCountriesDataSource>()));

  /// DataSources
  getIt.registerFactory<RestCountriesDataSource>(
      () => RestCountriesDataSourceImpl());
}
