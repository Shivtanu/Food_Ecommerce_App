import 'package:ecommerce_app/data/repository/popular_product_repo.dart';
import 'package:ecommerce_app/data/repository/recommended_product_repo.dart';
import 'package:ecommerce_app/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});
  List<ProductsModel> _recommendedProductList = [];
  // to access the list , since above is a private variable we use:-
  List<ProductsModel> get recommendedProductList => _recommendedProductList;

  bool _isLoaded = false;
  bool get isloaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response =
        await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got products");
      _recommendedProductList = [];
      _recommendedProductList
          .addAll(Product.fromJson(response.body).products); //model
      // print(_popularProductList);
      _isLoaded = true;
      update(); //like setstate
    } else {}
  }
}
