import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../application/regular_job_search_bloc/regular_job_search_bloc.dart';
import '../../core/constants.dart';
import 'error_job_search_page.dart';
import 'initial_job_search_page.dart';
import 'job_search_list_of_pages.dart';
import 'list_of_regualr_job_search_result.dart';

class RegularJobSearch extends StatelessWidget {
  final keywordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegularJobSearchBloc, RegularJobSearchState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          searchFailure: (failure) {
            Flushbar(
                margin: EdgeInsets.all(8),
                borderRadius: 8,
                icon: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                ),
                duration: Duration(
                  seconds: 5,
                ),
                message: failure.jobFailure.map(
                  serverFailure: (_) => 'Server Failure Please try again later',
                  internetFailure: (_) =>
                      'Bad Connection Please check your Internet',
                  unexpected: (_) => 'Unexpected Error Please try again later',
                  insufficientInfo: (_) =>
                      'Please provider us what are you looking for',
                )).show(context);
          },
        );
      },
      child: Container(
          margin: EdgeInsets.only(left: 18.0),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                "Hi Robert,",
                style: GoogleFonts.staatliches(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          controller: keywordController,
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                            icon: GestureDetector(
                              onTap: () {
                                context.bloc<RegularJobSearchBloc>().add(
                                      RegularJobSearchEvent.regularJobSearch(
                                          keywordController.text),
                                    );
                              },
                              child: Icon(
                                Icons.search,
                                size: 25.0,
                                color: kBlack,
                              ),
                            ),
                            border: InputBorder.none,
                            hintText: "Search for job title",
                            hintStyle: GoogleFonts.viga(
                              color: Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                        color: kBlack,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          FontAwesomeIcons.slidersH,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15.0),
              SizedBox(height: 10.0),
              BlocBuilder<RegularJobSearchBloc, RegularJobSearchState>(
                builder: (context, state) {
                  return state.map(
                    initial: (state) {
                      return InitialJobSearchPage();
                    },
                    searchInProgress: (state) {
                      return Container(
                        height: 400,
                        child: Center(
                            child: SpinKitWave(
                          color: Color(0xff3A3A3A),
                        )),
                      );
                    },
                    searchSuccess: (state) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Search Results: ',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.viga(
                              fontSize: 20,
                              color: Color(0xFFF87633),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 410,
                            child: ListOfRegularJobSearchResult(
                              jobFinalResult: state.jobFinalResult,
                            ),
                            //JobSearchResultsPages(state: jobState),
                          ),
                          Container(
                              height: 30,
                              child: JobSearchResultsPages(
                                keyword: keywordController.text,
                                listOfPages: state
                                    .jobFinalResult.numberOfPages.numberOfPages,
                              )),
                        ],
                      );
                    },
                    searchFailure: (_) {
                      return Container();
                    },
                  );
                },
              ),
            ],
          ))),
    );
  }

  Future<void> _showMyDialog(
    BuildContext context,
  ) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
