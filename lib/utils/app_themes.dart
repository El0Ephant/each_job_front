import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

abstract class AppThemes{
  static const InputBorder _commonInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius)),
    borderSide: BorderSide(
      color: AppColors.secondaryColor,
      width: 1
    )
  );

  static ThemeData commonTheme = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.main1Color,
      onPrimary: AppColors.onMain1Color,
      secondary: AppColors.secondaryColor,
      onSecondary: AppColors.main1Color,
      error: AppColors.main2Color,
      onError: AppColors.onMain1Color,
      surface: AppColors.backgroundColor,
      onSurface: AppColors.strokeColor
    ),
    textTheme: const TextTheme(
      bodyLarge: AppTextStyles.commonLabelTextStyle,
      titleMedium: AppTextStyles.commonLabelTextStyle,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.textFieldIndent),
      enabledBorder: _commonInputBorder,
      disabledBorder: _commonInputBorder,
      focusedBorder: _commonInputBorder.copyWith(
        borderSide: const BorderSide(color: AppColors.main1Color)
      ),
      hintStyle: AppTextStyles.commonLabelTextStyle
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0.0),
        backgroundColor: WidgetStateColor.resolveWith((states) {
          if (states.contains(WidgetState.pressed)){
            return AppColors.main1Color.withOpacity(0.9);
          }
          return AppColors.main1Color;
        },),
        foregroundColor: WidgetStateProperty.all(AppColors.onMain1Color),
        textStyle: WidgetStateProperty.all(AppTextStyles.mainButtonTextStyle),
        side: WidgetStateProperty.all(const BorderSide(color: AppColors.strokeColor, width: 1)),
        shape: WidgetStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius))))
      )
    ),
    useMaterial3: true,
  );
}