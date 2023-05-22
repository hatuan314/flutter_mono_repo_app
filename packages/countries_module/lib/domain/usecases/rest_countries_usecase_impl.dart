import 'package:countries_module/domain/entities/rest_country_entity.dart';
import 'package:countries_module/domain/repositories/rest_countries_repository.dart';
import 'package:countries_module/domain/usecases/rest_countries_usecase.dart';

class RestCountriesUseCaseImpl implements RestCountriesUseCase {
  final RestCountriesRepository restCountriesRepo;

  RestCountriesUseCaseImpl({required this.restCountriesRepo});

  @override
  Future<RestCountryEntity> getVnFullName() {
    // TODO: implement getVnFullName
    throw UnimplementedError();
  }

}