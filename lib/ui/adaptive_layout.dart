import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.searchFields,
    required this.periodPicker,
    required this.content,
    required this.searchButton,
  });

  final Widget searchFields;
  final Widget periodPicker;
  final Widget searchButton;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints) {
        if (MediaQuery.of(context).size.height * 1.2 >
            MediaQuery.of(context).size.width) {
          return Column(
            children: [
              searchFields,
              periodPicker,
              const SizedBox(
                height: AppSizes.innerIndent,
              ),
              searchButton,
              content
            ],
          );
        } else {
          return Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1200
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70, top: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppSizes.commonBorderRadius),
                        color: AppColors.secondaryColor
                      ),
                      width: 500,
                      height: 200,
                      child: Center(
                        child: Text("LOGO", style: TextStyle(fontSize: 100, color: AppColors.textColor.withOpacity(0.5)),),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            searchFields,
                            searchButton,
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Expanded(
                        child: periodPicker,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.innerIndent,
                  ),
                  content
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
