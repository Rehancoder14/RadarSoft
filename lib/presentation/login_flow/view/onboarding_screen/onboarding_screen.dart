// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/app_bar/appbar_leading_image.dart';
import 'package:radarsoft/core/widgets/app_bar/custom_app_bar.dart';
import 'package:radarsoft/core/widgets/custom_elevated_button.dart';
import 'package:radarsoft/presentation/event_info_page/event_info_page.dart';
import 'package:radarsoft/presentation/home_page_prototype_container_screen/home_page_prototype_container_screen.dart';
import 'package:radarsoft/presentation/home_page_prototype_page/home_page_prototype_page.dart';
import 'package:radarsoft/presentation/login_flow/bloc/login_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  final String num;
  OnboardingScreen({Key? key, required this.num}) : super(key: key);

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
                  BlocProvider(
                    create: (context) => LoginBloc(),
                    child: BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {},
                      child: BlocBuilder<LoginBloc, LoginState>(
                          builder: (context, state) {
                        return CustomElevatedButton(
                            onPressed: () async {
                              if (controller.text.isNotEmpty &&
                                  controller.text.length == 4) {
                                BlocProvider.of<LoginBloc>(context)
                                    .add(LoginVerifyOTP(num, controller.text));
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Successfully logged in')));
                                await Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const EventInfoPage()));
                              }
                            },
                            text: "Verify",
                            buttonTextStyle:
                                CustomTextStyles.titleLargeOnPrimary);
                      }),
                    ),
                  ),
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

  TextEditingController controller = TextEditingController();

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.number,
        controller: controller,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hintText: "Please enter your otp",
          hintStyle: theme.textTheme.bodyLarge,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
          fillColor: theme.colorScheme.onPrimary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.h),
            borderSide: BorderSide(
              color: theme.colorScheme.secondaryContainer,
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.h),
            borderSide: BorderSide(
              color: theme.colorScheme.secondaryContainer,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.h),
            borderSide: BorderSide(
              color: theme.colorScheme.secondaryContainer,
              width: 1,
            ),
          ),
        ));
  }

  onTapArrowLeftLine(BuildContext context) {
    Navigator.pop(context);
  }
}
