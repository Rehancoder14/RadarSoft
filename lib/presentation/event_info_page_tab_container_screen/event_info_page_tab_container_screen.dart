import 'package:radarsoft/core/core/utils/image_constant.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/core/widgets/app_bar/appbar_leading_image.dart';
import 'package:radarsoft/core/widgets/app_bar/appbar_trailing_image.dart';
import 'package:radarsoft/core/widgets/app_bar/custom_app_bar.dart';
import 'package:radarsoft/presentation/event_info_page/event_info_page.dart';

import '../event_info_page_tab_container_screen/widgets/twentynine_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class EventInfoPageTabContainerScreen extends StatefulWidget {
  const EventInfoPageTabContainerScreen({Key? key}) : super(key: key);

  @override
  EventInfoPageTabContainerScreenState createState() =>
      EventInfoPageTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class EventInfoPageTabContainerScreenState
    extends State<EventInfoPageTabContainerScreen>
    with TickerProviderStateMixin {
  int sliderIndex = 1;

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildStack(context),
                  SizedBox(height: 10.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    _buildTabview(context),
                    SizedBox(
                        height: 633.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              EventInfoPage(),
                              EventInfoPage(),
                              EventInfoPage(),
                              EventInfoPage()
                            ]))
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
        height: 354.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomAppBar(
              height: 86.v,
              leadingWidth: 44.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 34.v),
                  onTap: () {
                    onTapArrowLeft(context);
                  }),
              actions: [
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgHeartLine,
                    margin:
                        EdgeInsets.only(left: 16.h, top: 24.v, right: 34.h)),
                AppbarTrailingImage(
                    imagePath: ImageConstant.imgSendPlaneLine,
                    margin: EdgeInsets.only(left: 12.h, top: 24.v, right: 50.h))
              ],
              styleType: Style.bgFill),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 16.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CarouselSlider.builder(
                        options: CarouselOptions(
                            height: 272.v,
                            initialPage: 0,
                            autoPlay: true,
                            viewportFraction: 1.0,
                            enableInfiniteScroll: false,
                            scrollDirection: Axis.horizontal,
                            onPageChanged: (index, reason) {
                              sliderIndex = index;
                            }),
                        itemCount: 2,
                        itemBuilder: (context, index, realIndex) {
                          return TwentynineItemWidget();
                        }),
                    SizedBox(height: 10.v),
                    SizedBox(
                        height: 4.v,
                        child: AnimatedSmoothIndicator(
                            activeIndex: sliderIndex,
                            count: 2,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                                spacing: 2,
                                activeDotColor: appTheme.blueGray400,
                                dotColor: appTheme.blueGray10001,
                                dotHeight: 4.v,
                                dotWidth: 4.h)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
        height: 28.v,
        width: 358.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.gray900,
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700),
            unselectedLabelColor: appTheme.blueGray400,
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w500),
            indicatorColor: theme.colorScheme.errorContainer,
            tabs: [
              Tab(child: Text("Event info")),
              Tab(child: Text("Agenda")),
              Tab(child: Text("Sponsors")),
              Tab(child: Text("Speakers"))
            ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
