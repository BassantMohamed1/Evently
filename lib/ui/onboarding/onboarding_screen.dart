import 'package:evently/ui/onboarding/onboarding_pages_screen.dart';
import 'package:evently/ui/state_management/app_provider.dart';
import 'package:evently/ui/widgets/language_toggle.dart';
import 'package:evently/ui/widgets/theme_toggle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../l10n/generated/app_localizations.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider onboardingProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/Group 4.png"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            spacing: 16,
            children: [
              Image.asset((onboardingProvider.currentTheme == ThemeMode.light)?"assets/images/being-creative.png":"assets/images/designer-desk.png"),
              Text(AppLocalizations.of(context)!.personalizeTitle, style: Theme.of(context).textTheme.titleLarge,),
              Text(AppLocalizations.of(context)!.personalizeDescription, style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.language, style: Theme.of(context).textTheme.titleLarge,),
                  LanguageToggle(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.theme, style: Theme.of(context).textTheme.titleLarge,),
                  ThemeToggle(),
                ],
              ),
              Row(
                children: [
                  Expanded(child: FilledButton(onPressed: (){
                    Navigator.pushReplacementNamed(context, OnboardingPagesScreen.routeName);
                  }, child: Text(AppLocalizations.of(context)!.letsStart, style: TextStyle(fontSize: 22),))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
