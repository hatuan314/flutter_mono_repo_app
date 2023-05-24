import 'package:app/domain/entities/image_entity.dart';

abstract class ImagesUseCase {
  Future<List<ImageEntity>> getListNewImages();
}