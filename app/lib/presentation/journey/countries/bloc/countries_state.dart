import 'package:app/domain/entities/country_entity.dart';
import 'package:equatable/equatable.dart';

class CountriesState extends Equatable {
  bool? isLoading;
  CountryEntity? country;

  CountriesState({this.isLoading, this.country});

  CountriesState copyWith({bool? isLoading, CountryEntity? country}) =>
      CountriesState(
          isLoading: isLoading ?? this.isLoading,
          country: country ?? this.country);

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, country];
}
