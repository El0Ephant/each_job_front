import 'dart:math';

import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
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
              _Mark(
                isOftenSalaries: false,
                value: bottom.toInt(),
                padding: const EdgeInsets.only(left: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.start,
              ),
              _Mark(
                isOftenSalaries: false,
                value: upper.toInt(),
                padding: const EdgeInsets.only(right: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.end,
                right: 0,
              ),
              _Mark(
                isOftenSalaries: true,
                value: oftenSalariesBottom.toInt(),
                padding: const EdgeInsets.only(left: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.start,
                left: oftenSalariesStart,
                bottom: 0,
              ),
              _Mark(
                isOftenSalaries: true,
                value: oftenSalariesUpper.toInt(),
                padding: const EdgeInsets.only(right: AppSizes.commonBorderRadius),
                crossAxisAlignment: CrossAxisAlignment.end,
                right: constraints.maxWidth - oftenSalariesEnd,
                bottom: 0,
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
              )
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
    );
  }
}

