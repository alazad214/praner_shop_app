import 'package:get/get.dart';

import '../../model/all_product_model.dart';

class CategoryController extends GetxController {
  var selectedCategory = 'All Categories'.obs;
  var filteredProducts = <Products>[].obs;

  List<Products> allProducts = [];

  void selectCategory(String category) {
    selectedCategory.value = category;
    if (category == 'All Categories') {
      filteredProducts.value = allProducts;
    } else {
      filteredProducts.value =
          allProducts.where((product) => product.category == category).toList();
    }
  }

  void loadProducts(List<Products> products) {
    allProducts = products;
    filteredProducts.value = allProducts;
  }
}
