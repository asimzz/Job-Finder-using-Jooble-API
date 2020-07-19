import 'number_of_pages_calculator.dart';

const MAX_RESULTS_PER_PAGE = 20;

class NumberOfPages {
  final List<int> numberOfPages;

  const NumberOfPages({
    this.numberOfPages,
  });
  factory NumberOfPages.calculateNumberOfPages(int totalCount) => NumberOfPages(
        numberOfPages: calculateNumberOfPages(totalCount, MAX_RESULTS_PER_PAGE),
      );
}
