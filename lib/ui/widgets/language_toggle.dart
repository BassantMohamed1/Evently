import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 64,
      child: AnimatedToggleSwitch.rolling(
        current: "en",
        values: ["en", "ar"],
        iconBuilder: (value, selected){
          if(value == "en") {
            return Image.asset("assets/images/LR.png");
          } else {
            return Image.asset("assets/images/EG.png");
          }
        },
        style: ToggleStyle(
          borderColor: Theme.of(context).colorScheme.primary,
          indicatorColor: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
