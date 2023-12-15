import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/app_decoration.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/custom_image_view.dart';
import 'package:radarsoft/presentation/home_page_prototype_page/home_page_prototype_page.dart';

// ignore_for_file: must_be_immutable
class HomePagePrototypeTabContainerPage extends StatefulWidget {
  const HomePagePrototypeTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePagePrototypeTabContainerPageState createState() =>
      HomePagePrototypeTabContainerPageState();
}

class HomePagePrototypeTabContainerPageState
    extends State<HomePagePrototypeTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildHomePagePrototype(context),
              SizedBox(height: 2.v),
              Divider(
                color: appTheme.blueGray100,
                indent: 19.h,
                endIndent: 14.h,
              ),
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Browse by categories",
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 790.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      HomePagePrototypePage(),
                      HomePagePrototypePage(),
                      HomePagePrototypePage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHomePagePrototype(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillGray30033.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMapPinFillBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 14.v,
              bottom: 28.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Saturday, 07 April",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "Kalyani Nagar Pune, MH IN",
                  style: CustomTextStyles.bodyLargeBlack900,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgSearch,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 27.v,
              bottom: 15.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgNotification4Line,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 27.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 32.v,
      width: 374.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.onPrimary,
        unselectedLabelColor: appTheme.blueGray400,
        tabs: [
          Tab(
            child: Text(
              "All events",
            ),
          ),
          Tab(
            child: Text(
              "Startups",
            ),
          ),
          Tab(
            child: Text(
              "Technology",
            ),
          ),
        ],
      ),
    );
  }
}
