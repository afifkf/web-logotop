import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MobileHomeScreen extends StatelessWidget {
  MobileHomeScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 29.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 150.v),
                              child: Column(children: [
                                _buildSearchStack(context),
                                SizedBox(height: 36.v),
                                _buildAcordesViniCoColumn(context),
                                SizedBox(height: 47.v),
                                _buildAtlantaMightyBearsColumn(context),
                                SizedBox(height: 94.v),
                                _buildSamuraiColumn(context)
                              ]))))
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
              height: 29.v,
              width: 21.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 21.h))
        ]));
  }

  /// Section Widget
  Widget _buildAcordesViniCoColumn(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgRectangle11,
          height: 280.adaptSize,
          width: 280.adaptSize,
          radius: BorderRadius.circular(8.h),
          onTap: () {
            onTapImgImage(context);
          }),
      SizedBox(height: 1.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Acordes Vini Co.", style: theme.textTheme.bodyLarge),
              SizedBox(height: 7.v),
              Text("Rp. 200.000", style: theme.textTheme.bodyMedium)
            ]),
            GestureDetector(
                onTap: () {
                  onTapTxtBuy(context);
                },
                child: Container(
                    width: 36.h,
                    margin:
                        EdgeInsets.only(left: 111.h, top: 9.v, bottom: 15.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5),
                    child: Text("Buy",
                        style: CustomTextStyles.bodyMediumExtraLight)))
          ])
    ]);
  }

  /// Section Widget
  Widget _buildAtlantaMightyBearsColumn(BuildContext context) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgRectangle15,
          height: 280.adaptSize,
          width: 280.adaptSize,
          radius: BorderRadius.circular(8.h),
          onTap: () {
            onTapImgImage1(context);
          }),
      SizedBox(height: 1.v),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Atlanta Mighty Bears", style: theme.textTheme.bodyLarge),
              SizedBox(height: 5.v),
              Text("Rp. 150.000", style: theme.textTheme.bodyMedium)
            ]),
            GestureDetector(
                onTap: () {
                  onTapTxtBuy1(context);
                },
                child: Container(
                    width: 36.h,
                    margin: EdgeInsets.only(left: 76.h, top: 8.v, bottom: 15.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 1.v),
                    decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder5),
                    child: Text("Buy",
                        style: CustomTextStyles.bodyMediumExtraLight)))
          ])
    ]);
  }

  /// Section Widget
  Widget _buildSamuraiColumn(BuildContext context) {
    return Column(children: [
      SizedBox(
          height: 326.v,
          width: 280.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle12,
                height: 280.adaptSize,
                width: 280.adaptSize,
                radius: BorderRadius.circular(8.h),
                alignment: Alignment.topCenter,
                onTap: () {
                  onTapImgImage2(context);
                }),
            Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                    padding: EdgeInsets.only(bottom: 26.v),
                    child: Text("Samurai", style: theme.textTheme.bodyLarge))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text("Rp. 210.000", style: theme.textTheme.bodyMedium)),
            Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                    onTap: () {
                      onTapTxtBuy2(context);
                    },
                    child: Container(
                        width: 36.h,
                        margin: EdgeInsets.only(bottom: 15.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 6.h, vertical: 1.v),
                        decoration: AppDecoration.fillWhiteA.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5),
                        child: Text("Buy",
                            style: CustomTextStyles.bodyMediumExtraLight))))
          ])),
      SizedBox(height: 49.v),
      Padding(
          padding: EdgeInsets.only(right: 8.h),
          child: Column(children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle16,
                height: 280.adaptSize,
                width: 280.adaptSize,
                radius: BorderRadius.circular(8.h),
                onTap: () {
                  onTapImgImage3(context);
                }),
            SizedBox(height: 1.v),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Squirrel", style: theme.textTheme.bodyLarge),
                        SizedBox(height: 5.v),
                        Text("Rp. 150.000", style: theme.textTheme.bodyMedium)
                      ]),
                  GestureDetector(
                      onTap: () {
                        onTapTxtBuy3(context);
                      },
                      child: Container(
                          width: 36.h,
                          margin: EdgeInsets.only(
                              left: 159.h, top: 8.v, bottom: 15.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.h, vertical: 1.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Text("Buy",
                              style: CustomTextStyles.bodyMediumExtraLight)))
                ])
          ]))
    ]);
  }

  /// Navigates to the mobileCategoryScreen when the action is triggered.
  onTapImgCategory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileCategoryScreen);
  }

  /// Navigates to the mobileProductTwoScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductTwoScreen);
  }

  /// Navigates to the mobileProductTwoScreen when the action is triggered.
  onTapTxtBuy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductTwoScreen);
  }

  /// Navigates to the mobileProductTenScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductTenScreen);
  }

  /// Navigates to the mobileProductTenScreen when the action is triggered.
  onTapTxtBuy1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductTenScreen);
  }

  /// Navigates to the mobileProductNineScreen when the action is triggered.
  onTapImgImage2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductNineScreen);
  }

  /// Navigates to the mobileProductNineScreen when the action is triggered.
  onTapTxtBuy2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductNineScreen);
  }

  /// Navigates to the mobileProductThreeScreen when the action is triggered.
  onTapImgImage3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductThreeScreen);
  }

  /// Navigates to the mobileProductThreeScreen when the action is triggered.
  onTapTxtBuy3(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileProductThreeScreen);
  }
}
