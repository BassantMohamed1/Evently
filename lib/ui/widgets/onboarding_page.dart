import 'package:evently/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state_management/app_provider.dart';

class OnboardingPage extends StatelessWidget {
  final int index;
  const OnboardingPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    AppProvider onboardingPagesProvider = Provider.of<AppProvider>(context);

    List<String> imagePaths = [
      "assets/images/hot-trending.png",
      (onboardingPagesProvider.currentTheme == ThemeMode.light)
          ? "assets/images/being-creative (1).png"
          : "assets/images/wireframe.png",
      (onboardingPagesProvider.currentTheme == ThemeMode.light)
          ? "assets/images/being-creative (2).png"
          : "assets/images/uploading.png",
    ];

    List<String> titles = [
      AppLocalizations.of(context)!.onboarding_title_1,
      AppLocalizations.of(context)!.onboarding_title_2,
      AppLocalizations.of(context)!.onboarding_title_3,
    ];

    List<String> descriptions = [
      AppLocalizations.of(context)!.onboarding_desc_1,
      AppLocalizations.of(context)!.onboarding_desc_2,
      AppLocalizations.of(context)!.onboarding_desc_3,
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 32,
        children: [
          Image.asset(imagePaths[index]),
          Text(
            titles[index],
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            descriptions[index],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  static List<OnboardingPage> getOnboardingPages(){
    List<OnboardingPage> onboardingPages = [];
    for(int i = 0; i < 3; i++) {
      onboardingPages.add(OnboardingPage(index: i,));
    }
    return onboardingPages;
  }
}
