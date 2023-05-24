import 'package:images_module/data/models/unsplash_image_model.dart';

class ImageEntity {
  String? description;
  String? altDescription;
  Urls? urls;

  ImageEntity({this.description, this.altDescription, this.urls});

  factory ImageEntity.fromUnsplashImageModel(UnsplashImageModel model) =>
      ImageEntity(
          description: model.description,
          altDescription: model.altDescription,
          urls: model.urls);
}
