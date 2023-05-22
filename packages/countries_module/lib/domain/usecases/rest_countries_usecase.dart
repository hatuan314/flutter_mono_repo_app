import 'package:countries_module/domain/entities/rest_country_entity.dart';

abstract class RestCountriesUseCase {
  Future<RestCountryEntity> getVnFullName();
}