import 'package:each_job/domain/models/vacancy/vacancy.dart';
import 'package:each_job/utils/app_colors.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:each_job/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VacancyTile extends StatelessWidget {
  const VacancyTile({
    super.key,
    required this.vacancy
  });
  final Vacancy vacancy;

  String decodeCurrency(String? currency){
    switch (currency?.toLowerCase()){
      case 'usd':
        return '\$';
      case 'uah':
        return '₴';
      case 'kzt':
        return '₸';
      case 'gel':
        return '₾';
      case 'eur':
        return '€';
      case 'rur':
        return '₽';
      case null:
        return '₽';
      default:
        return currency!.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    final decodedCurrency = decodeCurrency(vacancy.salaryCurrency);
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(vacancy.url));
      },
      borderRadius: const BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius)),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(AppSizes.commonBorderRadius)),
          border: Border.all(color: AppColors.strokeColor, width: 1)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(vacancy.name, style: AppTextStyles.vacancyBigTextStyle,),
                    if (vacancy.salaryFrom != null && vacancy.salaryTo != null)
                      Text('${vacancy.salaryFrom!.toInt()} - ${vacancy.salaryTo!.toInt()} $decodedCurrency', style: AppTextStyles.vacancyMediumTextStyle,),
                    if (vacancy.salaryFrom != null && vacancy.salaryTo == null)
                      Text('от ${vacancy.salaryFrom!.toInt()} $decodedCurrency', style: AppTextStyles.vacancyMediumTextStyle,),
                    if (vacancy.salaryFrom == null && vacancy.salaryTo != null)
                      Text('до ${vacancy.salaryTo!.toInt()} $decodedCurrency', style: AppTextStyles.vacancyMediumTextStyle,)
                  ],
                ),
              ),
              const SizedBox(width: AppSizes.innerIndent,),
              const Icon(Icons.arrow_forward_ios_rounded, size: 25, color: AppColors.strokeColor,)
            ],
          ),
        ),
      ),
    );
  }
}
