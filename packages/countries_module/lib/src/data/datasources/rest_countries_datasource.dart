import 'package:countries_module/src/data/models/base_response.dart';

abstract class RestCountriesDataSource {
  Future<BaseResponse> getVnFullName();
}