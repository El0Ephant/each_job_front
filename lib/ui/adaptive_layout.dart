import 'package:each_job/ui/widgets/logo.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.searchFields,
    required this.periodPicker,
    required this.searchSettings,
    required this.content,
    required this.searchButton,
  });

  final Widget searchFields;
  final Widget periodPicker;
  final Widget searchSettings;
  final Widget searchButton;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, BoxConstraints constraints) {
        if (!AppSizes.isAlbum(context)) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 35, right: 35, bottom: AppSizes.innerIndent),
                child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: const EachJobLogo()),
              ),
              searchFields,
              periodPicker,
              const SizedBox(
                height: AppSizes.outerIndent,
              ),
              searchSettings,
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
              constraints: const BoxConstraints(maxWidth: 1200),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, top: 10),
                    child: SizedBox(height: 100, child: EachJobLogo()),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            searchFields,
                            searchSettings,
                            const SizedBox(
                              height: AppSizes.innerIndent,
                            ),
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
