import 'package:app/domain/entities/country_entity.dart';

abstract class CountriesUseCase {
  Future<CountryEntity?> getVnCountryFullName();

  Future<List<CountryEntity>> getAll();
}