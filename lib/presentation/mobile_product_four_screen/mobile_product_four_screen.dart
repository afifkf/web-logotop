import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_elevated_button.dart';
import 'package:logotop_web/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MobileProductFourScreen extends StatelessWidget {
  MobileProductFourScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(children: [
                  _buildSearchStack(context),
                  SizedBox(height: 36.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 18.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: 219.v,
                                    width: 200.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgRectangle15,
                                              height: 200.adaptSize,
                                              width: 200.adaptSize,
                                              radius:
                                                  BorderRadius.circular(8.h),
                                              alignment:
                                                  Alignment.bottomCenter),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                  "Atlanta Mighty Bears",
                                                  style: theme
                                                      .textTheme.bodyLarge))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 12.h, top: 19.v, bottom: 144.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomElevatedButton(
                                              width: 78.h,
                                              text: "Buy this logo",
                                              onPressed: () {
                                                onTapBuyThisLogo(context);
                                              }),
                                          SizedBox(height: 14.v),
                                          Text("Rp. 150.000",
                                              style: theme.textTheme.bodyMedium)
                                        ]))
                              ]))),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildSearchStack(BuildContext context) {
    return SizedBox(
        height: 101.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 51.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v),
                  decoration: AppDecoration.fillLightGreen,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: CustomSearchView(
                                width: 205.h,
                                controller: searchController,
                                hintText: "Search logos")),
                        CustomImageView(
                            imagePath: ImageConstant.imgCategory,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(top: 3.v),
                            onTap: () {
                              onTapImgCategory(context);
                            })
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 42.h, top: 2.v),
                  child:
                      Text("Logotop", style: theme.textTheme.displayMedium))),
          CustomImageView(
              imagePath: ImageConstant.imgLock,
              height: 24.v,
              width: 21.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 21.h))
        ]));
  }

  /// Navigates to the mobileCategoryScreen when the action is triggered.
  onTapImgCategory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileCategoryScreen);
  }

  /// Navigates to the mobileProductScreen when the action is triggered.
  onTapBuyThisLogo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductScreen);
  }
}
