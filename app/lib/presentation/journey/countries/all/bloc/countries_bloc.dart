import 'package:app/domain/entities/country_entity.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'countries_state.dart';

class CountriesBloc extends Cubit<CountriesState> {
  final CountriesUseCase countriesUc;

  CountriesBloc({required this.countriesUc})
      : super(CountriesState(isLoading: true));

  Future<List<CountryEntity>> getAllCountries() => countriesUc.getAll();

  Future<void> onInitial() async {
    emit(state.copyWith(isLoading: true));
    List<CountryEntity> countries = await getAllCountries();
    emit(state.copyWith(isLoading: false, countries: countries));
  }
}
