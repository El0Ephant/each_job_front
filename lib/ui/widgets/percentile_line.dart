import 'dart:math';

import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PercentileLine extends StatelessWidget {
  const PercentileLine({
    super.key,
    required this.bottom,
    required this.upper,
    required this.median,
    required this.oftenSalariesBottom,
    required this.oftenSalariesUpper
  });
  final num bottom;
  final num upper;
  final num median;
  final num oftenSalariesBottom;
  final num oftenSalariesUpper;
  final _mainMarkIndent = 20;
  final _mainMarkPadding = 10;

  @override
  Widget build(BuildContext context) {
    final bottom = (this.bottom ~/ 1000);
    final upper = (this.upper ~/ 1000);
    final median = (this.median ~/ 1000);
    final oftenSalariesBottom = (this.oftenSalariesBottom ~/ 1000);
    final oftenSalariesUpper = (this.oftenSalariesUpper ~/ 1000);
    return LayoutBuilder(
      builder: (context, constraints) {
        final fullWidth = constraints.maxWidth - AppSizes.commonBorderRadius * 2;
        final salaryWidth = upper - bottom;
        final oftenSalariesStart = (oftenSalariesBottom - bottom) / salaryWidth * fullWidth;
        final medianPos = max((median - bottom) / salaryWidth * (fullWidth) + AppSizes.commonBorderRadius, oftenSalariesStart + 40);
        final oftenSalariesEnd = max((oftenSalariesUpper - bottom) / salaryWidth * fullWidth + AppSizes.commonBorderRadius, medianPos + 40);
        return SizedBox(
          width: double.infinity,
          child: Stack(
            children: [
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    height: AppSizes.commonHeight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: AppColors.secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius))
                      ),
                    ),
                  ),
                ),
              ),
              _Mark(
                message: '10% получают меньше',
                isOftenSalaries: false,
                value: bottom.toInt(),
                padding: const EdgeInsets.only(left: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              _Mark(
                message: '90% получают меньше',
                isOftenSalaries: false,
                value: upper.toInt(),
                padding: const EdgeInsets.only(right: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.end,
                right: 0,
              ),
              _Mark(
                message: '25% получают меньше',
                isOftenSalaries: true,
                value: oftenSalariesBottom.toInt(),
                padding: const EdgeInsets.only(left: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.start,
                left: oftenSalariesStart,
                bottom: 0,
              ),
              _Mark(
                message: '75% получают меньше',
                isOftenSalaries: true,
                value: oftenSalariesUpper.toInt(),
                padding: const EdgeInsets.only(right: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.end,
                right: constraints.maxWidth - oftenSalariesEnd,
                bottom: 0,
              ),

              Positioned.fill(
                left: oftenSalariesStart,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: oftenSalariesEnd - oftenSalariesStart,
                    height: AppSizes.commonHeight,
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: AppColors.main2Color,
                        borderRadius: BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius)),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: medianPos, top: _mainMarkPadding.toDouble(), bottom: _mainMarkPadding.toDouble()),
                child: SizedBox(
                  width: 1,
                  height: AppSizes.commonHeight + _mainMarkIndent * 2,
                  child: const ColoredBox(color: AppColors.main2Color),
                ),
              ),
              Builder(
                builder: (context) {
                  TextPainter textPainter = TextPainter(
                    text: TextSpan(text: "${median}k", style: AppTextStyles.plotOnMainTextStyle),
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center
                  );
                  textPainter.layout();
                  return Positioned.fill(
                    top: 95/2 - textPainter.height/2,
                    left: medianPos - textPainter.width/2,
                    child: Text("${median}k", style: AppTextStyles.plotOnMainTextStyle,),
                  );
                }
              ),
              // Костыль, но иначе тултип не срабатывал на 50%
              Positioned(
                top: 95/2 - 10,
                left: medianPos - 20,
                child:  const Tooltip(
                  message: '50% получают меньше',
                  verticalOffset: 20,
                  preferBelow: false,
                  child: SizedBox(
                    height: 20,
                    width: 40,
                  ),
                ),
              ),
              // Костыль, но иначе тултип не срабатывал на 75%
              Positioned(
                right: constraints.maxWidth - oftenSalariesEnd,
                bottom: 0,
                child:  const Tooltip(
                  message: '75% получают меньше',
                  verticalOffset: 10,
                  preferBelow: true,
                  child: SizedBox(
                    height: 20,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}

class _Mark extends StatelessWidget {
  const _Mark({
    super.key,
    required this.isOftenSalaries,
    required this.value,
    required this.padding,
    required this.crossAxisAlignment,
    required this.message,
    this.right,
    this.left,
    this.top,
    this.bottom,
  });
  final CrossAxisAlignment crossAxisAlignment;
  final bool isOftenSalaries;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final EdgeInsets padding;
  final String message;
  final int value;
  final _secondaryMarkIndent = 10;

  @override
  Widget build(BuildContext context) {
    final textWidget = Text("${value}k",
      style: isOftenSalaries ? AppTextStyles.plotMain2TextStyle : AppTextStyles.plotSecondaryTextStyle
    );
    final markWidget = Padding(
      padding: padding,
      child: SizedBox(
        width: 1,
        height: AppSizes.commonHeight + _secondaryMarkIndent,
        child: ColoredBox(
          color: isOftenSalaries ? AppColors.main2Color : AppColors.secondaryColor,
        )
      ),
    );
    return Positioned(
      right: right,
      left: left,
      top: top,
      bottom: bottom,
      child: Tooltip(
        message: message,
        verticalOffset: 37,
        preferBelow: isOftenSalaries,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: isOftenSalaries ? [
            markWidget,
            textWidget
          ] : [
            textWidget,
            markWidget
          ],
        ),
      ),
    );
  }
}

