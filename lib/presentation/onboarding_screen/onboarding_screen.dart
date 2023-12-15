import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/app_decoration.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/app_bar/appbar_leading_image.dart';
import 'package:radarsoft/core/widgets/app_bar/custom_app_bar.dart';
import 'package:radarsoft/core/widgets/custom_outlined_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(children: [
                  Container(
                      width: 326.h,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Text(
                          "Check your message box we sent you the 4 digit verification code!",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleLarge!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 27.v),
                  _buildSeven(context),
                  SizedBox(height: 48.v),
                  CustomOutlinedButton(
                      text: "Verify",
                      buttonTextStyle: CustomTextStyles.titleLargeOnPrimary),
                  SizedBox(height: 44.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Didn’t receive it? ",
                            style: theme.textTheme.titleLarge),
                        TextSpan(
                            text: "Tap to resend",
                            style: CustomTextStyles.titleLargePrimary)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftLine,
            margin: EdgeInsets.fromLTRB(16.h, 14.v, 346.h, 14.v),
            onTap: () {
              onTapArrowLeftLine(context);
            }));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 110.h, vertical: 9.v),
        decoration: AppDecoration.outlineSecondaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              height: 28.v,
              child: VerticalDivider(width: 2.h, thickness: 2.v, indent: 1.h)),
          Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(left: 2.h, top: 9.v, bottom: 9.v),
              decoration: BoxDecoration(
                  color: appTheme.blueGray10001,
                  borderRadius: BorderRadius.circular(5.h))),
          Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(left: 29.h, top: 9.v, bottom: 9.v),
              decoration: BoxDecoration(
                  color: appTheme.blueGray10001,
                  borderRadius: BorderRadius.circular(5.h))),
          Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(left: 29.h, top: 9.v, bottom: 9.v),
              decoration: BoxDecoration(
                  color: appTheme.blueGray10001,
                  borderRadius: BorderRadius.circular(5.h))),
          Container(
              height: 10.adaptSize,
              width: 10.adaptSize,
              margin: EdgeInsets.only(left: 29.h, top: 9.v, bottom: 9.v),
              decoration: BoxDecoration(
                  color: appTheme.blueGray10001,
                  borderRadius: BorderRadius.circular(5.h)))
        ]));
  }

  onTapArrowLeftLine(BuildContext context) {
    Navigator.pop(context);
  }
}
