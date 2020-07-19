import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/presentation/routes/router.gr.dart';

import '../../../domain/job_result_model/job_final_result.dart';
import '../../core/constants.dart';

class ListOfRegularJobSearchResult extends StatelessWidget {
  final JobFinalResult jobFinalResult;

  const ListOfRegularJobSearchResult({
    this.jobFinalResult,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: jobFinalResult.jobModel.size,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            ExtendedNavigator.of(context).pushNamed(
              Routes.jobDetailsPage,
              arguments: JobDetailsPageArguments(
                jobModel: jobFinalResult.jobModel[index],
              ),
            );
          },
          child: Card(
            elevation: 0.0,
            margin: EdgeInsets.only(right: 18.0, top: 15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: ListTile(
              title: Text(
                jobFinalResult.jobModel[index].title,
                style: GoogleFonts.itim(
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 20,
                      color: Color(0xFFF87633),
                    ),
                    SizedBox(width: 5),
                    Text(
                      jobFinalResult.jobModel[index].location,
                      style: GoogleFonts.jaldi(color: Color(0xFF3A3A3A)),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.monetization_on,
                      size: 20,
                      color: Color(0xFFF87633),
                    ),
                    SizedBox(width: 5),
                    Text(jobFinalResult.jobModel[index].salary.value,
                        style: GoogleFonts.jaldi(color: Color(0xFF3A3A3A))),
                  ],
                ),
              ),
              trailing: Icon(
                Icons.more_vert,
                color: kBlack,
              ),
            ),
          ),
        );
      },
    );
  }
}
