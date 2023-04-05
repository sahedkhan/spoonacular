import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spoonacular/controller/product_controller.dart';
import 'package:spoonacular/model/search_product_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.text = "";
    Get.find<ProductController>().searchProductModel == null;
    searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).secondaryHeaderColor),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Search Food",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GetBuilder<ProductController>(builder: (productController) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Theme.of(context)
                                    .disabledColor
                                    .withOpacity(0.5)), //<-- SEE HERE
                          ),
                          contentPadding: EdgeInsets.symmetric(vertical: 8),
                          hintText: 'Search Food...',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.search),
                        ),
                        onTap: () {},
                        onChanged: (value) {
                          // Do something with the value entered in the search box
                        },
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(11),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      onPressed: () async {
                        await productController
                            .searchProduct(searchController.text);
                      },
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: productController.isLoadingSearch
                    ? Padding(
                        padding:
                            EdgeInsets.only(top: Get.size.height / 2 - 120),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : productController.searchProductModel == null
                        ? Padding(
                            padding:
                                EdgeInsets.only(top: Get.size.height / 2 - 120),
                            child: Text("Please search your food."),
                          )
                        : productController
                                    .searchProductModel!.results!.length ==
                                0
                            ? Padding(
                                padding: EdgeInsets.only(
                                    top: Get.size.height / 2 - 120),
                                child: Text("No food found."),
                              )
                            : ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: productController
                                    .searchProductModel!.results!.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 255,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Theme.of(context)
                                              .disabledColor
                                              .withOpacity(0.5),
                                          offset: Offset(2, 5),
                                          blurRadius: 4.5,
                                          spreadRadius: 2.0,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Image.network(
                                          productController.searchProductModel!
                                              .results![index].image
                                              .toString(),
                                          width: Get.size.width / 3 * 2,
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          productController.searchProductModel!
                                              .results![index].title
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              letterSpacing: 1,
                                              wordSpacing: 1,
                                              overflow: TextOverflow.ellipsis),
                                          maxLines: 2,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
              )
            ],
          ),
        );
      }),
    );
  }
}
