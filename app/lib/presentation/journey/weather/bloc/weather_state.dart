import 'package:equatable/equatable.dart';
import 'package:weather_module/domain/models/weather_data_entity.dart';

class WeatherState extends Equatable {
  bool? loading;
  WeatherDataEntity? data;

  WeatherState({this.data, this.loading});

  WeatherState copyWith({WeatherDataEntity? data, bool? loading}) =>
      WeatherState(data: data ?? this.data, loading: loading ?? this.loading);

  @override
  List<Object?> get props => [data, loading];
}
