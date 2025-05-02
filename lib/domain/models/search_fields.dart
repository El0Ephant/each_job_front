
enum SearchFields{
  onlyTitle(title: 'Название', apiOptionName: 'onlyTitle'),
  titleAndRequirements(title: 'Название и требования', apiOptionName: 'titleAndRequirements'),
  titleAndDescription(title: 'Название и описание', apiOptionName: 'titleAndDescription');

  const SearchFields({
    required this.title,
    required this.apiOptionName
  });

  final String title;
  final String apiOptionName;
}