import 'package:app/domain/entities/country_entity.dart';
import 'package:app/domain/usecases/interface/countries_usecase.dart';
import 'package:app/presentation/journey/countries/bloc/countries_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesBloc extends Cubit<CountriesState> {
  final CountriesUseCase countriesUc;
  CountriesBloc({required this.countriesUc}) : super(CountriesState(isLoading: true));

  Future<void> onInitial() async {
    emit(state.copyWith(isLoading: true));
    CountryEntity? country =
        await countriesUc.getVnCountryFullName();
    emit(state.copyWith(isLoading: false, country: country));
  }
}
