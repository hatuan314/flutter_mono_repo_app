import 'package:images_module/data/models/unsplash_image_model.dart';

abstract class UnsplashRepository {
  Future<List<UnsplashImageModel>> getListNewImages();
}