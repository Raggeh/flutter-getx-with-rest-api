import 'package:http/http.dart' as http;
import '../model/product.dart';

class ProductService {
  // final String apiUrl = 'https://fakestoreapi.com/products';

 static var client = http.Client();

  // Future<List<Product>> fetchProducts() async {
  //   final response = await client.get(Uri.parse('https://fakestoreapi.com/products'));

  //   if (response.statusCode == 200) {
  //     List<dynamic> body = json.decode(response.body);
  //     List<Product> products = body.map((dynamic item) => Product.fromJson(item)).toList();
  //     return products;
  //   } else {
  //     throw Exception('Failed to load products');
  //   }
  // }

   final String apiUrl = 'https://fakestoreapi.com/products';

   Future <List<Product>?> fetchProducts () async {
      final response = await http.get(Uri.parse(apiUrl));

      if(response.statusCode == 200){
        var json = response.body; 
        return productFromJson(json);
      }
      else {
        print('Error response: ${response.body}');
      }
      return null;
  }
}
