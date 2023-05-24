import 'package:get_it/get_it.dart';
import 'package:images_module/data/datasources/unsplash_datasouce.dart';
import 'package:images_module/data/datasources/unsplash_datasource_impl.dart';
import 'package:images_module/data/repositories/unsplash_repository.dart';
import 'package:images_module/data/repositories/unsplash_repository_impl.dart';

GetIt getIt = GetIt.instance;

void configLocator() {
  /// UseCase

  /// Repositories
  getIt.registerFactory<UnsplashRepository>(
      () => UnsplashRepositoryImpl(unsplashDs: getIt<UnsplashDataSource>()));

  /// DataSources
  getIt.registerFactory<UnsplashDataSource>(() => UnsplashDataSourceImpl());
}
