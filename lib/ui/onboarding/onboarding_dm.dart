import 'package:flutter/material.dart';

class OnboardingDM {
  final String imagePath;
  final String title;
  final String description;

  OnboardingDM({
    required this.imagePath,
    required this.title,
    required this.description,
  });

  static List<OnboardingDM> onboardingPages = [];

  static void generateOnboardingPages() {
    onboardingPages = [];
    for (int i = 0; i < imagePaths.length; i++) {
      onboardingPages.add(
        OnboardingDM(
          imagePath: imagePaths[i],
          title: titles[i],
          description: descriptions[i],
        ),
      );
    }
  }
}

List<String> imagePaths = [
  "assets/images/hot-trending.png",
  (ThemeMode == ThemeMode.light) ? "assets/images/being-creative (1).png" : "assets/images/wireframe.png",
  (ThemeMode == ThemeMode.light) ? "assets/images/being-creative (2).png" : "assets/images/uploading.png",
];

List<String> titles = [
  "Find Events That Inspire You",
  "Effortless Event Planning",
  "Connect with Friends & Share Moments",
];

List<String> descriptions = [
  "Dive into a world of events crafted to fit your unique interests. Whether you're into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.",
  "Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
  "Make every event memorable by sharing the experience with others. Our platform lets you invite friends, keep everyone in the loop, and celebrate moments together. Capture and share the excitement with your network, so you can relive the highlights and cherish the memories.",
];
