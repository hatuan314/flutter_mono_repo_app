import 'package:images_module/common/injection/app_injection.dart';
import 'package:images_module/common/utils/app_utils.dart';
import 'package:images_module/data/datasources/unsplash_datasouce.dart';
import 'package:images_module/data/models/base_response.dart';
import 'package:images_module/data/models/unsplash_image_model.dart';
import 'package:images_module/data/repositories/unsplash_repository.dart';

class UnsplashRepositoryImpl implements UnsplashRepository {
  final UnsplashDataSource unsplashDs;

  UnsplashRepositoryImpl({required this.unsplashDs});

  @override
  Future<List<UnsplashImageModel>> getListNewImages() async {
    List<UnsplashImageModel> listNewImages = [];
    BaseResponse baseRes = await unsplashDs.getListNewPhotos();
    List<dynamic> list = baseRes.data;
    if (!isNullEmptyList(list)) {
      list.forEach((element) {
        listNewImages.add(UnsplashImageModel.fromJson(element as Map<String, dynamic>));
      });
    }
    return listNewImages;
  }

}