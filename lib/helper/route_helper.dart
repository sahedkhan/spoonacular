import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:spoonacular/screen/home_page.dart';

import '../screen/dashboard_screen.dart';
import '../screen/search_screen.dart';
import '../screen/splash_screen.dart';

class RouteHelper {
  static const String initial = '/';
  static const String searchScreen = '/search-screen';

  static String getInitialRoute() => '$initial';
  static String getSearchScreen() => '$searchScreen';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => SplashScreen()),
    GetPage(name: searchScreen, page: () => SearchScreen()),
  ];
}
