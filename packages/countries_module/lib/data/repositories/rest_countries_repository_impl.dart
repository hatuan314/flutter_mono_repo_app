import 'dart:convert';

import 'package:countries_module/data/datasources/rest_countries_datasource.dart';
import 'package:countries_module/data/models/base_response.dart';
import 'package:countries_module/data/models/rest_country_model.dart';
import 'package:countries_module/domain/entities/rest_country_entity.dart';
import 'package:countries_module/domain/repositories/rest_countries_repository.dart';

class RestCountriesRepositoryImpl implements RestCountriesRepository {
  final RestCountriesDataSource restCountriesDs;

  RestCountriesRepositoryImpl({required this.restCountriesDs});

  @override
  Future<RestCountryEntity> getVnFullName() async {
    BaseResponse baseRes = await restCountriesDs.getVnFullName();
    return RestCountryModel.fromJson(
        (jsonDecode(baseRes.data) as List<dynamic>)[0] as Map<String, dynamic>);
  }
}
