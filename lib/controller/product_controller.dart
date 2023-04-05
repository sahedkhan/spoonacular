import 'dart:convert';

import 'package:get/get.dart';
import 'package:spoonacular/model/all_product_model.dart';
import 'package:http/http.dart' as http;

import '../model/search_product_model.dart';

class ProductController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    getAllProductData("1");
    super.onInit();
  }

  int number = 1;

  bool isLoading = false;
  bool isLoadingSearch = false;
  bool isPagination = false;

  AllProductModel? allProductModel;
  SearchProductModel? searchProductModel;
  List<ExtendedIngredients> productList = [];

  increment() {
    number = number + 1;
    update();
  }

  getAllProductData(String number) async {
    try {
      isLoading = true;
      update();
      final response = await http.get(Uri.parse(
          "https://api.spoonacular.com/recipes/random?apiKey=1819fe856a1e46bb80102238cd65757a&number=$number"));

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        allProductModel = AllProductModel.fromJson(data);
        if (allProductModel!.recipes![0].extendedIngredients!.length > 0 ||
            allProductModel!.recipes![0].extendedIngredients != null) {
          isPagination = true;
          update();
          allProductModel!.recipes![0].extendedIngredients!.forEach((element) {
            productList.add(element);
          });
          update();
          print(productList.length);
        } else {
          isPagination = false;
          update();
        }

      }
    } catch (error) {
      rethrow;
    } finally {
      isLoading = false;
      update();
    }
  }

  searchProduct(String searchValue) async {
    try {
      isLoadingSearch = true;
      update();
      final response = await http.get(Uri.parse(
          "https://api.spoonacular.com/recipes/complexSearch?apiKey=1819fe856a1e46bb80102238cd65757a&query=$searchValue"));
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        searchProductModel = SearchProductModel.fromJson(data);
        print(data);
      }
    } catch (error) {
      rethrow;
    } finally {
      isLoadingSearch = false;
      update();
    }
  }
}
