import 'package:app/presentation/journey/countries/bloc/countries_bloc.dart';
import 'package:app/presentation/theme/theme_text.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/countries_state.dart';

class CountriesScreen extends StatelessWidget {
  const CountriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Countries Page"),
      ),
      body: Center(
        child: BlocBuilder<CountriesBloc, CountriesState>(
          builder: (context, state) {
            if (state.isLoading == true) {
              return AppLoadingWidget();
            }
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppImageWidget(
                      path: state.country?.flags?.svg,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                    SizedBox(width: 16.sp,),
                    AppImageWidget(
                      path: state.country?.coatOfArms?.svg,
                      width: MediaQuery.of(context).size.width / 4,
                    ),
                  ],
                ),
                SizedBox(height: 16.sp,),
                Text('${state.country?.name?.nativeName?.vie?.official}', style: ThemeText.subtitle2,)
              ],
            );
          },
        ),
      ),
    );
  }
}
