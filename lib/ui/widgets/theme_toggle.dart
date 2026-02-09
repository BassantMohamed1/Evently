import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 64,
      child: AnimatedToggleSwitch.rolling(
        current: AppTheme.lightTheme,
        values: [AppTheme.lightTheme, AppTheme.darkTheme],
        iconBuilder: (value, selected){
          if(value == AppTheme.lightTheme) {
            return Icon(Icons.sunny);
          } else {
            return Icon(Icons.dark_mode);
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
