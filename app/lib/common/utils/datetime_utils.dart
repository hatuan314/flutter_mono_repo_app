enum TimeStyle {DAY, NIGHT}

class DateTimeUtils {
  static TimeStyle dayOrNight() {
    DateTime currentTime = DateTime.now();
    int currentHour = currentTime.hour;

    return currentHour < 12 ? TimeStyle.DAY : TimeStyle.NIGHT;

  }
}