// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppTheme {

  ///LIGHT MODE
  static const Color _scaffoldColorLight = Color(0xfff5f5f5);

  static const Color _primaryColorLight = Color(0xff5b2263);
  static const Color _buttonColor = Color(0xfff6596e);
  static const Color _secondaryColorLight = Color(0xfff5ded3);
  static const Color _errorColorLight = Color(0xffb00020);

  ///DARK MODE
  static const Color _scaffoldColorDark = Color(0xff121212);
  static const Color _primaryColorDark = Color(0xffb7b7a4);
  static const Color _secondaryColorDark = Color(0xffffe8d6);
  static const Color _errorColorDark = Color(0xffcf6679);


  static ThemeData light() {
    return ThemeData.light().copyWith(
      primaryColor: _primaryColorLight,
      primaryColorDark: _buttonColor,
      primaryColorLight: _primaryColorLight,
      scaffoldBackgroundColor: _scaffoldColorLight,
      disabledColor: Colors.white.withOpacity(0.15),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: Colors.white,
      ),
      colorScheme: const ColorScheme.light().copyWith(
        secondary: _secondaryColorLight,
        error: _errorColorLight,
      ),
    );
  }

  // static ThemeData dark() {
  //   return ThemeData.dark().copyWith(
  //     primaryColor: _primaryColorDark,
  //     primaryColorDark: _primaryColorDark,
  //     primaryColorLight: _secondaryColorDark,
  //     scaffoldBackgroundColor: _scaffoldColorDark,
  //     disabledColor: Colors.white.withOpacity(0.15),
  //     splashColor: Colors.white.withOpacity(0.50),
  //     progressIndicatorTheme: const ProgressIndicatorThemeData(
  //       color: Colors.white,
  //     ),
  //     textTheme: TextTheme(
  //       displayLarge: TextStyle(
  //         fontSize: 32.sp,
  //         fontWeight: FontWeight.w900,
  //         letterSpacing: -1.5,
  //       ),
  //       displayMedium: TextStyle(
  //         fontSize:  28.sp,
  //         fontWeight: FontWeight.w800,
  //         letterSpacing: -1.0,
  //       ),
  //       displaySmall: TextStyle(
  //         fontSize: 24.sp,
  //         fontWeight: FontWeight.w800,
  //         letterSpacing: -0.75,
  //       ),
  //       headlineMedium: TextStyle(
  //         fontSize:  20.sp,
  //         fontWeight: FontWeight.w800,
  //         letterSpacing: -0.50,
  //       ),
  //       headlineSmall: TextStyle(
  //         fontSize: 18.sp,
  //         fontWeight: FontWeight.w800,
  //         letterSpacing: -0.5,
  //       ),
  //
  //       titleLarge: TextStyle(
  //         fontSize:  16.sp,
  //         fontWeight: FontWeight.w700,
  //         letterSpacing: -0.25,
  //       ),
  //       titleMedium: TextStyle(
  //         fontSize:  16.sp,
  //         letterSpacing: 0.15,
  //       ),
  //       titleSmall: TextStyle(
  //         fontSize:  14.sp,
  //         letterSpacing: 0.1,
  //         fontWeight: FontWeight.w600,
  //       ),
  //       bodySmall: TextStyle(
  //         fontSize:  12.sp,
  //       ),
  //       bodyLarge: TextStyle(
  //         fontSize: 16.sp,
  //         letterSpacing: 0.5,
  //       ),
  //       bodyMedium: TextStyle(
  //         fontSize:  14.sp,
  //         letterSpacing: 0.25,
  //       ),
  //
  //       //BUTTON
  //       // button: TextStyle(
  //       //   fontSize:  11.sp,
  //       //   letterSpacing: 1.25,
  //       //   fontWeight: FontWeight.w700,
  //       //   color: Colors.black,
  //       // ),
  //     ), colorScheme: const ColorScheme.dark().copyWith(
  //       primary: _primaryColorDark,
  //       secondary: _secondaryColorDark,
  //       error: _errorColorDark,
  //     ).copyWith(error: _errorColorDark),
  //   );
  // }
}