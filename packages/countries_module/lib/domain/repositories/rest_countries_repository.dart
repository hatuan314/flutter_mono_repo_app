import 'package:countries_module/domain/entities/rest_country_entity.dart';

abstract class RestCountriesRepository {
  Future<RestCountryEntity> getVnFullName();
}