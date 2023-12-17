import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_elevated_button.dart';
import 'package:logotop_web/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class MobileRegisterSellerOneScreen extends StatelessWidget {
  MobileRegisterSellerOneScreen({Key? key}) : super(key: key);

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
                    child: Column(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text("Logotop",
                              style: theme.textTheme.displayMedium)),
                      SizedBox(height: 65.v),
                      Text("Sign Up", style: theme.textTheme.headlineLarge),
                      SizedBox(height: 30.v),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: 31.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 47.v),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 20.v),
                                CustomTextFormField(
                                    controller: emailController,
                                    hintText: "email",
                                    textInputType: TextInputType.emailAddress),
                                SizedBox(height: 40.v),
                                CustomTextFormField(
                                    controller: passwordController,
                                    hintText: "password",
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
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
                                    text: "Create Account Seller",
                                    buttonStyle: CustomButtonStyles.fillOrange,
                                    buttonTextStyle:
                                        theme.textTheme.labelLarge!,
                                    onPressed: () {
                                      onTapCreateAccountSeller(context);
                                    }),
                                SizedBox(height: 41.v),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapTxtAlreadyhavean(context);
                                        },
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(right: 19.h),
                                            child: RichText(
                                                text: TextSpan(children: [
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
                                                textAlign: TextAlign.left))))
                              ])),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the mobileHomeScreen when the action is triggered.
  onTapCreateAccountSeller(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileHomeScreen);
  }

  /// Navigates to the mobileLoginOneScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mobileLoginOneScreen);
  }
}
