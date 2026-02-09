import 'package:evently/theme/app_theme.dart';
import 'package:evently/ui/onboarding/onboarding_screen.dart';
import 'package:evently/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      //themeMode: ThemeMode.dark,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        OnboardingScreen.routeName : (context) => OnboardingScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
