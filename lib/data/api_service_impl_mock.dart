import 'dart:math';

import 'package:each_job/domain/i_api_service.dart';
import 'package:each_job/domain/models/area/area.dart';
import 'package:each_job/domain/models/grade/grade.dart';
import 'package:each_job/domain/models/profession/profession.dart';
import 'package:each_job/domain/models/salary_statistics/salary_statistics.dart';
import 'package:each_job/domain/models/vacancy/vacancy.dart';

class ApiServiceImplMock implements IApiService{
  @override
  Future<List<Area>> getAreas() {
    return Future.value(
      List.generate(
        areas.length,
        (index) => Area(id: index, title: areas[index]),
      )
    );
  }

  @override
  Future<List<Grade>> getGrades() {
    return Future.value(
      List.generate(
        grades.length,
        (index) => Grade(id: index.toString(), title: grades[index]),
      )
    );
  }

  @override
  Future<List<Profession>> getProfessions() {
    return Future.value(
      List.generate(
        professions.length,
        (index) => Profession(id: index.toString(), title: professions[index]),
      )
    );
  }

  @override
  Future<SalaryStatistics> getStatistics({
    required String professionId,
    required int areaId,
    required String? gradeId,
    required String? isoDateFrom,
    required String? isoDateTo,
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    return SalaryStatistics(
      bottomSalary: 208,
      upperSalary: 651,
      medianSalary: 400,
      oftenSalariesBottom: 325,
      oftenSalariesUpper: 511,
      chartData: salaryData,
      vacanciesNum: 1227
    );
  }

  final _random = Random();
  @override
  Future<List<Vacancy>> getVacanciesPage({
    required String professionId,
    required int areaId,
    required String? gradeId,
    required String? isoDateFrom,
    required String? isoDateTo,
    required int pageNumber,
    required int pageSize
  }) async {
    await Future.delayed(const Duration(seconds: 2));
    final baseInd = (pageNumber - 1) * pageSize;
    return List.generate(
      pageNumber < 5 ? pageSize : pageSize~/2,
      (index) => Vacancy(
        url: 'https://flutter.dev',
        hhId: "112367875",
        id: (baseInd + index + 1).toString(),
        name: 'Vacancy number ${baseInd + index + 1}',
        employerName: 'Employer name ${baseInd + index + 1}',
        publishedAt: DateTime(2021, 1, 1).add(Duration(days: baseInd + index)),
        salaryFrom: _random.nextBool() ? ((_random.nextInt(500) + 40) * 1000).toString() : null,
        salaryTo: _random.nextBool() ? ((_random.nextInt(500) + 40) * 1000).toString()  : null,
        salaryGross: _random.nextBool() ? _random.nextBool() : null,
        salaryCurrency: _random.nextBool() ? (_random.nextBool() ? 'RUR': (_random.nextBool() ? 'EUR':'USD')) : null,
        snippetRequirement: _random.nextBool() ? 'Snippet requirement ${baseInd + index + 1}' : null,
        snippetResponsibility: _random.nextBool() ? 'Snippet responsibility ${baseInd + index + 1}' : null
      ),
    );
  }
}

const List<String> grades = [
  'Junior',
  'Middle',
  'Senior',
  'Lead'
];

const List<String> areas = [
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

const List<String> professions = [
  'Python Backend разработчик',
  'Python Frontend разработчик',
  'Java Backend разработчик',
  'Java Full Stack разработчик',
  'C++ разработчик игр',
  'C++ разработчик встроенных систем',
  'C# разработчик на Unity',
  'C# разработчик .NET Core',
  'Разработчик Ruby on Rails',
  'Разработчик PHP на Laravel',
  'Разработчик PHP на WordPress',
  'Разработчик JavaScript (Vanilla)',
  'Разработчик TypeScript',
  'Разработчик на Angular',
  'Разработчик на React',
  'Разработчик на Vue.js',
  'Разработчик на Svelte',
  'Node.js разработчик',
  'Golang Backend разработчик',
  'Swift разработчик iOS',
  'Kotlin разработчик Android',
  'Flutter разработчик',
  'Dart разработчик',
  'Rust разработчик',
  'Scala разработчик',
  'Разработчик R (для анализа данных)',
  'Разработчик MATLAB',
  'Разработчик на Assembly',
  'Разработчик на Fortran',
  'Разработчик на Perl',
  'Разработчик на Elixir',
  'Разработчик на Haskell',
  'Разработчик на F#',
  'Разработчик на Delphi',
  'Разработчик на COBOL',
  'Разработчик на Groovy',
  'Разработчик SAP ABAP',
  'Тестировщик (Manual QA)',
  'Тестировщик (Automated QA)',
  'Тестировщик производительности',
  'Тестировщик API',
  'Тестировщик игр',
  'Тестировщик безопасности',
  'Тестировщик мобильных приложений',
  'Разработчик автотестов (Python)',
  'Разработчик автотестов (Java)',
  'Системный администратор (Linux)',
  'Системный администратор (Windows)',
  'DevOps инженер (AWS)',
  'DevOps инженер (Azure)',
  'DevOps инженер (GCP)',
  'Облачный архитектор',
  'Специалист по Kubernetes',
  'Инженер Docker',
  'Сетевой администратор',
  'Администратор баз данных (PostgreSQL)',
  'Администратор баз данных (MySQL)',
  'Администратор баз данных (Oracle)',
  'Инженер Site Reliability (SRE)',
  'Специалист по виртуализации (VMware)',
  'Инженер резервного копирования',
  'Специалист технической поддержки',
  'Инженер инфраструктуры',
  'Data Scientist',
  'Инженер Machine Learning',
  'Инженер Deep Learning',
  'Специалист NLP (обработка естественного языка)',
  'Специалист Computer Vision',
  'Аналитик данных',
  'Аналитик бизнес-данных',
  'Инженер Big Data',
  'Инженер данных (Spark)',
  'Инженер данных (Hadoop)',
  'Аналитик кибербезопасности',
  'Тестировщик на проникновение',
  'Этичный хакер',
  'Аналитик SOC',
  'Архитектор безопасности',
  'Специалист по безопасности приложений',
  'Инженер сетевой безопасности',
  'Аналитик угроз',
  'Специалист по цифровой криминалистике',
  'IT-менеджер проектов',
  'Scrum-мастер',
  'Продуктовый менеджер (SaaS)',
  'Владелец продукта',
  'Бизнес-аналитик',
  'Технический писатель',
  'Геймдизайнер',
  'Программист игр (Unity)',
  'Программист игр (Unreal Engine)',
  'Дизайнер уровней',
  '3D-моделлер (Maya)',
  '3D-моделлер (Blender)',
  'Художник персонажей',
  'Художник окружения',
  'Тестировщик игр',
  'UX/UI дизайнер',
  'Дизайнер взаимодействия',
  'Моушн-дизайнер',
  'Графический дизайнер (Digital)',
  'Продуктовый дизайнер',
  'Разработчик Salesforce',
  'Консультант SAP',
  'Специалист Dynamics 365',
  'Разработчик Odoo',
  'Исследователь AI',
  'Инженер робототехники',
  'Инженер Reinforcement Learning',
  'Разработчик автономных систем',
  'Специалист по SEO',
  'Специалист по PPC',
  'Специалист по email-маркетингу',
  'Аналитик цифрового маркетинга'
];

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