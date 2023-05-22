import 'package:countries_module/common/injection/app_injection.dart';
import 'package:countries_module/domain/entities/rest_country_entity.dart';
import 'package:countries_module/domain/usecases/rest_countries_usecase.dart';

class CountriesController {
  Future<RestCountryEntity> getVnCountryFullName() async {
    return getIt<RestCountriesUseCase>().getVnFullName();
  }
}