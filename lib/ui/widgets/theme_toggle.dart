import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:evently/ui/state_management/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeToggle extends StatelessWidget {
  const ThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    AppProvider toggleProvider = Provider.of<AppProvider>(context);
    return SizedBox(
      height: 32,
      width: 64,
      child: AnimatedToggleSwitch.rolling(
        current: toggleProvider.currentTheme,
        values: [ThemeMode.light, ThemeMode.dark],
        iconBuilder: (value, selected){
          if(value == ThemeMode.light) {
            return Icon(Icons.sunny);
          } else {
            return Icon(Icons.dark_mode);
          }
        },
        style: ToggleStyle(
          borderColor: Theme.of(context).colorScheme.primary,
          indicatorColor: Theme.of(context).colorScheme.primary,
        ),
        onChanged: (value) {
          toggleProvider.changeTheme();
        },
      ),
    );
  }
}
