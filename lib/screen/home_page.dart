import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spoonacular/controller/product_controller.dart';
import 'package:spoonacular/helper/route_helper.dart';
import 'package:spoonacular/screen/widget/single_category_iteam.dart';
import 'package:spoonacular/screen/widget/single_product_item.dart';
import '../helper/images.dart';
import '../model/category_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();

  Future<void> _scrollListener() async {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      if (Get.find<ProductController>().isPagination) {
        Get.find<ProductController>().increment();
        Get.find<ProductController>()
            .getAllProductData(Get.find<ProductController>().number.toString());
      }
    }
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).secondaryHeaderColor),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Food List",
          style: TextStyle(color: Theme.of(context).secondaryHeaderColor),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Image.asset(
              Images.GIRL_ICON,
              width: 50,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: GetBuilder<ProductController>(builder: (productController) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(RouteHelper.getSearchScreen())!.then((value) {
                        productController.searchProductModel = null;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context)
                                .disabledColor
                                .withOpacity(0.5),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Theme.of(context)
                                .disabledColor
                                .withOpacity(0.9),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search Food..",
                            style: TextStyle(
                                color: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.9)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productCategoryList.length,
                    itemBuilder: (context, index) => SingleCategoryIteam(
                      productCategory: productCategoryList[index],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GetBuilder<ProductController>(builder: (productCon) {
                  return productCon.productList.length == 0
                      ? Padding(
                          padding:
                              EdgeInsets.only(top: Get.size.height / 2 - 250),
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        )
                      : ListView.builder(
                          primary: false,
                          shrinkWrap: true,
                          itemCount: productController.productList.length,
                          itemBuilder: (context, index) => SingleProductItem(
                            extendedIngredients:
                                productController.productList[index],
                            imageBaseUrl: productController.allProductModel!
                                .recipes![0].spoonacularSourceUrl
                                .toString(),
                          ),
                        );
                }),
                SizedBox(
                  height: 15,
                ),
                productController.isLoading && productController.isPagination
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : SizedBox()
              ],
            ),
          ),
        );
      }),
    );
  }
}
