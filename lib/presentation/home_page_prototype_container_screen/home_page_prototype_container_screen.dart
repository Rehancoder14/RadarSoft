import 'package:flutter/material.dart';
import 'package:radarsoft/core/core/utils/size_utils.dart';
import 'package:radarsoft/core/routes/app_routes.dart';
import 'package:radarsoft/core/widgets/custom_bottom_bar.dart';
import 'package:radarsoft/presentation/home_page_prototype_tab_container_page/home_page_prototype_tab_container_page.dart';

// ignore_for_file: must_be_immutable
class HomePagePrototypeContainerScreen extends StatelessWidget {
  HomePagePrototypeContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePagePrototypeTabContainerPage;
      case BottomBarEnum.Messages:
        return AppRoutes.appNavigationScreen;
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePagePrototypeTabContainerPage:
        return const HomePagePrototypeTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
