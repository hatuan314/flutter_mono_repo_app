import 'package:images_module/.env.dart';
import 'package:images_module/common/config/network.dart';
import 'package:images_module/common/constants/enums.dart';
import 'package:images_module/data/datasources/unsplash_datasouce.dart';
import 'package:images_module/data/models/base_response.dart';

class UnsplashDataSourceImpl implements UnsplashDataSource {
  @override
  Future<BaseResponse> getListNewPhotos() async {
    var baseRes = await ApiClient()
        .request(method: NetworkMethod.get, queryParameters: {"client_id": accessKey});
    return baseRes;
  }

}