
enum SearchFields{
  onlyTitle(title: 'Название', apiOptionName: 'title'),  // TODO RENAME API OPTION
  titleAndRequirements(title: 'Название и требования', apiOptionName: 'titleAndRequirements'), // TODO RENAME API OPTION
  titleAndDescription(title: 'Название и описание', apiOptionName: 'titleAndDescription');  // TODO RENAME API OPTION

  const SearchFields({
    required this.title,
    required this.apiOptionName
  });

  final String title;
  final String apiOptionName;
}