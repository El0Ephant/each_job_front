import 'package:each_job/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

abstract class AppTextStyles{
  static const commonLabelTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.normal
  );
  static const boldLabelTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.w500
  );
  static const mainButtonTextStyle = TextStyle(
    color: AppColors.backgroundColor,
    fontSize: 14,
    fontWeight: FontWeight.w500
  );
  static const plotSecondaryTextStyle = TextStyle(
    color: AppColors.secondaryColor,
    height: 1.4,
    fontSize: 14,
    fontWeight: FontWeight.w500
  );
  static const plotOnMainTextStyle = TextStyle(
    color: AppColors.onMain1Color,
    fontSize: 20,
    fontWeight: FontWeight.w500
  );
  static const plotMain2TextStyle = TextStyle(
    color: AppColors.main2Color,
    height: 1.2,
    fontSize: 16,
    fontWeight: FontWeight.w500
  );
  static const vacancyBigTextStyle = TextStyle(
    color: AppColors.textColor,
    height: 1.2,
    fontSize: 20,
    fontWeight: FontWeight.w500
  );
  static const vacancyMediumTextStyle = TextStyle(
    color: AppColors.textColor,
    height: 1.2,
    fontSize: 16,
    fontWeight: FontWeight.w500
  );
  static const vacancySmallTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 14,
    fontWeight: FontWeight.normal
  );
}