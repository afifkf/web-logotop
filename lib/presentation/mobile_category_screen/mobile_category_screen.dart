import 'package:flutter/material.dart';
import 'package:logotop_web/core/app_export.dart';
import 'package:logotop_web/widgets/custom_search_view.dart';

class MobileCategoryScreen extends StatelessWidget {
  MobileCategoryScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: SizedBox(
              height: 1412.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 31.v),
                      decoration: AppDecoration.fillGray,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildSearchStack(context),
                          SizedBox(height: 33.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Abstract",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Animal - Bird",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Animal - Horse",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Animal - General",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Art",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Beauty",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 42.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 27.h),
                                  child: Text(
                                    "Construction",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 42.h,
                                  margin: EdgeInsets.only(top: 1.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Education",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Entertainment",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: _buildMedicalRow(
                              context,
                              medicalLabel: "Fashion",
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Globes",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Health",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 13.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 42.h,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 25.h),
                                  child: Text(
                                    "Mascot",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 12.v),
                          Padding(
                            padding: EdgeInsets.only(left: 59.h),
                            child: _buildMedicalRow(
                              context,
                              medicalLabel: "Medical",
                            ),
                          ),
                          SizedBox(height: 14.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 6.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "Nature - General",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 25.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "Nature - Mountain",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 6.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "Nature - Plants",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 8.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.h,
                                    top: 6.v,
                                  ),
                                  child: Text(
                                    "People",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 5.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "Real Estate",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 5.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.h,
                                    top: 4.v,
                                  ),
                                  child: Text(
                                    "Restaurant",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 40.h,
                                    top: 6.v,
                                  ),
                                  child: Text(
                                    "Security",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 27.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 7.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 6.v,
                                  ),
                                  child: Text(
                                    "Sport",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 4.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight2,
                            height: 27.v,
                            width: 41.h,
                            margin: EdgeInsets.only(left: 47.h),
                          ),
                          SizedBox(height: 13.v),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 46.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight2,
                                    height: 27.v,
                                    width: 41.h,
                                    margin: EdgeInsets.only(bottom: 8.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 37.h,
                                      top: 7.v,
                                    ),
                                    child: Text(
                                      "Technology - Computer",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 47.h,
                              right: 71.h,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 9.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 7.v,
                                  ),
                                  child: Text(
                                    "Technology - General",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          _buildTechnologyNetworkingRow(context),
                          SizedBox(height: 6.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 25.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 8.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 5.v,
                                  ),
                                  child: Text(
                                    "Transport",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgArrowRight2,
                                  height: 26.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(bottom: 5.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 37.h,
                                    top: 3.v,
                                  ),
                                  child: Text(
                                    "Travel",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 95.v),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 322.v),
                      child: Text(
                        "Technology - Communication",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchStack(BuildContext context) {
    return SizedBox(
      height: 98.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 48.v),
              padding: EdgeInsets.symmetric(
                horizontal: 19.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillLightGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: CustomSearchView(
                      width: 205.h,
                      controller: searchController,
                      hintText: "Search logos",
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCategory,
                    height: 25.adaptSize,
                    width: 25.adaptSize,
                    margin: EdgeInsets.only(top: 3.v),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 42.h),
              child: Text(
                "Logotop",
                style: theme.textTheme.displayMedium,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 24.v,
            width: 21.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 21.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTechnologyNetworkingRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 47.h,
          right: 30.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight2,
              height: 26.v,
              width: 41.h,
              margin: EdgeInsets.only(bottom: 7.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 37.h,
                top: 5.v,
              ),
              child: Text(
                "Technology - Networking",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMedicalRow(
    BuildContext context, {
    required String medicalLabel,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight2,
          height: 27.v,
          width: 42.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.h),
          child: Text(
            medicalLabel,
            style: theme.textTheme.titleLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
