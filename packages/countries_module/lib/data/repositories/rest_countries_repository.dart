import 'package:countries_module/data/models/rest_country_model.dart';

abstract class RestCountriesRepository {
  Future<RestCountryModel?> getVnFullName();
}