import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/theme/custom_text_style.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';

import '../home_page_prototype_page/widgets/bannerimagegathrr_item_widget.dart';
import '../home_page_prototype_page/widgets/sectionlist_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePagePrototypePage extends StatefulWidget {
  const HomePagePrototypePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePagePrototypePageState createState() => HomePagePrototypePageState();
}

class HomePagePrototypePageState extends State<HomePagePrototypePage>
    with AutomaticKeepAliveClientMixin<HomePagePrototypePage> {
  int sliderIndex = 1;

  List sectionlistItemList = [
    {'id': 1, 'groupBy': "Explore Local Events In Your Area"},
    {'id': 2, 'groupBy': "Explore Local Events In Your Area"},
    {'id': 3, 'groupBy': "Events this weekend"},
    {'id': 4, 'groupBy': "Events this weekend"},
    {'id': 5, 'groupBy': "Events this weekend"}
  ];

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
                SizedBox(height: 16.v),
                Column(
                  children: [
                    _buildBannerImageGathrr(context),
                    SizedBox(height: 25.v),
                    _buildSectionList(context),
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
  Widget _buildBannerImageGathrr(BuildContext context) {
    return SizedBox(
      height: 148.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider.builder(
            options: CarouselOptions(
              height: 148.v,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (
                index,
                reason,
              ) {
                sliderIndex = index;
              },
            ),
            itemCount: 2,
            itemBuilder: (context, index, realIndex) {
              return BannerimagegathrrItemWidget();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 8.v,
              margin: EdgeInsets.only(bottom: 7.v),
              child: AnimatedSmoothIndicator(
                activeIndex: sliderIndex,
                count: 2,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 2.74,
                  activeDotColor: appTheme.gray500,
                  dotColor: appTheme.blueGray10001,
                  dotHeight: 8.v,
                  dotWidth: 8.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSectionList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: GroupedListView<dynamic, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: sectionlistItemList,
          groupBy: (element) => element['groupBy'],
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
              padding: EdgeInsets.only(
                top: 16.v,
                bottom: 14.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    value,
                    style: CustomTextStyles.titleMediumGray900.copyWith(
                      color: appTheme.gray900,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Text(
                      value,
                      style: CustomTextStyles.bodyMediumBlue800.copyWith(
                        decoration: TextDecoration.underline,
                        color: appTheme.blue800,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          itemBuilder: (context, model) {
            return SectionlistItemWidget();
          },
          separator: SizedBox(
            height: 16.v,
          ),
        ),
      ),
    );
  }
}
