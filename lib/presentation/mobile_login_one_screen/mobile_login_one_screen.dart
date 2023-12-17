import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_elevated_button.dart';
import 'package:logotop_web/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileLoginOneScreen extends StatelessWidget {
  MobileLoginOneScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 42.h, vertical: 31.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Logotop", style: theme.textTheme.displayMedium),
                          Spacer(flex: 45),
                          Padding(
                              padding: EdgeInsets.only(left: 108.h),
                              child: Text("Sign In",
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
                                        CustomTextFormField(
                                            controller: emailController,
                                            hintText: "email",
                                            textInputType:
                                                TextInputType.emailAddress),
                                        SizedBox(height: 40.v),
                                        CustomTextFormField(
                                            controller: passwordController,
                                            hintText: "password",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.visiblePassword,
                                            suffix: Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    30.h, 12.v, 13.h, 12.v),
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEye,
                                                    height: 10.v,
                                                    width: 15.h)),
                                            suffixConstraints:
                                                BoxConstraints(maxHeight: 35.v),
                                            obscureText: true,
                                            contentPadding: EdgeInsets.only(
                                                left: 18.h,
                                                top: 10.v,
                                                bottom: 10.v)),
                                        SizedBox(height: 40.v),
                                        CustomElevatedButton(
                                            height: 35.v,
                                            text: "Log In",
                                            buttonStyle:
                                                CustomButtonStyles.fillBlueGray,
                                            buttonTextStyle: CustomTextStyles
                                                .labelLargeBlack900,
                                            onPressed: () {
                                              onTapLogIn(context);
                                            }),
                                        SizedBox(height: 41.v),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtNothaveanyaccount(
                                                  context);
                                            },
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "Not",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900),
                                                  TextSpan(
                                                      text: " have an",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900),
                                                  TextSpan(
                                                      text: "y",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900),
                                                  TextSpan(
                                                      text: " account?  ",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900),
                                                  TextSpan(
                                                      text: "Sign Up",
                                                      style: CustomTextStyles
                                                          .bodySmallOnPrimary)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ]))),
                          Spacer(flex: 54)
                        ])))));
  }

  /// Navigates to the mobileHomeScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileHomeScreen);
  }

  /// Navigates to the mobileRegisterScreen when the action is triggered.
  onTapTxtNothaveanyaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileRegisterScreen);
  }
}
