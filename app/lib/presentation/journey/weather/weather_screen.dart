import 'package:app/common/constants/image_constants.dart';
import 'package:app/presentation/journey/weather/bloc/weather_bloc.dart';
import 'package:app/presentation/journey/weather/bloc/weather_state.dart';
import 'package:app/presentation/theme/theme_text.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherScreen extends StatelessWidget {
  late WeatherBloc weatherBloc;

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
      body: Center(
        child: BlocBuilder<WeatherBloc, WeatherState>(
          builder: (context, state) {
            if (state.loading ?? false) {
              return const AppLoadingWidget();
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppImageWidget(
                  path: ImageConstants.icCloudNotif,
                  width: MediaQuery.of(context).size.width / 3,
                ),
                Text(
                  'Temp: ${state.data?.main?.temp}K',
                  style: ThemeText.bodyText2,
                ),
                Text(
                  'Feels like: ${state.data?.main?.feelsLike}K',
                  style: ThemeText.bodyText2,
                ),
                Text(
                  'Location: ${state.data?.name}, ${state.data?.sys?.country}',
                  style: ThemeText.bodyText2,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
