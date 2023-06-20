import 'package:app/domain/entities/weather_entity.dart';
import 'package:equatable/equatable.dart';

class WeatherState extends Equatable {
  bool? loading;
  WeatherEntity? data;

  WeatherState({this.data, this.loading});

  WeatherState copyWith({WeatherEntity? data, bool? loading}) =>
      WeatherState(data: data ?? this.data, loading: loading ?? this.loading);

  @override
  List<Object?> get props => [data, loading];
}
