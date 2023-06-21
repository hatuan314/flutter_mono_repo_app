import 'package:app/domain/entities/country_entity.dart';
import 'package:equatable/equatable.dart';

class CountriesState extends Equatable {
  bool? isLoading;
  List<CountryEntity>? countries;

  CountriesState({this.isLoading, this.countries});

  CountriesState copyWith({bool? isLoading, List<CountryEntity>? countries}) =>
      CountriesState(
          isLoading: isLoading ?? this.isLoading,
          countries: countries ?? this.countries);

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, countries];
}
