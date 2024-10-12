import 'dart:convert';
import 'package:get/get.dart';
import '../../model/all_product_model.dart';
import 'package:http/http.dart' as http;

class AllProductController extends GetxController {
  var productsList = <Products>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchRatedProducts();
    super.onInit();
  }

  void fetchRatedProducts() async {
    try {
      isLoading(true);
      final response =
          await http.get(Uri.parse('https://dummyjson.com/products'));

      if (response.statusCode == 200) {
        var productsData = AllProductModel.fromJson(json.decode(response.body));

        if (productsData.products != null) {
          productsList.assignAll(productsData.products!);
        }
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch rated products');
    } finally {
      isLoading(false);
    }
  }
}
