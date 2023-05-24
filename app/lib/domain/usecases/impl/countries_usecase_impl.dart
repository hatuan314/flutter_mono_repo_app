import 'package:app/common/utils/app_utils.dart';
import 'package:app/domain/entities/country_entity.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:countries_module/controllers/countries_controller.dart';
import 'package:countries_module/data/models/rest_country_model.dart';

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