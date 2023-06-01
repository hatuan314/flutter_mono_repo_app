import 'package:app/common/utils/app_utils.dart';
import 'package:app/domain/entities/country_entity.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:countries_module/countries_module.dart';

class CountriesUseCaseImpl implements CountriesUseCase {
  @override
  Future<CountryEntity?> getVnCountryFullName() async {
    RestCountryModel? model = await CountriesController().getVnCountryFullName();
    if (!isNullEmpty(model)) {
      return CountryEntity.fromRestCountryModel(model!);
    }
    return null;
  }

}