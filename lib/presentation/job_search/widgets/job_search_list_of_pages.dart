import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/advanced_job_search_bloc/advanced_job_search_bloc.dart';
import '../../../application/regular_job_search_bloc/regular_job_search_bloc.dart';

class JobSearchResultsPages extends StatelessWidget {
  final List<int> listOfPages;
  final String keyword;
  const JobSearchResultsPages({Key key, this.listOfPages, this.keyword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfPages.length,
      itemBuilder: (context, index) {
        return Expanded(
          child: FlatButton(
            onPressed: () {
              keyword == null
                  ? context.bloc<AdvancedJobSearchBloc>().add(
                        AdvancedJobSearchEvent.advancedJobSearchWithPageNumber(
                            listOfPages[index]),
                      )
                  : context.bloc<RegularJobSearchBloc>().add(
                        RegularJobSearchEvent.regularJobSearchWithPageNumber(
                            keyword, listOfPages[index]),
                      );
            },
            child: Text(
              '${listOfPages[index]}',
            ),
          ),
        );
      },
    );
  }
}
