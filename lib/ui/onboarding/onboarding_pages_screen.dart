import 'package:evently/ui/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../state_management/app_provider.dart';

class OnboardingPagesScreen extends StatefulWidget {
  static const routeName = "onboardingPages";

  const OnboardingPagesScreen({super.key});

  @override
  State<OnboardingPagesScreen> createState() => _OnboardingPagesScreenState();
}

class _OnboardingPagesScreenState extends State<OnboardingPagesScreen> {
  final PageController _pageController = PageController();
  late final List<OnboardingPage> onboardingPages;

  @override
  void initState() {
    super.initState();
    onboardingPages = OnboardingPage.getOnboardingPages();
  }

  @override
  Widget build(BuildContext context) {
    AppProvider onboardingPagesProvider = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Image.asset("assets/images/Group 4.png")),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingPages.length,
                physics: NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  onboardingPagesProvider.changeOnboardingIndex(index);
                },
                itemBuilder: (context, index) {
                  return onboardingPages[index];
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (onboardingPagesProvider.onboardingIndex > 0)
                      ? OutlinedButton(
                          onPressed: () {
                            _pageController.previousPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            minimumSize: Size(40, 40),
                            shape: CircleBorder(),
                          ),
                          child: Icon(Icons.arrow_back, size: 28),
                        )
                      : SizedBox(width: 40),
                  SmoothPageIndicator(
                    controller: _pageController,
                    count: onboardingPages.length,
                    effect: ExpandingDotsEffect(
                      dotColor: Theme.of(context).colorScheme.secondary,
                      dotWidth: 8,
                      dotHeight: 8,
                      activeDotColor: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  (onboardingPagesProvider.onboardingIndex <
                          onboardingPages.length - 1)
                      ? OutlinedButton(
                          onPressed: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(8),
                            minimumSize: Size(40, 40),
                            shape: CircleBorder(),
                          ),
                          child: Icon(Icons.arrow_forward, size: 28),
                        )
                      : SizedBox(width: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
