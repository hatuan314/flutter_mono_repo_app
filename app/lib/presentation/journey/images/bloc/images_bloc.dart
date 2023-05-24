import 'package:app/domain/entities/image_entity.dart';
import 'package:app/domain/usecases/images_usecase.dart';
import 'package:app/presentation/journey/images/bloc/images_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagesBloc extends Cubit<ImagesState> {
  final ImagesUseCase imagesUc;

  ImagesBloc({required this.imagesUc}) : super(ImagesState(loading: true));

  Future<void> onInitial() async {
    emit(state.copyWith(loading: true));
    List<ImageEntity> images = await imagesUc.getListNewImages();
    emit(state.copyWith(loading: false, images: images));
  }

}