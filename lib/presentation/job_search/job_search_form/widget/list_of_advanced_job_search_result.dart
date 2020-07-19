import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/job_model/job_model.dart';
import '../../../core/constants.dart';

class ListOfAdvancedJobSearchResult extends StatelessWidget {
  final KtList<JobModel> jobModel;
  const ListOfAdvancedJobSearchResult({
    this.jobModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kSilver,
        appBar: AppBar(
          backgroundColor: kSilver,
          elevation: 0.0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 18.0,
              top: 12.0,
              bottom: 12.0,
              right: 12.0,
            ),
            child: SvgPicture.asset(
              "assets/drawer.svg",
              color: kBlack,
            ),
          ),
          actions: <Widget>[
            SvgPicture.asset(
              "assets/user.svg",
              width: 25.0,
              color: kBlack,
            ),
            SizedBox(width: 18.0)
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Search Result: ',
                textAlign: TextAlign.start,
                style: GoogleFonts.viga(
                  fontSize: 20,
                  color: Color(0xFF21202A),
                ),
              ),
              Container(
                  height: 550,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: jobModel.size,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 0.0,
                        margin: EdgeInsets.only(right: 18.0, top: 15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: ListTile(
                          title: Text(
                            jobModel[index].title,
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
                                  color: Color(0xFF3A3A3A),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  jobModel[index].location,
                                  style: GoogleFonts.jaldi(
                                      color: Color(0xFF3A3A3A)),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.monetization_on,
                                  size: 20,
                                  color: Color(0xFF3A3A3A),
                                ),
                                SizedBox(width: 5),
                                Text(jobModel[index].salary.value,
                                    style: GoogleFonts.jaldi(
                                        color: Color(0xFF3A3A3A))),
                              ],
                            ),
                          ),
                          trailing: Icon(
                            Icons.more_vert,
                            color: kBlack,
                          ),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ));
  }
}
