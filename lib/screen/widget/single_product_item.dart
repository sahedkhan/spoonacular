import 'package:flutter/material.dart';

import '../../model/all_product_model.dart';
class SingleProductItem extends StatelessWidget {
  ExtendedIngredients extendedIngredients;
  String imageBaseUrl;
  SingleProductItem(
      {Key? key, required this.extendedIngredients, required this.imageBaseUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          padding: EdgeInsets.only(left: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).disabledColor.withOpacity(0.5),
                offset: Offset(2, 5),
                blurRadius: 4.5,
                spreadRadius: 2.0,
              ),
            ],
          ),
          margin: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      extendedIngredients.name.toString(),
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      extendedIngredients.originalName.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("Price: \$${extendedIngredients.amount}"),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.network(
                  "${imageBaseUrl}/${extendedIngredients.image}",
                  height: 100,
                  width: 100,
                ),
              )
            ],
          )),
    );
  }
}
