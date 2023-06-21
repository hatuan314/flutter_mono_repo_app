import 'package:app/domain/entities/country_entity.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:countries_module/countries_module.dart';
import 'package:utils_module/utils_module.dart';

class CountriesUseCaseImpl implements CountriesUseCase {
  @override
  Future<CountryEntity?> getVnCountryFullName() async {
    RestCountryModel? model = await CountriesController().getVnCountryFullName();
    if (!isNullEmpty(model)) {
      return CountryEntity.fromRestCountryModel(model!);
    }
    return null;
  }

  @override
  Future<List<CountryEntity>> getAll() async {
    List<RestCountryModel> list = await CountriesController().getAll();
    List<CountryEntity> countries = [];
    if (!isNullEmptyList(list)) {
      for (final RestCountryModel element in list) {
        countries.add(CountryEntity.fromRestCountryModel(element));
      }
    }
    return countries;
  }

}