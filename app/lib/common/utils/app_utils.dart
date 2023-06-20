import 'package:utils_module/utils/app_utils.dart';

class AppUtils {
  static int? convertKevinToCelsius(double? value) {
    if (isNullEmpty(value)) {
      return null;
    }
    return (value! - 273.15).ceil();
  }
}