import 'package:countries_module/data/models/base_response.dart';

abstract class RestCountriesDataSource {
  Future<BaseResponse> getVnFullName();
}