import 'package:furnicher/utils/Routes/routes_name.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../View/Login/boarding.dart';
import '../../view/login/log_in.dart';

class AppRoutes {
  static List<GetPage<dynamic>>? getPages = [
    GetPage(
      name: RoutesName.boarding,
      page: () => const BoardingView(),
      // binding: HomeBindings(),
    ),
    GetPage(
      name: RoutesName.loginView,
      page: () => const LoginView(),
      // binding: HomeBindings(),
    ),
    // GetPage(
    //   name: RoutesName.homeView,
    //   page: () => const HomeView(),
    //   //   // binding: HomeBindings(),
    // ),
    // GetPage(
    //   name: RoutesName.productView,
    //   page: () => const ProductView(),
    //   // binding: HomeBindings(),
    // ),
    // GetPage(
    //   name: RoutesName.favoriteview,
    //   page: () => const FavoriteView(),
    //   // binding: HomeBindings(),
    // ),
  ];
}
