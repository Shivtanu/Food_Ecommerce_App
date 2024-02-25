import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

// always extend getxservice while loading data from internet and while using getx package
class PopularProductRepo extends GetxService {
  final ApiClient apiClient;
  // creating constructor
  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstants.POPULAR_PRODUCT_URI);
  } //only pass end point
}
