import 'package:countries_module/src/common/config/network.dart';
import 'package:countries_module/src/common/constants/enums.dart';
import 'package:countries_module/src/data/datasources/rest_countries_datasource.dart';
import 'package:countries_module/src/data/models/base_response.dart';

class RestCountriesDataSourceImpl implements RestCountriesDataSource {
  @override
  Future<BaseResponse> getVnFullName() async {
    var baseRes = await ApiClient()
        .request(method: NetworkMethod.get);
    return baseRes;
  }

}