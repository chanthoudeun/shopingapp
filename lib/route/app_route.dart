import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mall/favorite_shop/binding.dart';
import 'package:mall/favorite_shop/view.dart';
import 'package:mall/home_sreen/binding.dart';
import 'package:mall/home_sreen/view.dart';
import 'package:mall/login/binding.dart';
import 'package:mall/login/view.dart';
import 'package:mall/mall_detail/binding.dart';
import 'package:mall/mall_detail/view.dart';
import 'package:mall/mall_list/binding.dart';
import 'package:mall/mall_list/view.dart';
import 'package:mall/register_screen/binding.dart';
import 'package:mall/register_screen/view.dart';
import 'package:mall/shop_detail/binding.dart';
import 'package:mall/shop_detail/view.dart';
import 'package:mall/shop_list/binding.dart';
import 'package:mall/shop_list/view.dart';

class AppRoute {
  static const HOME = "/home_screen";
  static const LOGIN = "/login";
  static const MALL = "/mall_list";
  static const MALLDETAIL = "/mall_detail";
  static const SHOPDETAIL = "/shop_detail";
  static const SHOPLIST = "/shop_list";
  static const FAVORITESHOP = "/favorite_shop";
  static const REGISTER = "/register_screen";
  static final pages = [
    GetPage(
      name: HOME,
      page: () => HomeSreenPage(),
      binding: HomeSreenBinding(),
    ),
    GetPage(name: LOGIN, page: () => LoginPage(), binding: LoginBinding()),
    GetPage(name: MALL, page: () => MallListPage(), binding: MallListBinding()),
    GetPage(
        name: MALLDETAIL,
        page: () => MallDetailPage(),
        binding: MallDetailBinding()),
    GetPage(
        name: SHOPLIST, page: () => ShopListPage(), binding: ShopListBinding()),
    GetPage(
        name: SHOPDETAIL,
        page: () => ShopDetailPage(),
        binding: ShopDetailBinding()),
    GetPage(
      name: FAVORITESHOP,
      page: () => FavoriteShopPage(),
      binding: FavoriteShopBinding(),
    ),
    GetPage(
      name: REGISTER,
      page: () => RegisterScreenPage(),
      binding: RegisterScreenBinding(),
    ),
  ];
}
