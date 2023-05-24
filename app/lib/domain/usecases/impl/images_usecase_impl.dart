import 'package:app/domain/entities/image_entity.dart';
import 'package:app/domain/usecases/interface/images_usecase.dart';
import 'package:countries_module/common/utils/app_utils.dart';
import 'package:images_module/data/models/unsplash_image_model.dart';
import 'package:images_module/controllers/unsplash_images_controller.dart';

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
