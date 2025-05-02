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
          return Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.1),
                        child: Column(
                          children: [
                            searchFields,
                            searchButton,
                          ],
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: periodPicker,
                  )
                ],
              ),
              const SizedBox(
                height: AppSizes.innerIndent,
              ),
              content
            ],
          );
        }
      },
    );
  }
}
