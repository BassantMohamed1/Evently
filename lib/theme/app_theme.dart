import 'package:evently/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.purple,
      onPrimary: AppColors.white,
      secondary: AppColors.black,
      onSecondary: AppColors.white,
      error: Colors.red,
      onError: AppColors.white,
      surface: AppColors.lightBlue,
      onSurface: AppColors.purple,
    ),

    //Buttons styles
    filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
            ),
            padding: EdgeInsets.all(16),
            textStyle: TextStyle(
                fontSize: 16
            )
        )
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          ),
          padding: EdgeInsets.all(16),
          textStyle: TextStyle(
              fontSize: 16
          )
      )
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
        )
      )
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
    ),

    //Text style
    textTheme: TextTheme(
      titleLarge: TextStyle(color: AppColors.purple),
      titleMedium: TextStyle(color: AppColors.purple),
      titleSmall: TextStyle(color: AppColors.purple),
      labelLarge: TextStyle(color: AppColors.black),
      labelMedium: TextStyle(color: AppColors.black),
      labelSmall: TextStyle(color: AppColors.black),
      bodyLarge: TextStyle(color: AppColors.black),
      bodyMedium: TextStyle(color: AppColors.black),
      bodySmall: TextStyle(color: AppColors.black),
    ),

    //app bar style
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightBlue,
      foregroundColor: AppColors.purple,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
    ),

    //input decoration style
    inputDecorationTheme: InputDecorationTheme(
      iconColor: AppColors.grey,
      prefixIconColor: AppColors.grey,
      suffixIconColor: AppColors.grey,
      hintStyle: TextStyle(
        fontSize: 14,
        color: AppColors.grey,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: AppColors.grey)
      ),
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey)
      ),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey)
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.red)
      )
    )
  );

  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.purple,
        onPrimary: AppColors.white,
        secondary: AppColors.white,
        onSecondary: AppColors.darkPurple,
        error: Colors.red,
        onError: AppColors.white,
        surface: AppColors.darkPurple,
        onSurface: AppColors.white,
      ),

      //Buttons styles
      filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              padding: EdgeInsets.all(16),
              textStyle: TextStyle(
                  fontSize: 16
              )
          )
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              padding: EdgeInsets.all(16),
              textStyle: TextStyle(
                  fontSize: 16
              )
          )
      ),

      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              )
          )
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
        elevation: 0,
      ),

      //Text style
      textTheme: TextTheme(
        titleLarge: TextStyle(color: AppColors.purple),
        titleMedium: TextStyle(color: AppColors.purple),
        titleSmall: TextStyle(color: AppColors.purple),
        labelLarge: TextStyle(color: AppColors.white),
        labelMedium: TextStyle(color: AppColors.white),
        labelSmall: TextStyle(color: AppColors.white),
        bodyLarge: TextStyle(color: AppColors.white),
        bodyMedium: TextStyle(color: AppColors.white),
        bodySmall: TextStyle(color: AppColors.white),
      ),

      //app bar style
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkPurple,
        foregroundColor: AppColors.purple,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
      ),

      //input decoration style
      inputDecorationTheme: InputDecorationTheme(
          iconColor: AppColors.white,
          prefixIconColor: AppColors.white,
          suffixIconColor: AppColors.white,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColors.white,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.purple)
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.purple)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: AppColors.purple)
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.red)
          )
      )
  );
}
