const MAX_NUMBER_OF_PAGES = 56;

List<int> calculateNumberOfPages(int totalCount, int maxResultsPerPage) {
  final numberOfPages = (totalCount ~/ maxResultsPerPage).round();
  final listOfPages = List<int>.generate(
      numberOfPages >= MAX_NUMBER_OF_PAGES
          ? MAX_NUMBER_OF_PAGES
          : numberOfPages,
      (index) => index + 1);
  return listOfPages;
}
