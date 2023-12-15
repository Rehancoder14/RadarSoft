// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/app_decoration.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/custom_checkbox_button.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';
import 'package:radarsoft/core/widgets/custom_outlined_button.dart';
import 'package:radarsoft/core/widgets/custom_text_form_field.dart';

class JoinGathrrScreen extends StatelessWidget {
  JoinGathrrScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  bool phoneNumberSection = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 48.v),
                CustomImageView(
                  imagePath: ImageConstant.imgLogoRemovebgPreview,
                  height: 85.v,
                  width: 272.h,
                  alignment: Alignment.center,
                ),
                SizedBox(height: 59.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Join Gathrr",
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                SizedBox(height: 34.v),
                Container(
                  width: 324.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 49.h,
                  ),
                  child: Text(
                    "Join Gathrr to attend events network with the people from your industry.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 51.v),
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
                      _buildPhoneNumberSection(context),
                      SizedBox(height: 41.v),
                      CustomOutlinedButton(
                        text: "Join Gathrr",
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
                              text: "Login",
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
  Widget _buildPhoneNumberSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 40.h),
        child: CustomCheckboxButton(
          alignment: Alignment.centerLeft,
          text:
              "By proceeding you agree to our Terms & Conditions Privacy Policies",
          isExpandedText: true,
          value: phoneNumberSection,
          onChange: (value) {
            phoneNumberSection = value;
          },
        ),
      ),
    );
  }
}
