import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blueGray10001,
        body: Container(
          width: 496.h,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 25.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 99.h,
                ),
                child: Row(
                  children: [
                    _buildPrimaryOne1(context),
                    Padding(
                      padding: EdgeInsets.only(left: 34.h),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Secondary",
                              style: CustomTextStyles.titleSmallPoppins,
                            ),
                          ),
                          SizedBox(height: 2.v),
                          Container(
                            width: 89.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillOrange,
                            child: Text(
                              "#FFAD4D",
                              style: CustomTextStyles
                                  .bodySmallPoppinsBlack900Light,
                            ),
                          ),
                          Container(
                            width: 89.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 18.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillSecondaryContainer,
                            child: Text(
                              "#F5F06A",
                              style: CustomTextStyles
                                  .bodySmallPoppinsOnPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Container(
                            width: 89.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.fillBlack,
                            child: Text(
                              "#000000",
                              style: CustomTextStyles.bodySmallPoppinsWhiteA700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 38.v),
              SizedBox(
                width: 448.h,
                child: Text(
                  "Alasan : \nPemilihan kombinasi warna abu abu, dan putih, sangat sesuai untuk aplikasi ini. Warna abu abu merupakan warna dingin yang menciptakan rasa ketenangan, sementara warna putih adalah warna netral yang memastikan antarmuka pengguna (UI) sehingga memberikan pengalaman yang optimal dalam menggunakan website.\nMenggunakan warna hijau karena dapat menciptakan tampilan visual yang menarik dan menambahkan kesan estetika pada desain.\nMenggunakan warna orange dikombinasi dengan hijau juga sangat cocok untuk tampilan UI",
                  maxLines: 10,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPoppinsBlack900,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrimaryOne1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 201.h,
          margin: EdgeInsets.only(right: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Primary",
                style: CustomTextStyles.titleSmallPoppins,
              ),
              Text(
                "Secondary",
                style: CustomTextStyles.titleSmallPoppins,
              ),
            ],
          ),
        ),
        SizedBox(height: 2.v),
        SizedBox(
          width: 213.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 17.h),
                child: _buildSecondaryOne(
                  context,
                  dynamicText1: "#B7B7B7",
                  dynamicText2: "#D9D9D9",
                  dynamicText3: "#FFFFFF",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.h),
                child: _buildSecondaryOne(
                  context,
                  dynamicText1: "#1EB605",
                  dynamicText2: "#1DD000",
                  dynamicText3: "#B4F7A3",
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSecondaryOne(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
    required String dynamicText3,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Container(
              width: 89.h,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillGreen,
              child: Text(
                dynamicText1,
                style: CustomTextStyles.bodySmallPoppinsBlack900Light.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
            Container(
              width: 89.h,
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                dynamicText2,
                style: CustomTextStyles.bodySmallPoppinsOnPrimaryContainer
                    .copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            SizedBox(height: 1.v),
            Container(
              width: 89.h,
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillLightGreen,
              child: Text(
                dynamicText3,
                style: CustomTextStyles.bodySmallPoppinsBlack900Light.copyWith(
                  color: appTheme.black900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
