import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spoonacular/model/category_model.dart';

class SingleCategoryIteam extends StatelessWidget {
  ProductCategory productCategory;
  SingleCategoryIteam({Key? key, required this.productCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Theme.of(context).disabledColor.withOpacity(0.5))),
      child: Row(
        children: [

          Text(productCategory.name)
        ],
      ),
    );
  }
}
