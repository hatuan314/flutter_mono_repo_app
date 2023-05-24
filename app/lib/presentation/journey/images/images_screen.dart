import 'package:app/common/constants/app_dimens.dart';
import 'package:app/presentation/journey/images/bloc/images_bloc.dart';
import 'package:app/presentation/widgets/app_image_widget.dart';
import 'package:app/presentation/widgets/app_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'bloc/images_state.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Images Page"),),
      body: BlocBuilder<ImagesBloc, ImagesState>(
        builder: (context, state) {
          if (state.loading == true) {
            return const Center(child: AppLoadingWidget());
          }
          return MasonryGridView.count(
            padding: EdgeInsets.symmetric(horizontal: AppDimens.space_16, vertical: AppDimens.space_16),
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: AppDimens.space_8,
            crossAxisSpacing: AppDimens.space_8,
            itemCount: state.images?.length,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(8.sp),
                  child: AppImageWidget(path: state.images?[index].urls?.thumb));
            },
          );
        },
      ),
    );
  }

}