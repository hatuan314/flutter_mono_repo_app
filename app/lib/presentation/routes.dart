import 'package:app/common/constants/app_routes.dart';
import 'package:app/common/injection/app_location.dart';
import 'package:app/common/utils/app_utils.dart';
import 'package:app/presentation/journey/home/home_screen.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:app/presentation/journey/weather/weather_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoutes.weather:
        logger(AppRoutes.weather);
        return MaterialPageRoute(
            builder: (context) => BlocProvider<WeatherBloc>(
                  create: (_) => getIt<WeatherBloc>()..onInitial(),
                  child: WeatherScreen(),
                ));
    }
    return null;
  }
}
