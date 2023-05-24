import 'package:countries_module/countries_module.dart';
import 'package:flutter/material.dart';
import 'package:images_module/images_module.dart';
import 'package:todo_module/todo_module.dart';
import 'package:weather_module/weather_module.dart';

import 'common/injection/app_location.dart';
import 'presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configLocator();
  TodoModule.initial();
  WeatherModule.initial();
  CountriesModule.initial();
  ImagesModule.initial();
  runApp(MyApp());
}
