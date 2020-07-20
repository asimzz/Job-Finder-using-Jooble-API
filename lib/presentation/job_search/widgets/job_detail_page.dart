import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_finder/domain/job_model/job_model.dart';
import 'package:job_finder/presentation/core/constants.dart';

class JobDetailsPage extends StatelessWidget {
  final JobModel jobModel;
  JobDetailsPage({this.jobModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlack,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.white,
          ),
          onPressed: () => ExtendedNavigator.of(context).pop(),
        ),
        title: Text(
          'Job Details',
          style: GoogleFonts.viga(
            textStyle: TextStyle(),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        // margin: EdgeInsets.only(top: 50.0),
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  Text(
                    jobModel.title,
                    style: GoogleFonts.righteous(
                        textStyle: TextStyle(
                      color: kBlack,
                      fontSize: 25,
                    )),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Salary: ',
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: Color(0XFFF87633),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          jobModel.salary.value,
                          style: GoogleFonts.viga(
                            textStyle: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Job Type: ',
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: Color(0XFFF87633),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          jobModel.type.value,
                          style: GoogleFonts.viga(
                            textStyle: TextStyle(
                              color: kBlack,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mapMarkerAlt,
                        color: Color(0xFFF87633),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        jobModel.location,
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: kBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.building,
                        color: Color(0xFFF87633),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        width: 270,
                        child: Text(
                          jobModel.company,
                          style: GoogleFonts.viga(
                            textStyle: TextStyle(
                              color: kBlack,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.clock,
                        color: Color(0xFFF87633),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        jobModel.updated.value,
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: kBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25.0),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.infoCircle,
                        color: Color(0xFFF87633),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'A Snippet: ',
                        style: GoogleFonts.viga(
                          textStyle: TextStyle(
                            color: Color(0XFFF87633),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Html(
                    data: jobModel.snippet,
                    style: {
                      'html': Style(
                        fontFamily: GoogleFonts.viga().fontFamily,
                        fontSize: FontSize(15),
                      )
                    },
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'For more Info ',
                      style: GoogleFonts.viga(
                          textStyle: TextStyle(color: Colors.black)),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Click Here',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print(
                                    'it should take us to this link ${jobModel.source}');
                              },
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFF87633))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
          ],
        ),
      ),
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          padding: EdgeInsets.only(left: 18.0, bottom: 25.0, right: 18.0),
          // margin: EdgeInsets.only(bottom: 25.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFF87633).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Icon(
                  Icons.bookmark_border,
                  color: Color(0xFFF87633),
                ),
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: SizedBox(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () async {
                      print(
                          'It should take you to this linke ${jobModel.link}');
                    },
                    color: kBlack,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Text(
                      "Apply for the Job",
                      style: GoogleFonts.doHyeon(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
