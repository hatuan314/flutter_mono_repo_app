import 'package:countries_module/common/config/network.dart';
import 'package:countries_module/common/constants/enums.dart';
import 'package:countries_module/data/datasources/rest_countries_datasource.dart';
import 'package:countries_module/data/models/base_response.dart';

class RestCountriesDataSourceImpl implements RestCountriesDataSource {
  @override
  Future<BaseResponse> getVnFullName() async {
    var baseRes = await ApiClient()
        .request(method: NetworkMethod.get);
    return baseRes;
  }

}