import 'package:app/common/constants/app_routes.dart';
import 'package:app/common/constants/image_constants.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_touchable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Home Page'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTouchable(
                width: 52.sp,
                height: 52.sp,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.weather);
                },
                child: AppImageWidget(
                  path: ImageConstants.icSunClouds,
                  // width: 48.sp,
                )),
            AppTouchable(
                width: 52.sp,
                height: 52.sp,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.countries);
                },
                child: AppImageWidget(
                  path: ImageConstants.icGlobal,
                  width: 28.sp,
                )),
            AppTouchable(
                width: 52.sp,
                height: 52.sp,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.images);
                },
                child: AppImageWidget(
                  path: ImageConstants.icGallery,
                  width: 28.sp,
                )),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
