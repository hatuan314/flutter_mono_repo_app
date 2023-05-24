import 'package:images_module/common/injection/app_injection.dart';
import 'package:images_module/data/models/unsplash_image_model.dart';
import 'package:images_module/data/repositories/unsplash_repository.dart';

class UnsplashImagesController {
  Future<List<UnsplashImageModel>> getListNewImages() =>
      getIt<UnsplashRepository>().getListNewImages();
}
