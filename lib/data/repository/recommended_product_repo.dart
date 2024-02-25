import 'package:ecommerce_app/data/api/api_client.dart';
import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

// always extend getxservice while loading data from internet and while using getx package
class RecommendedProductRepo extends GetxService {
  final ApiClient apiClient;
  // creating constructor
  RecommendedProductRepo({required this.apiClient});

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  } //only pass end point
}
