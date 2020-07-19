import 'package:flushbar/flushbar.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../application/advanced_job_search_bloc/advanced_job_search_bloc.dart';
import '../../../../domain/job_result_model/job_final_result.dart';
import '../../../../domain/job_search/job_failure.dart';
import '../../../core/constants.dart';
import '../../widgets/error_job_search_page.dart';
import '../../widgets/job_search_list_of_pages.dart';
import '../../widgets/list_of_regualr_job_search_result.dart';

class AdvancedJobSearchForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdvancedJobSearchBloc, AdvancedJobSearchState>(
      listener: (context, state) {
        state.jobFailureOrSuccess.fold(
          () => {},
          (either) => either.fold((failure) {
            Flushbar(
                icon: Icon(
                  Icons.error_outline,
                  color: Colors.red,
                ),
                duration: Duration(seconds: 5),
                message: failure.map(
                  serverFailure: (_) => 'Server Failure Please try again later',
                  internetFailure: (_) =>
                      'Bad Connection Please check your Internet',
                  unexpected: (_) => 'Unexpected Error Please try again later',
                  insufficientInfo: (_) =>
                      'Please provider us what are you looking for',
                )).show(context);
          }, (_) {}),
        );
      },
      builder: (context, state) {
        return Form(
            autovalidate: state.showErrorMessages,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: [
                Text(
                  "Advanced Search",
                  style: GoogleFonts.staatliches(
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: TextFormField(
                    cursorColor: kBlack,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Job title',
                      hintStyle: GoogleFonts.viga(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    autocorrect: false,
                    onChanged: (value) => context
                        .bloc<AdvancedJobSearchBloc>()
                        .add(AdvancedJobSearchEvent.keywordChanged(value)),
                    validator: (_) => context
                        .bloc<AdvancedJobSearchBloc>()
                        .state
                        .keyword
                        .value
                        .fold(
                          (l) => l.maybeMap(
                            empty: (_) => 'Job title can\'t be empty',
                            exceedingLength: (_) =>
                                'Job title can\'t be more than 50 characters',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Salary',
                            hintStyle: GoogleFonts.viga(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<AdvancedJobSearchBloc>()
                              .add(AdvancedJobSearchEvent.salaryChanged(value)),
                          validator: (_) => context
                              .bloc<AdvancedJobSearchBloc>()
                              .state
                              .salaryInput
                              .value
                              .fold(
                                (l) => l.maybeMap(
                                  invalidSalary: (_) => 'Invalid Salary',
                                  exceedingLength: (_) =>
                                      'Salary can\'t be more than 200000',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Location',
                            hintStyle: GoogleFonts.viga(
                              color: Colors.grey.shade500,
                            ),
                          ),
                          autocorrect: false,
                          onChanged: (value) => context
                              .bloc<AdvancedJobSearchBloc>()
                              .add(AdvancedJobSearchEvent.locationChanged(
                                  value)),
                          validator: (_) => context
                              .bloc<AdvancedJobSearchBloc>()
                              .state
                              .jobLocation
                              .value
                              .fold(
                                (l) => l.maybeMap(
                                  invalidLocation: (_) => 'Invalid Location',
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: RaisedButton(
                    shape: StadiumBorder(),
                    onPressed: () {
                      context
                          .bloc<AdvancedJobSearchBloc>()
                          .add(AdvancedJobSearchEvent.advancedJobSearch());
                    },
                    color: kBlack,
                    child: Text(
                      'SEARCH FOR THE JOB',
                      style: GoogleFonts.doHyeon(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                if (state.isSearching) ...[
                  Container(
                    height: 400,
                    child: Center(
                      child: SpinKitWave(
                        color: Color(0xff3A3A3A),
                      ),
                    ),
                  )
                ],
                const SizedBox(height: 20),
                if (state.jobFailureOrSuccess.fold(
                        () => null,
                        (either) => either.fold((jobFailure) => null,
                            (jobFinalResult) => jobFinalResult))
                    is JobFinalResult) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Search Result: ',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.viga(
                          fontSize: 20,
                          color: Color(0xFFF87633),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 320,
                        child: ListOfRegularJobSearchResult(
                          jobFinalResult: state.jobFailureOrSuccess.fold(
                            () => null,
                            (either) => either.fold((jobFailure) => null,
                                (jobFinalResult) => jobFinalResult),
                          ),
                        ),
                        //JobSearchResultsPages(state: jobState),
                      ),
                      Container(
                        height: 30,
                        child: JobSearchResultsPages(
                          listOfPages: state.jobFailureOrSuccess.fold(
                            () => null,
                            (either) => either.fold(
                                (jobFailure) => null,
                                (jobFinalResult) =>
                                    jobFinalResult.numberOfPages.numberOfPages),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ],
            ));
      },
    );
  }
}
