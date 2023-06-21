import 'package:app/common/constants/app_routes.dart';
import 'package:app/common/constants/image_constants.dart';
import 'package:app/domain/entities/country_entity.dart';
import 'package:app/presentation/theme/theme_color.dart';
import 'package:app/presentation/theme/theme_text.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_loading_widget.dart';
import 'package:app/presentation/widgets/app_touchable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:utils_module/utils_module.dart';

import 'bloc/countries_bloc.dart';
import 'bloc/countries_state.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  Widget _buildCountryItemWidget(BuildContext context, CountryEntity country) {
    String theFlag = ImageConstants.icLocation;
    if (!isNullEmpty(country.flags?.svg)) {
      theFlag = country.flags!.svg!;
    } else {
      if (!isNullEmpty(country.flags?.png)) {
        theFlag = country.flags!.png!;
      }
    }
    double flagSize = MediaQuery.of(context).size.width/4;
    return AppTouchable(
      margin: EdgeInsets.symmetric(horizontal: 8.sp).copyWith(top: 8.sp),
      padding: EdgeInsets.all(8.sp),
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.countryDetail, arguments: {'detail': country});
      },
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8.sp),
              child: AppImageWidget(
                path: theFlag,
                width: flagSize,
                fit: BoxFit.fitWidth,
              )),
          SizedBox(width: 8.sp,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name?.common ?? '',
                  style: ThemeText.subtitle1,
                ),
                Text(
                  country.name?.common ?? '',
                  style: ThemeText.bodyText2.copyWith(color: AppColors.black45),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries Page"),
      ),
      body:
          BlocBuilder<CountriesBloc, CountriesState>(builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: AppLoadingWidget(),
          );
        }
        if (isNullEmpty(state.countries)) {
          return const Center(
            child: Text('Empty Data'),
          );
        }
        return ListView.builder(
            itemCount: state.countries!.length,
            itemBuilder: (context, index) =>
                _buildCountryItemWidget(context, state.countries![index]));
      }),
    );
  }
}
