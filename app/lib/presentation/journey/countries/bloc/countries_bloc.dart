import 'package:app/presentation/journey/countries/bloc/countries_state.dart';
import 'package:countries_module/controllers/countries_controller.dart';
import 'package:countries_module/domain/entities/rest_country_entity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesBloc extends Cubit<CountriesState> {
  CountriesBloc() : super(CountriesState(isLoading: true));

  Future<void> onInitial() async {
    emit(state.copyWith(isLoading: true));
    RestCountryEntity country =
        await CountriesController().getVnCountryFullName();
    emit(state.copyWith(isLoading: false, country: country));
  }
}
