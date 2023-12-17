import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_elevated_button.dart';
import 'package:logotop_web/widgets/custom_search_view.dart';
import 'package:logotop_web/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileProductSevenScreen extends StatelessWidget {
  MobileProductSevenScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  TextEditingController paymentMethodController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 29.v),
                    child: Column(children: [
                      _buildSearchStack(context),
                      SizedBox(height: 35.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(right: 16.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 220.v,
                                        width: 200.h,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                      "Acordes Vini Co.",
                                                      style: theme.textTheme
                                                          .bodyLarge)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgRectangle11,
                                                  height: 200.adaptSize,
                                                  width: 200.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      8.h),
                                                  alignment:
                                                      Alignment.bottomCenter)
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 12.h,
                                            top: 20.v,
                                            bottom: 144.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomElevatedButton(
                                                  width: 78.h,
                                                  text: "Buy this logo"),
                                              SizedBox(height: 14.v),
                                              Text("Rp. 200.000",
                                                  style: theme
                                                      .textTheme.bodyMedium)
                                            ]))
                                  ]))),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 74.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 21.v),
                          decoration: AppDecoration.fillOrange.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildPaymentMethodColumn(context),
                            SizedBox(height: 40.v),
                            CustomTextFormField(
                                controller: passwordController,
                                hintText: "password",
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 12.v, 13.h, 12.v),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgEye,
                                        height: 10.v,
                                        width: 15.h)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 35.v),
                                obscureText: true,
                                contentPadding: EdgeInsets.only(
                                    left: 18.h, top: 10.v, bottom: 10.v)),
                            SizedBox(height: 40.v),
                            CustomElevatedButton(
                                height: 35.v,
                                text: "PAY",
                                buttonStyle: CustomButtonStyles.fillPrimaryTL7,
                                buttonTextStyle:
                                    CustomTextStyles.labelLargeBlack900Bold),
                            SizedBox(height: 27.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 61.h),
                                    child: Text("Rp. 200.000",
                                        style: theme.textTheme.titleSmall))),
                            SizedBox(height: 35.v)
                          ])),
                      SizedBox(height: 5.v)
                    ])))));
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

  /// Section Widget
  Widget _buildPaymentMethodColumn(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Acordes Vini Co.", style: theme.textTheme.titleMedium),
      SizedBox(height: 25.v),
      CustomTextFormField(
          controller: paymentMethodController, hintText: "Mandiri")
    ]);
  }

  /// Navigates to the mobileCategoryScreen when the action is triggered.
  onTapImgCategory(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileCategoryScreen);
  }
}
