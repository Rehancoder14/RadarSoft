import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/custom_elevated_button.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';
import 'package:radarsoft/presentation/login_flow/view/login_to_gathrr_screen/login_to_gathrr_screen.dart';

import '../../../../core/core/utils/size_utils.dart';

class OnboardingScreenOneScreen extends StatelessWidget {
  const OnboardingScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50F9,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 36.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 98.v,
                  width: 283.h,
                  margin: EdgeInsets.only(left: 32.h),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGathrrr,
                        height: 77.adaptSize,
                        width: 77.adaptSize,
                        alignment: Alignment.topLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLogoRemovebgPreview,
                        height: 85.v,
                        width: 272.h,
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 56.v),
              Container(
                width: 294.h,
                margin: EdgeInsets.only(
                  left: 30.h,
                  right: 32.h,
                ),
                child: Text(
                  "Gathrr: Where Events Come to Life, Effortlessly!",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineSmallPoppins.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildNetworking(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStarted(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNetworking(BuildContext context) {
    return SizedBox(
      height: 368.v,
      width: 358.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 358.adaptSize,
              width: 358.adaptSize,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup71,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse167,
                    height: 39.adaptSize,
                    width: 39.adaptSize,
                    radius: BorderRadius.circular(
                      19.h,
                    ),
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      left: 118.h,
                      bottom: 17.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 135.v,
                      width: 108.h,
                      margin: EdgeInsets.only(top: 24.v),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse165,
                            height: 49.adaptSize,
                            width: 49.adaptSize,
                            radius: BorderRadius.circular(
                              24.h,
                            ),
                            alignment: Alignment.bottomRight,
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow7,
                              height: 87.v,
                              width: 77.h,
                              alignment: Alignment.topLeft,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 342.v,
                      width: 271.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse162,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            radius: BorderRadius.circular(
                              16.h,
                            ),
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 45.h,
                              top: 35.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              height: 68.adaptSize,
                              width: 68.adaptSize,
                              child: Stack(
                                alignment: Alignment.bottomRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgEllipse161,
                                    height: 68.adaptSize,
                                    width: 68.adaptSize,
                                    radius: BorderRadius.circular(
                                      34.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      margin: EdgeInsets.only(bottom: 4.v),
                                      decoration: BoxDecoration(
                                        color: appTheme.green900,
                                        borderRadius: BorderRadius.circular(
                                          8.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(top: 52.v),
                              decoration: BoxDecoration(
                                color: appTheme.deepOrangeA20001,
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(
                                left: 115.h,
                                top: 2.v,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primary,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              margin: EdgeInsets.only(
                                left: 43.h,
                                bottom: 31.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.deepOrange800,
                                borderRadius: BorderRadius.circular(
                                  6.h,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow1,
                              height: 114.v,
                              width: 86.h,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(
                                left: 17.h,
                                bottom: 9.v,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow5,
                              height: 31.v,
                              width: 76.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(right: 34.h),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow8,
                              height: 50.v,
                              width: 132.h,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow3,
                              height: 126.v,
                              width: 96.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 59.h,
                                top: 66.v,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow9,
                              height: 75.v,
                              width: 27.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 105.h,
                                bottom: 44.v,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow10,
                              height: 55.v,
                              width: 41.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(
                                right: 19.h,
                                bottom: 52.v,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow4,
                              height: 54.v,
                              width: 41.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 119.v,
                                right: 31.h,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow11,
                              height: 62.v,
                              width: 16.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(
                                top: 25.v,
                                right: 34.h,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow2,
                              height: 73.v,
                              width: 32.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 23.h,
                                top: 71.v,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse159,
                            height: 64.adaptSize,
                            width: 64.adaptSize,
                            radius: BorderRadius.circular(
                              32.h,
                            ),
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 44.h,
                              bottom: 109.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse169,
                            height: 32.adaptSize,
                            width: 32.adaptSize,
                            radius: BorderRadius.circular(
                              16.h,
                            ),
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 23.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse170,
                            height: 37.adaptSize,
                            width: 37.adaptSize,
                            radius: BorderRadius.circular(
                              18.h,
                            ),
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 83.v,
                              right: 34.h,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                              margin: EdgeInsets.only(
                                right: 34.h,
                                bottom: 110.v,
                              ),
                              decoration: BoxDecoration(
                                color: appTheme.green900,
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 134.v,
                      width: 79.h,
                      margin: EdgeInsets.only(
                        right: 1.h,
                        bottom: 56.v,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(bottom: 41.v),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryContainer,
                                borderRadius: BorderRadius.circular(
                                  12.h,
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.6,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrow6,
                              height: 134.v,
                              width: 77.h,
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse160,
            height: 48.adaptSize,
            width: 48.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(right: 105.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginToGathrrScreen()),
            (route) => false);
      },
      text: "Get started",
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 58.v,
      ),
    );
  }
}
