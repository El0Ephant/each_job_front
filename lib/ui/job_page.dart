import 'package:each_job/ui/widgets/percentile_line.dart';
import 'package:each_job/ui/widgets/salary_chart.dart';
import 'package:each_job/ui/widgets/search_field.dart';
import 'package:each_job/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.outerIndent),
            child: Column(
              children: [
                SearchField<String>(
                  label: 'Регион',
                  onChange: (selectedValue) {

                  },
                  choices: regions,
                ),
                const SizedBox(height: AppSizes.innerIndent,),
                SearchField<String>(
                  label: 'Профессия',
                  onChange: (selectedValue) {

                  },
                  choices: regions,
                ),
                const SizedBox(height: AppSizes.outerIndent,),
                SizedBox(
                  height: AppSizes.commonHeight,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: Text("Показать статистику")
                  ),
                ),
                const SizedBox(height: AppSizes.outerIndent,),
                const PercentileLine(
                  bottom: 208,
                  upper: 651,
                  median: 400,
                  oftenSalariesBottom: 325,
                  oftenSalariesUpper: 511
                ),
                const SizedBox(height: AppSizes.outerIndent,),
                SizedBox(
                  height: 300,
                  child: SalaryChart(
                    data: salaryData
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final salaryData = [
  (
    date: DateTime(2023, 1),
    value: 348
  ),
  (
    date: DateTime(2023, 2),
    value: 355
  ),
  (
    date: DateTime(2023, 3),
    value: 372
  ),
  (
    date: DateTime(2023, 4),
    value: 367
  ),
  (
    date: DateTime(2023, 5),
    value: 388
  ),
  (
    date: DateTime(2023, 6),
    value: 395
  ),
  (
    date: DateTime(2023, 7),
    value: 365
  ),
  (
    date: DateTime(2023, 8),
    value: 386
  ),
  (
    date: DateTime(2023, 9),
    value: 402
  ),
  (
    date: DateTime(2023, 10),
    value: 425
  ),
  (
    date: DateTime(2023, 11),
    value: 408
  ),
  (
    date: DateTime(2023, 12),
    value: 412
  ),
  (
    date: DateTime(2024, 1),
    value: 430
  ),
  (
    date: DateTime(2024, 2),
    value: 422
  ),
  (
    date: DateTime(2024, 3),
    value: 410
  ),
  (
    date: DateTime(2024, 4),
    value: 406
  ),
  (
    date: DateTime(2024, 5),
    value: 402
  ),
  (
    date: DateTime(2024, 6),
    value: 400
  ),
];

const List<String> regions = [
  'Москва', 'Санкт-Петербург', 'Севастополь',

  'Адыгея', 'Алтай', 'Алтайский край', 'Амурская область', 'Архангельская область',
  'Астраханская область', 'Башкортостан', 'Байкальский край', 'Белгородская область',
  'Брянская область', 'Бурятия', 'Владимирская область', 'Волгоградская область',
  'Вологодская область', 'Воронежская область', 'Дагестан', 'Еврейская автономная область',
  'Забайкальский край', 'Ивановская область', 'Иркутская область', 'Кабардино-Балкария',
  'Калининградская область', 'Калужская область', 'Камчатский край', 'Карачаево-Черкесия',
  'Карелия', 'Кемеровская область', 'Кировская область', 'Костромская область',
  'Краснодарский край', 'Красноярский край', 'Курганская область', 'Курская область',
  'Ленинградская область', 'Липецкая область', 'Магаданская область', 'Московская область',
  'Мурманская область', 'Набережные Челны', 'Ненецкий автономный округ', 'Новгородская область',
  'Новосибирская область', 'Омская область', 'Оренбургская область', 'Орловская область',
  'Пензенская область', 'Пермский край', 'Приморский край', 'Псковская область', 'Ростовская область',
  'Рязанская область', 'Самарская область', 'Саратовская область', 'Сахалинская область',
  'Свердловская область', 'Смоленская область', 'Ставропольский край', 'Тамбовская область',
  'Татарстан', 'Тверская область', 'Томская область', 'Тульская область', 'Тюменская область',
  'Удмуртия', 'Ульяновская область', 'Хабаровский край', 'Хакасия', 'Ханты-Мансийский автономный округ',
  'Челябинская область', 'Чечня', 'Чувашия', 'Чукотский автономный округ', 'Ямало-Ненецкий автономный округ',
  'Ярославская область',

  'Москва', 'Санкт-Петербург', 'Новосибирск', 'Екатеринбург', 'Нижний Новгород',
  'Казань', 'Челябинск', 'Омск', 'Самара', 'Ростов-на-Дону', 'Уфа', 'Красноярск', 'Воронеж',
  'Пермь', 'Волгоград', 'Краснодар', 'Томск', 'Тольятти', 'Ижевск', 'Барнаул', 'Ульяновск',
  'Ярославль', 'Хабаровск', 'Махачкала', 'Магнитогорск', 'Ставрополь', 'Рязань', 'Саранск',
  'Сочи', 'Псков', 'Арзамас', 'Северодвинск', 'Набережные Челны', 'Петрозаводск', 'Смоленск',
  'Калуга', 'Кострома', 'Астрахань', 'Брянск', 'Саратов', 'Владикавказ', 'Чита', 'Грозный',
  'Владикавказ', 'Тверь', 'Тула', 'Балашиха', 'Волжский', 'Подольск', 'Нижневартовск',

  'Ненецкий автономный округ', 'Ямало-Ненецкий автономный округ', 'Ханты-Мансийский автономный округ',
  'Чукотский автономный округ', 'Мурманская область', 'Республика Крым', 'Севастополь'
];
