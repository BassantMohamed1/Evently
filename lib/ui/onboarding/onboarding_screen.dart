import 'package:evently/ui/widgets/language_toggle.dart';
import 'package:evently/ui/widgets/theme_toggle.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  static const String routeName = "onboarding";
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              Image.asset("assets/images/being-creative.png"),
              Text("Personalize Your Experience", style: Theme.of(context).textTheme.titleLarge,),
              Text("Choose your preferred theme and language to get started with a comfortable, tailored experience that suits your style.", style: Theme.of(context).textTheme.bodyLarge,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Language", style: Theme.of(context).textTheme.titleLarge,),
                  LanguageToggle(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Theme", style: Theme.of(context).textTheme.titleLarge,),
                  ThemeToggle(),
                ],
              ),
              Row(
                children: [
                  Expanded(child: FilledButton(onPressed: (){}, child: Text("Let’s Start", style: TextStyle(fontSize: 22),))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
