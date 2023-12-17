import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Register",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileRegisterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Register One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileRegisterOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Register Seller",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileRegisterSellerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Register Seller One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileRegisterSellerOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Login One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileLoginOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Login",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Home One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileHomeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Home",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileHomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Ten",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductNineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Category",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileCategoryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Category One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileCategoryOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Mobile Product One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.mobileProductOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Colors",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.colorsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
