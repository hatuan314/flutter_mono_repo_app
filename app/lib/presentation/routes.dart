import 'package:app/common/constants/app_routes.dart';
import 'package:app/common/injection/app_location.dart';
import 'package:app/domain/entities/country_entity.dart';
import 'package:app/presentation/journey/countries/detail/country_detail_screen.dart';
import 'package:app/presentation/journey/home/home_screen.dart';
import 'package:app/presentation/journey/images/bloc/images_bloc.dart';
import 'package:app/presentation/journey/images/images_screen.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:app/presentation/journey/weather/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'journey/countries/all/bloc/countries_bloc.dart';
import 'journey/countries/all/countries_screen.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoutes.weather:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<WeatherBloc>(
                  create: (_) => getIt<WeatherBloc>()..onInitial(),
                  child: WeatherScreen(),
                ));
      case AppRoutes.countries:
        return MaterialPageRoute(builder: (context) => BlocProvider(
            create: (_) => getIt<CountriesBloc>()..onInitial(),
            child: const CountriesScreen()));
      case AppRoutes.countryDetail:
        var arg = setting.arguments as Map<String, dynamic>;
        CountryEntity country = arg['detail'];
        return MaterialPageRoute(
            builder: (context) => CountryDetailScreen(
                  country: country,
                ));
      case AppRoutes.images:
        return MaterialPageRoute(builder: (context) => BlocProvider(
            create: (_) => getIt<ImagesBloc>()..onInitial(),
            child: const ImagesScreen()));
    }
    return null;
  }
}
