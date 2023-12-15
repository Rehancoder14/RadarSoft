import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radarsoft/core/theme/theme_helper.dart';
import 'package:radarsoft/presentation/login_flow/view/splash%20_screen.dart/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreenOneScreen(),
    );
  }
}
