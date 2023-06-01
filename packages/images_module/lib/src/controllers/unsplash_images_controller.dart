import 'package:images_module/src/common/injection/app_injection.dart';
import 'package:images_module/src/data/models/export.dart';
import 'package:images_module/src/data/repositories/unsplash_repository.dart';

class UnsplashImagesController {
  Future<List<UnsplashImageModel>> getListNewImages() =>
      getIt<UnsplashRepository>().getListNewImages();
}
