import 'package:images_module/src/data/models/base_response.dart';

abstract class UnsplashDataSource {
  Future<BaseResponse> getListNewPhotos();
}