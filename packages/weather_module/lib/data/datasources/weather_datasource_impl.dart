import 'package:weather_module/common/config/network.dart';
import 'package:weather_module/common/constants/enums.dart';
import 'package:weather_module/.env.dart';
import 'package:weather_module/data/datasources/weather_datasource.dart';
import 'package:weather_module/data/models/base_response.dart';

class WeatherDataSourceImpl implements WeatherDataSource {
  @override
  Future<BaseResponse> getCurrentWeather(double long, double lat) async {
    Map<String, dynamic> parameters = {
      "lat": lat,
      "lon": long,
      'appId': apiKey
    };
    var baseRes = await ApiClient()
        .request(method: NetworkMethod.get, queryParameters: parameters);
    return baseRes;
  }
}
