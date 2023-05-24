import 'package:countries_module/domain/entities/rest_country_entity.dart';
import 'package:equatable/equatable.dart';

class CountriesState extends Equatable {
  bool? isLoading;
  RestCountryEntity? country;

  CountriesState({this.isLoading, this.country});

  CountriesState copyWith({bool? isLoading, RestCountryEntity? country}) =>
      CountriesState(
          isLoading: isLoading ?? this.isLoading,
          country: country ?? this.country);

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, country];
}
