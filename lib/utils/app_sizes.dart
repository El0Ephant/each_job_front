import 'package:flutter/widgets.dart';

abstract class AppSizes{
  static const double outerIndent = 26;
  static const double innerIndent = 8;
  static const double textFieldIndent = 16;
  static const double commonBorderRadius = 16;
  static const double commonHeight = 40;
  static bool isAlbum(BuildContext context) => MediaQuery.of(context).size.height * 1.2 <=
      MediaQuery.of(context).size.width;
}