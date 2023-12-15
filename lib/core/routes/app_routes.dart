import 'package:flutter/material.dart';
import 'package:radarsoft/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:radarsoft/presentation/event_info_page_tab_container_screen/event_info_page_tab_container_screen.dart';
import 'package:radarsoft/presentation/login_flow/view/login_to_gathrr_screen/login_to_gathrr_screen.dart';
import 'package:radarsoft/presentation/login_flow/view/onboarding_screen/onboarding_screen.dart';
import 'package:radarsoft/presentation/login_flow/view/splash%20_screen.dart/splash_screen.dart';

import '../../presentation/home_page_prototype_container_screen/home_page_prototype_container_screen.dart';

class AppRoutes {
  static const String onboardingScreenOneScreen =
      '/onboarding_screen_one_screen';

  static const String loginToGathrrScreen = '/login_to_gathrr_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String joinGathrrScreen = '/join_gathrr_screen';

  static const String onboardingScreenTwoScreen =
      '/onboarding_screen_two_screen';

  static const String eventInfoPage = '/event_info_page';

  static const String eventInfoPageTabContainerScreen =
      '/event_info_page_tab_container_screen';

  static const String homePagePrototypePage = '/home_page_prototype_page';

  static const String homePagePrototypeTabContainerPage =
      '/home_page_prototype_tab_container_page';

  static const String homePagePrototypeContainerScreen =
      '/home_page_prototype_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardingScreenOneScreen: (context) => OnboardingScreenOneScreen(),
    loginToGathrrScreen: (context) => LoginToGathrrScreen(),
    eventInfoPageTabContainerScreen: (context) =>
        EventInfoPageTabContainerScreen(),
    homePagePrototypeContainerScreen: (context) =>
        HomePagePrototypeContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
