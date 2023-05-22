import 'package:app/presentation/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppLoadingWidget extends StatelessWidget {
  final double? size;
  final Color? color;
  final double? strokeWidth;

  const AppLoadingWidget({Key? key, this.size, this.color, this.strokeWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size ?? 32.sp,
      height: size ?? 32.sp,
      child: CircularProgressIndicator(
        color: color ?? AppColors.secondary,
        strokeWidth: strokeWidth ?? 3.sp,
      ),
    );
  }
}
