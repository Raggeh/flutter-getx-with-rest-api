import 'package:get/get.dart';
import '../model/product.dart';
import '../services/remote_services.dart';


class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ProductService().fetchProducts();
      if(products != null){
        productList.assignAll(products);
      }
    } 
    finally {
      isLoading(false);
    }
  }
}
