// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:spoonacular/screen/home_page.dart';
// import '../controller/product_controller.dart';
//
// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({Key? key}) : super(key: key);
//
//   @override
//   _BottomNavBarState createState() => _BottomNavBarState();
// }
//
// class _BottomNavBarState extends State<BottomNavBar> {
//   ProductController productController = Get.put(ProductController());
//   List<IconData> navbarIcons = [
//     Icons.home,
//     Icons.shopping_cart_outlined,
//     Icons.add,
//     Icons.notifications_outlined,
//     Icons.person_outline
//   ];
//   List widgets = <Widget>[
//     HomePage(),
//     Center(
//         child: Text("",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
//     Center(
//         child: Text("",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
//     Center(
//         child: Text("",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
//     Center(
//         child: Text("",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
//   ];
//
//   int selectedIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widgets[selectedIndex],
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
//         child: Container(
//           padding: EdgeInsets.only(bottom: 0, left: 12, right: 12, top: 0),
//           height: 60,
//           decoration: BoxDecoration(
//               color: Theme.of(context).secondaryHeaderColor,
//               borderRadius: BorderRadius.circular(15)),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: navbarIcons.map(
//               (e) {
//                 int i = navbarIcons.indexOf(e);
//                 return AnimatedContainer(
//                   duration: Duration(milliseconds: 500),
//                   padding: EdgeInsets.all(8),
//                   height: 42,
//                   decoration: BoxDecoration(
//                     color: i == selectedIndex
//                         ? Theme.of(context).primaryColor
//                         : Colors.transparent,
//                     borderRadius: BorderRadius.all(Radius.circular(20.0)),
//                   ),
//                   child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       GestureDetector(
//                           child: Icon(
//                             e,
//                             size: 25,
//                             color: i == selectedIndex
//                                 ? Colors.white
//                                 : Colors.blueGrey[300],
//                           ),
//                           onTap: () {
//                             selectedIndex = i;
//                             setState(() {});
//                           }),
//                     ],
//                   ),
//                 );
//               },
//             ).toList(),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:spoonacular/screen/home_page.dart';

import '../controller/product_controller.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  ProductController productController = Get.put(ProductController());
  List<IconData> navbarIcons = [
    Icons.home,
    Icons.favorite_outlined,
    Icons.shopping_cart_outlined,
    Icons.notifications_outlined,
  ];
  List widgets = <Widget>[
    HomePage(),
    Center(
        child: Text("Favourite Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    Center(
        child: Text("Cart Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
    Center(
        child: Text("Notification Screen",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
  ];

  List<String> bottomNavigationName = [
    'Home',
    'Favourite',
    'Cart',
    'Notification'
  ];

  List<Color> color = [
    Colors.deepOrange,
    Colors.red,
    Colors.purple,
    Colors.blue,
  ];

  List<Color> colorShade = [
    Colors.deepOrange.shade100,
    Colors.red.shade100,
    Colors.purple.shade100,
    Colors.blue.shade100,
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[selectedIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 5, left: 12, right: 12, top: 5),
        height: 60,
        decoration: BoxDecoration(color: Theme.of(context).cardColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: navbarIcons.map(
            (e) {
              int i = navbarIcons.indexOf(e);
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                padding: EdgeInsets.all(8),
                height: 45,
                decoration: BoxDecoration(
                  color:
                      i == selectedIndex ? colorShade[i] : appStore.cardColor,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        child: Icon(
                          e,
                          size: 30,
                          color: i == selectedIndex
                              ? color[i]
                              : Colors.blueGrey[100],
                        ),
                        onTap: () {
                          selectedIndex = i;
                          setState(() {});
                        }),
                    (i == selectedIndex)
                        ? Container(
                            padding: EdgeInsets.symmetric(horizontal: 4.0),
                            child: Text(bottomNavigationName[i],
                                style: TextStyle(
                                    color: color[i],
                                    fontWeight: FontWeight.bold)))
                        : Container(),
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

AppStore appStore = AppStore();

class AppStore {
  Color? textPrimaryColor;
  Color? iconColorPrimaryDark;
  Color? scaffoldBackground;
  Color? backgroundColor;
  Color? backgroundSecondaryColor;
  Color? appColorPrimaryLightColor;
  Color? textSecondaryColor;
  Color? appBarColor;
  Color? iconColor;
  Color? iconSecondaryColor;
  Color? cardColor;

  AppStore() {
    textPrimaryColor = Color(0xFF212121);
    iconColorPrimaryDark = Color(0xFF212121);
    scaffoldBackground = Color(0xFFEBF2F7);
    backgroundColor = Colors.black;
    backgroundSecondaryColor = Color(0xFF131d25);
    appColorPrimaryLightColor = Color(0xFFF9FAFF);
    textSecondaryColor = Color(0xFF5A5C5E);
    appBarColor = Colors.white;
    iconColor = Color(0xFF212121);
    iconSecondaryColor = Color(0xFFA8ABAD);
    cardColor = Color(0xFF191D36);
  }
}
