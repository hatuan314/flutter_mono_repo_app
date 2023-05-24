import 'package:images_module/data/models/base_response.dart';

abstract class UnsplashDataSource {
  Future<BaseResponse> getListNewPhotos();
}