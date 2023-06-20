import 'package:app/common/constants/image_constants.dart';
import 'package:app/common/utils/app_utils.dart';
import 'package:app/domain/entities/weather_entity.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:app/presentation/journey/weather/bloc/weather_state.dart';
import 'package:app/presentation/theme/theme_color.dart';
import 'package:app/presentation/theme/theme_text.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class WeatherScreen extends StatelessWidget {
  late WeatherBloc weatherBloc;

  Widget _buildLocationWidget(WeatherState state) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 40.sp),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat.yMMMMd('en_US').format(DateTime.now()),
            style: ThemeText.bodyText2.copyWith(color: AppColors.black45),
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '${state.data?.name}, ${state.data?.sys?.country}',
                  style:
                      ThemeText.headline4.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              AppImageWidget(path: ImageConstants.icLocation)
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherWidget(BuildContext context, WeatherState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp),
          child: AppImageWidget(
            path: WeatherIconMapping.toWeatherIcon(state.data?.weather?.first),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.sp, vertical: 12.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${AppUtils.convertKevinToCelsius(state.data?.main?.temp)}°',
                style: ThemeText.headline1.copyWith(fontWeight: FontWeight.bold),
              ),
              Text(
                '${state.data?.weather?.first.main}',
                style: ThemeText.headline5.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // weatherBloc = context.watch<WeatherBloc>();
    // weatherBloc.onInitial();
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Weather Page'),
      ),
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state.loading ?? false) {
            return const Center(child: AppLoadingWidget());
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildLocationWidget(state),
              _buildWeatherWidget(context, state),
            ],
          );
          // return Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     AppImageWidget(
          //       path: '${state.data?.weather!.first.getIconUrl()}',
          //       // width: MediaQuery.of(context).size.width / 3,
          //     ),
          //     Text(
          //       'Temp: ${state.data?.main?.temp}K',
          //       style: ThemeText.bodyText2,
          //     ),
          //     Text(
          //       'Feels like: ${state.data?.main?.feelsLike}K',
          //       style: ThemeText.bodyText2,
          //     ),
          //     Text(
          //       'Location: ${state.data?.name}, ${state.data?.sys?.country}',
          //       style: ThemeText.bodyText2,
          //     ),
          //   ],
          // );
        },
      ),
    );
  }
}
