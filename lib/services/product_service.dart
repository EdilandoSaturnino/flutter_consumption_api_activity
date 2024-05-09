import 'package:dio/dio.dart';
import '../models/product.dart';

class ProductService {
  final Dio _dio = Dio();

  Future<List<Product>> fetchProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      if (response.statusCode == 200) {
        return (response.data as List).map((item) => Product.fromJson(item)).toList();
      } else {
        throw Exception('erro');
      }
    } catch (e) {
      throw Exception('erro: $e');
    }
  }
}
