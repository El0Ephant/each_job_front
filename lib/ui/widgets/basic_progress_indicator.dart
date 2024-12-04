import 'package:each_job/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BasicProgressIndicator extends StatelessWidget {
  const BasicProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        strokeWidth: 3,
        color: AppColors.main1Color,
        strokeCap: StrokeCap.round,
      ),
    );
  }
}
