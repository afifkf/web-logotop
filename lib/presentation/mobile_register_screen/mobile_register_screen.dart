import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_elevated_button.dart';
import 'package:logotop_web/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileRegisterScreen extends StatelessWidget {
  MobileRegisterScreen({Key? key}) : super(key: key);

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 42.h, vertical: 31.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Logotop", style: theme.textTheme.displayMedium),
                          Spacer(flex: 52),
                          Align(
                              alignment: Alignment.center,
                              child: Text("Sign Up",
                                  style: theme.textTheme.headlineLarge)),
                          SizedBox(height: 30.v),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 31.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 25.h, vertical: 47.v),
                                  decoration: AppDecoration.fillPrimary
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder15),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 20.v),
                                        _buildEmailField(context),
                                        SizedBox(height: 40.v),
                                        _buildPasswordField(context),
                                        SizedBox(height: 40.v),
                                        _buildCreateAccountButton(context),
                                        SizedBox(height: 41.v),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  onTapTxtAlreadyhavean(
                                                      context);
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 19.h),
                                                    child: RichText(
                                                        text:
                                                            TextSpan(children: [
                                                          TextSpan(
                                                              text: "Already",
                                                              style: CustomTextStyles
                                                                  .bodySmallBlack900),
                                                          TextSpan(
                                                              text:
                                                                  " have an account?  ",
                                                              style: CustomTextStyles
                                                                  .bodySmallBlack900),
                                                          TextSpan(
                                                              text: "Sign In",
                                                              style: CustomTextStyles
                                                                  .bodySmallOnPrimary)
                                                        ]),
                                                        textAlign:
                                                            TextAlign.left))))
                                      ]))),
                          SizedBox(height: 17.v),
                          _buildRegisterAsSellerButton(context),
                          Spacer(flex: 47)
                        ])))));
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return CustomTextFormField(
        controller: emailFieldController,
        hintText: "email",
        textInputType: TextInputType.emailAddress);
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return CustomTextFormField(
        controller: passwordFieldController,
        hintText: "password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 12.v, 13.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgEye, height: 10.v, width: 15.h)),
        suffixConstraints: BoxConstraints(maxHeight: 35.v),
        obscureText: true,
        contentPadding: EdgeInsets.only(left: 18.h, top: 10.v, bottom: 10.v));
  }

  /// Section Widget
  Widget _buildCreateAccountButton(BuildContext context) {
    return CustomElevatedButton(
        height: 35.v,
        text: "Create Account",
        buttonStyle: CustomButtonStyles.fillIndigoA,
        buttonTextStyle: theme.textTheme.labelLarge!,
        onPressed: () {
          onTapCreateAccountButton(context);
        });
  }

  /// Section Widget
  Widget _buildRegisterAsSellerButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 145.h,
        text: "Register as seller",
        margin: EdgeInsets.only(left: 31.h),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: CustomTextStyles.labelLargeBlack900,
        onPressed: () {
          onTapRegisterAsSellerButton(context);
        });
  }

  /// Navigates to the mobileHomeScreen when the action is triggered.
  onTapCreateAccountButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileHomeScreen);
  }

  /// Navigates to the mobileLoginOneScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileLoginOneScreen);
  }

  /// Navigates to the mobileRegisterSellerScreen when the action is triggered.
  onTapRegisterAsSellerButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileRegisterSellerScreen);
  }
}
