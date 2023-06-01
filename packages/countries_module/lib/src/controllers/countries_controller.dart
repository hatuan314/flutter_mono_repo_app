import 'package:countries_module/src/common/injection/app_injection.dart';
import 'package:countries_module/src/data/models/rest_country_model.dart';
import 'package:countries_module/src/data/repositories/rest_countries_repository.dart';

class CountriesController {
  Future<RestCountryModel?> getVnCountryFullName() =>
      getIt<RestCountriesRepository>().getVnFullName();
}
