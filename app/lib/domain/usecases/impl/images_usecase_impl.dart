import 'package:utils_module/utils_module.dart';

import 'package:app/domain/entities/image_entity.dart';
import 'package:app/domain/usecases/interface/images_usecase.dart';
import 'package:images_module/images_module.dart';

class ImagesUseCaseImpl implements ImagesUseCase {
  @override
  Future<List<ImageEntity>> getListNewImages() async {
    List<UnsplashImageModel> list =
        await UnsplashImagesController().getListNewImages();
    List<ImageEntity> images = [];
    if (!isNullEmptyList(list)) {
      for (var element in list) {
        images.add(ImageEntity.fromUnsplashImageModel(element));
      }
    }
    return images;
  }
}
