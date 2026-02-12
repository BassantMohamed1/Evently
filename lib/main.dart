import 'package:evently/theme/app_theme.dart';
import 'package:evently/ui/onboarding/onboarding_screen.dart';
import 'package:evently/ui/splash/splash_screen.dart';
import 'package:evently/ui/state_management/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'l10n/generated/app_localizations.dart';
import 'ui/onboarding/onboarding_pages_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      builder: (context, child) {
        AppProvider appProvider = Provider.of<AppProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appProvider.currentTheme,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          locale: Locale(appProvider.currentLocale),
          supportedLocales: AppLocalizations.supportedLocales,
          routes: {
            SplashScreen.routeName: (context) => SplashScreen(),
            OnboardingScreen.routeName: (context) => OnboardingScreen(),
            OnboardingPagesScreen.routeName: (context) => OnboardingPagesScreen(),
          },
          initialRoute: SplashScreen.routeName,
        );
      },
    );
  }
}
