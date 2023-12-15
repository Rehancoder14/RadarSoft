// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/app_decoration.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/custom_elevated_button.dart';
import 'package:radarsoft/core/widgets/custom_icon_button.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';
import 'package:radarsoft/core/widgets/custom_text_form_field.dart';

import '../../core/theme/custom_text_style.dart';

class LoginToGathrrScreen extends StatelessWidget {
  LoginToGathrrScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 48.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogoRemovebgPreview,
                  height: 85.v,
                  width: 272.h,
                ),
                SizedBox(height: 62.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Text(
                      "Login to Gathrr",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(height: 31.v),
                Container(
                  width: 347.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 26.h,
                  ),
                  child: Text(
                    "Gathrr is the go-to app to attend events network with the people from your industry.",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 21.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL32,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Phone number",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 22.v),
                      CustomTextFormField(
                        controller: phoneNumberController,
                        hintText: "Please enter your phone number",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                      ),
                      SizedBox(height: 24.v),
                      _buildFrame(context),
                      SizedBox(height: 41.v),
                      CustomElevatedButton(
                        onPressed: () {
                          // Navigator.pushAndRemoveUntil(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => LoginToGathrrScreen()),
                          //     (route) => false);
                        },
                        text: "Login",
                      ),
                      SizedBox(height: 45.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Already have an account? ",
                              style: theme.textTheme.titleLarge,
                            ),
                            TextSpan(
                              text: " Register",
                              style:
                                  CustomTextStyles.titleLargePrimary.copyWith(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 52.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 40.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 24.v,
              ),
              child: CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(3.h),
                decoration: IconButtonStyleHelper.fillBlue,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCharmTick,
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 281.h,
                margin: EdgeInsets.only(left: 12.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "By proceeding you agree to our ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "Terms",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                      TextSpan(
                        text: " & ",
                        style: theme.textTheme.bodyLarge,
                      ),
                      TextSpan(
                        text: "Conditions",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "Privacy Policies",
                        style: CustomTextStyles.titleMediumPrimary,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
