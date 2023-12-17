import 'package:flutter/material.dart';
import 'package:logotop_web/presentation/mobile_register_screen/mobile_register_screen.dart';
import 'package:logotop_web/presentation/mobile_register_one_screen/mobile_register_one_screen.dart';
import 'package:logotop_web/presentation/mobile_register_seller_screen/mobile_register_seller_screen.dart';
import 'package:logotop_web/presentation/mobile_register_seller_one_screen/mobile_register_seller_one_screen.dart';
import 'package:logotop_web/presentation/mobile_login_one_screen/mobile_login_one_screen.dart';
import 'package:logotop_web/presentation/mobile_login_screen/mobile_login_screen.dart';
import 'package:logotop_web/presentation/mobile_home_one_screen/mobile_home_one_screen.dart';
import 'package:logotop_web/presentation/mobile_home_screen/mobile_home_screen.dart';
import 'package:logotop_web/presentation/mobile_product_two_screen/mobile_product_two_screen.dart';
import 'package:logotop_web/presentation/mobile_product_ten_screen/mobile_product_ten_screen.dart';
import 'package:logotop_web/presentation/mobile_product_nine_screen/mobile_product_nine_screen.dart';
import 'package:logotop_web/presentation/mobile_product_three_screen/mobile_product_three_screen.dart';
import 'package:logotop_web/presentation/mobile_product_eight_screen/mobile_product_eight_screen.dart';
import 'package:logotop_web/presentation/mobile_product_four_screen/mobile_product_four_screen.dart';
import 'package:logotop_web/presentation/mobile_product_five_screen/mobile_product_five_screen.dart';
import 'package:logotop_web/presentation/mobile_product_six_screen/mobile_product_six_screen.dart';
import 'package:logotop_web/presentation/mobile_category_screen/mobile_category_screen.dart';
import 'package:logotop_web/presentation/mobile_category_one_screen/mobile_category_one_screen.dart';
import 'package:logotop_web/presentation/mobile_product_seven_screen/mobile_product_seven_screen.dart';
import 'package:logotop_web/presentation/mobile_product_screen/mobile_product_screen.dart';
import 'package:logotop_web/presentation/mobile_product_eleven_screen/mobile_product_eleven_screen.dart';
import 'package:logotop_web/presentation/mobile_product_one_screen/mobile_product_one_screen.dart';
import 'package:logotop_web/presentation/colors_screen/colors_screen.dart';
import 'package:logotop_web/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mobileRegisterScreen = '/mobile_register_screen';

  static const String mobileRegisterOneScreen = '/mobile_register_one_screen';

  static const String mobileRegisterSellerScreen =
      '/mobile_register_seller_screen';

  static const String mobileRegisterSellerOneScreen =
      '/mobile_register_seller_one_screen';

  static const String mobileLoginOneScreen = '/mobile_login_one_screen';

  static const String mobileLoginScreen = '/mobile_login_screen';

  static const String mobileHomeOneScreen = '/mobile_home_one_screen';

  static const String mobileHomeScreen = '/mobile_home_screen';

  static const String mobileProductTwoScreen = '/mobile_product_two_screen';

  static const String mobileProductTenScreen = '/mobile_product_ten_screen';

  static const String mobileProductNineScreen = '/mobile_product_nine_screen';

  static const String mobileProductThreeScreen = '/mobile_product_three_screen';

  static const String mobileProductEightScreen = '/mobile_product_eight_screen';

  static const String mobileProductFourScreen = '/mobile_product_four_screen';

  static const String mobileProductFiveScreen = '/mobile_product_five_screen';

  static const String mobileProductSixScreen = '/mobile_product_six_screen';

  static const String mobileCategoryScreen = '/mobile_category_screen';

  static const String mobileCategoryOneScreen = '/mobile_category_one_screen';

  static const String mobileProductSevenScreen = '/mobile_product_seven_screen';

  static const String mobileProductScreen = '/mobile_product_screen';

  static const String mobileProductElevenScreen =
      '/mobile_product_eleven_screen';

  static const String mobileProductOneScreen = '/mobile_product_one_screen';

  static const String colorsScreen = '/colors_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    mobileRegisterScreen: (context) => MobileRegisterScreen(),
    mobileRegisterOneScreen: (context) => MobileRegisterOneScreen(),
    mobileRegisterSellerScreen: (context) => MobileRegisterSellerScreen(),
    mobileRegisterSellerOneScreen: (context) => MobileRegisterSellerOneScreen(),
    mobileLoginOneScreen: (context) => MobileLoginOneScreen(),
    mobileLoginScreen: (context) => MobileLoginScreen(),
    mobileHomeOneScreen: (context) => MobileHomeOneScreen(),
    mobileHomeScreen: (context) => MobileHomeScreen(),
    mobileProductTwoScreen: (context) => MobileProductTwoScreen(),
    mobileProductTenScreen: (context) => MobileProductTenScreen(),
    mobileProductNineScreen: (context) => MobileProductNineScreen(),
    mobileProductThreeScreen: (context) => MobileProductThreeScreen(),
    mobileProductEightScreen: (context) => MobileProductEightScreen(),
    mobileProductFourScreen: (context) => MobileProductFourScreen(),
    mobileProductFiveScreen: (context) => MobileProductFiveScreen(),
    mobileProductSixScreen: (context) => MobileProductSixScreen(),
    mobileCategoryScreen: (context) => MobileCategoryScreen(),
    mobileCategoryOneScreen: (context) => MobileCategoryOneScreen(),
    mobileProductSevenScreen: (context) => MobileProductSevenScreen(),
    mobileProductScreen: (context) => MobileProductScreen(),
    mobileProductElevenScreen: (context) => MobileProductElevenScreen(),
    mobileProductOneScreen: (context) => MobileProductOneScreen(),
    colorsScreen: (context) => ColorsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
