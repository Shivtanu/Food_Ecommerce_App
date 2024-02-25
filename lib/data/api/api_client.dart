import 'package:ecommerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String token;
  final String appBaseUrl;
// map for storing data locally
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    // these two variables are required for getx package
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization':
          'Bearer $token', //token for post request and bearer is token type
    };
  }
  // get method
  Future<Response> getData(String uri) async {
    try {
      Response response = await get(uri);
      return response;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}
