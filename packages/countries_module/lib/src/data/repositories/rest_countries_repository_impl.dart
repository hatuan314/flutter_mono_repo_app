import 'package:countries_module/src/common/utils/app_utils.dart';
import 'package:countries_module/src/data/datasources/rest_countries_datasource.dart';
import 'package:countries_module/src/data/models/base_response.dart';
import 'package:countries_module/src/data/models/rest_country_model.dart';
import 'rest_countries_repository.dart';

class RestCountriesRepositoryImpl implements RestCountriesRepository {
  final RestCountriesDataSource restCountriesDs;

  RestCountriesRepositoryImpl({required this.restCountriesDs});

  @override
  Future<RestCountryModel?> getVnFullName() async {
    BaseResponse baseRes = await restCountriesDs.getVnFullName();
    List list = baseRes.data;
    if (!isNullEmptyList(list)) {
      return RestCountryModel.fromJson(
          list[0] as Map<String, dynamic>);
    }
    return null;
  }
}
