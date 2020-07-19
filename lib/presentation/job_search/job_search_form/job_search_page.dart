import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../application/advanced_job_search_bloc/advanced_job_search_bloc.dart';
import '../../../injection.dart';
import '../../core/constants.dart';
import 'widget/job_search_form.dart';

class JobSearchPage extends StatelessWidget {
  const JobSearchPage({Key key}) : super(key: key);

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
      body: BlocProvider(
        create: (context) => getIt<AdvancedJobSearchBloc>(),
        child: AdvancedJobSearchForm(),
      ),
    );
  }
}
