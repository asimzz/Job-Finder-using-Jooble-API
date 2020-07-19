import 'package:flutter/material.dart';
import 'package:job_finder/domain/job_model/job_model.dart';

import 'package:job_finder/presentation/core/constants.dart';

class JobDescriptionWidget extends StatelessWidget {
  final JobModel jobModel;

  const JobDescriptionWidget({Key key, this.jobModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Text(
            "About the Opportunity",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
          Text(
            jobModel.snippet,
            style: kSubtitleStyle.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.5,
              color: Color(0xFF5B5B5B),
            ),
          ),
          SizedBox(height: 25.0),
          Text(
            "Job Responsbilities",
            style: kTitleStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15.0),
        ],
      ),
    );
  }
}
