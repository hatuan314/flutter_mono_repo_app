import 'package:app/common/constants/image_constants.dart';
import 'package:app/domain/entities/country_entity.dart';
import 'package:app/presentation/theme/theme_text.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:utils_module/utils_module.dart';

class CountryDetailScreen extends StatelessWidget {
  final CountryEntity country;

  const CountryDetailScreen({super.key, required this.country});

  Widget _buildRowCountryDataWidget(String name, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 4.sp),
      child: Row(
        children: [
          Text(
            '$name: ',
            style: ThemeText.subtitle2,
          ),
          Text(
            value,
            style: ThemeText.bodyText2,
          )
        ],
      ),
    );
  }

  Widget _buildInfoWidget() {
    String timezone = '';
    if (!isNullEmptyList(country.timezones)) {
      if (country.timezones!.length == 1) {
        timezone = country.timezones!.first;
      } else {
        for(int i = 0; i < country.timezones!.length; i++) {
          if (i == 0) {
            timezone = country.timezones![i];
          } else {
            timezone = ', ${country.timezones!}';
          }
        }
      }
    }
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildRowCountryDataWidget('Office name', country.name?.official ?? ''),
          _buildRowCountryDataWidget('Office language', country.languages?.values.first ?? ''),
          SizedBox(height: 20.sp),
          _buildRowCountryDataWidget('Population',
              NumberFormat(',##0').format(country.population)),
          _buildRowCountryDataWidget('Region', country.region ?? ''),
          _buildRowCountryDataWidget('Subregion', country.subregion ?? ''),
          _buildRowCountryDataWidget('Capital', country.capital ?? ''),
          SizedBox(height: 20.sp),
          _buildRowCountryDataWidget('Area', '${NumberFormat(',##0').format(country.area)} km2'),
          _buildRowCountryDataWidget('Currency', '${country.currency?.keys.first}'),
          SizedBox(height: 20.sp),
          _buildRowCountryDataWidget('Time zone', timezone),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String theFlag = ImageConstants.icLocation;
    if (!isNullEmpty(country.flags?.svg)) {
      theFlag = country.flags!.svg!;
    } else {
      if (!isNullEmpty(country.flags?.png)) {
        theFlag = country.flags!.png!;
      }
    }
    double widthFlag = MediaQuery.of(context).size.width - 16;
    return Scaffold(
      appBar: AppBar(
        title: Text("${country.name?.common}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 16.sp,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.sp),
              child: AppImageWidget(
                path: theFlag,
                width: widthFlag,
                fit: BoxFit.fitWidth,
              ),
            ),
            _buildInfoWidget()
          ],
        ),
      ),
    );
  }
}
