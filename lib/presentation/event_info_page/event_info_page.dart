import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/app_decoration.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/custom_elevated_button.dart';
import 'package:radarsoft/core/widgets/custom_icon_button.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';

class EventInfoPage extends StatefulWidget {
  const EventInfoPage({Key? key})
      : super(
          key: key,
        );

  @override
  EventInfoPageState createState() => EventInfoPageState();
}

class EventInfoPageState extends State<EventInfoPage>
    with AutomaticKeepAliveClientMixin<EventInfoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 19.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Startups growth by Devan Patil",
                        style: CustomTextStyles.titleLargeGray900,
                      ),
                    ),
                    SizedBox(height: 15.v),
                    _buildStartupsgrowth(context),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 20.v),
                            child: CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCalendar2Fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Saturday, 09 April, 2023",
                                  style: CustomTextStyles
                                      .titleMediumOnPrimaryContainer,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "6:00 PM - 8:00 PM",
                                  style: CustomTextStyles
                                      .bodyMediumOnPrimaryContainer,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.v),
                    _buildAttendees(context),
                    SizedBox(height: 18.v),
                    _buildAbout(context),
                    SizedBox(height: 17.v),
                    _buildHostedBy(context),
                    SizedBox(height: 20.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Need Help?",
                        style: CustomTextStyles.titleLargeGray900,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomIconButton(
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            padding: EdgeInsets.all(5.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCustomerServiceFill,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Call us",
                              style: CustomTextStyles.bodyLargeBlack900,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: CustomIconButton(
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              padding: EdgeInsets.all(5.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgWechatFill,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 10.h,
                              top: 2.v,
                            ),
                            child: Text(
                              "Chat with us",
                              style: CustomTextStyles.bodyLargeBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 34.v),
                    _buildRegisterNow(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartupsgrowth(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 21.v),
              child: CustomIconButton(
                height: 24.adaptSize,
                width: 24.adaptSize,
                padding: EdgeInsets.all(5.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMapPinFill,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "RadarSoft office",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "Creaticity Mall, Shahstri Nagar",
                    style: CustomTextStyles.bodyMediumGray900,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 24.v,
              ),
              child: Text(
                "View on map",
                style: CustomTextStyles.bodyMediumBlue800.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAttendees(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(5.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgTeamFill,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgAttendees,
              height: 24.v,
              width: 52.h,
              margin: EdgeInsets.only(left: 12.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 5.v,
              ),
              child: Text(
                "+45 going",
                style: theme.textTheme.titleSmall,
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text(
                "Attendees",
                style: CustomTextStyles.bodyMediumBlue800.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: CustomTextStyles.titleLargeGray900,
          ),
          SizedBox(height: 11.v),
          Container(
            width: 339.h,
            margin: EdgeInsets.only(right: 19.h),
            child: Text(
              "Startup growth is a dynamic journey that encompasses innovation, adaptability, and strategic planning. In the fast-paced world of entrepreneurship, startups strive to expand their customer base, increase revenue, and establish a solid market presence.",
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumOnPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHostedBy(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hosted by",
            style: CustomTextStyles.titleLargeGray900,
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 48.v,
            width: 335.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "Cofounder & CEO of Radarsoft technologies",
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse138,
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        radius: BorderRadius.circular(
                          24.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 16.h,
                          bottom: 27.v,
                        ),
                        child: Text(
                          "Jeet Vithlani",
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterNow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.fromLTRB(16.h, 9.v, 16.h, 8.v),
      decoration: AppDecoration.outlineBlueGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Free",
                  style: CustomTextStyles.titleLargeBlack900,
                ),
                SizedBox(height: 7.v),
                Text(
                  "(No taxes needed) ",
                  style: CustomTextStyles.bodyMediumBlack900,
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 184.h,
            text: "Register now",
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
          ),
        ],
      ),
    );
  }
}
