import 'package:countries_module/common/injection/app_injection.dart';
import 'package:countries_module/data/models/rest_country_model.dart';
import 'package:countries_module/data/repositories/rest_countries_repository.dart';

class CountriesController {
  Future<RestCountryModel?> getVnCountryFullName() =>
      getIt<RestCountriesRepository>().getVnFullName();
}
