import 'package:images_module/src/.env.dart';
import 'package:images_module/src/common/config/network.dart';
import 'package:images_module/src/common/constants/enums.dart';
import 'package:images_module/src/data/datasources/unsplash_datasouce.dart';
import 'package:images_module/src/data/models/base_response.dart';

class UnsplashDataSourceImpl implements UnsplashDataSource {
  @override
  Future<BaseResponse> getListNewPhotos() async {
    var baseRes = await ApiClient()
        .request(method: NetworkMethod.get, queryParameters: {"client_id": accessKey});
    return baseRes;
  }

}