// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:job_finder/presentation/splash_page/splash_page.dart';
import 'package:job_finder/presentation/job_search/job_home_page.dart';
import 'package:job_finder/presentation/sign_in/sign_in_page.dart';
import 'package:job_finder/presentation/sign_up/sign_up_page.dart';
import 'package:job_finder/presentation/job_search/widgets/job_detail_page.dart';
import 'package:job_finder/domain/job_model/job_model.dart';
import 'package:job_finder/presentation/job_search/widgets/list_of_regualr_job_search_result.dart';
import 'package:job_finder/domain/job_result_model/job_final_result.dart';
import 'package:job_finder/presentation/job_search/job_search_form/widget/list_of_advanced_job_search_result.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:job_finder/presentation/core/bottom_navy_bar_page.dart';
import 'package:job_finder/domain/auth/user.dart';

class Routes {
  static const String splashPage = '/';
  static const String jobHomePage = '/job-home-page';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String jobDetailsPage = '/job-details-page';
  static const String listOfRegularJobSearchResult =
      '/list-of-regular-job-search-result';
  static const String listOfAdvancedJobSearchResult =
      '/list-of-advanced-job-search-result';
  static const String index = '/Index';
  static const all = <String>{
    splashPage,
    jobHomePage,
    signInPage,
    signUpPage,
    jobDetailsPage,
    listOfRegularJobSearchResult,
    listOfAdvancedJobSearchResult,
    index,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.jobHomePage, page: JobHomePage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.jobDetailsPage, page: JobDetailsPage),
    RouteDef(Routes.listOfRegularJobSearchResult,
        page: ListOfRegularJobSearchResult),
    RouteDef(Routes.listOfAdvancedJobSearchResult,
        page: ListOfAdvancedJobSearchResult),
    RouteDef(Routes.index, page: Index),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (RouteData data) {
      var args = data.getArgs<SplashPageArguments>(
          orElse: () => SplashPageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(key: args.key),
        settings: data,
      );
    },
    JobHomePage: (RouteData data) {
      var args = data.getArgs<JobHomePageArguments>(
          orElse: () => JobHomePageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => JobHomePage(key: args.key),
        settings: data,
      );
    },
    SignInPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    JobDetailsPage: (RouteData data) {
      var args = data.getArgs<JobDetailsPageArguments>(
          orElse: () => JobDetailsPageArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => JobDetailsPage(jobModel: args.jobModel),
        settings: data,
      );
    },
    ListOfRegularJobSearchResult: (RouteData data) {
      var args = data.getArgs<ListOfRegularJobSearchResultArguments>(
          orElse: () => ListOfRegularJobSearchResultArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            ListOfRegularJobSearchResult(jobFinalResult: args.jobFinalResult),
        settings: data,
      );
    },
    ListOfAdvancedJobSearchResult: (RouteData data) {
      var args = data.getArgs<ListOfAdvancedJobSearchResultArguments>(
          orElse: () => ListOfAdvancedJobSearchResultArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            ListOfAdvancedJobSearchResult(jobModel: args.jobModel),
        settings: data,
      );
    },
    Index: (RouteData data) {
      var args = data.getArgs<IndexArguments>(orElse: () => IndexArguments());
      return MaterialPageRoute<dynamic>(
        builder: (context) => Index(key: args.key, user: args.user),
        settings: data,
      );
    },
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//SplashPage arguments holder class
class SplashPageArguments {
  final Key key;
  SplashPageArguments({this.key});
}

//JobHomePage arguments holder class
class JobHomePageArguments {
  final Key key;
  JobHomePageArguments({this.key});
}

//JobDetailsPage arguments holder class
class JobDetailsPageArguments {
  final JobModel jobModel;
  JobDetailsPageArguments({this.jobModel});
}

//ListOfRegularJobSearchResult arguments holder class
class ListOfRegularJobSearchResultArguments {
  final JobFinalResult jobFinalResult;
  ListOfRegularJobSearchResultArguments({this.jobFinalResult});
}

//ListOfAdvancedJobSearchResult arguments holder class
class ListOfAdvancedJobSearchResultArguments {
  final KtList<JobModel> jobModel;
  ListOfAdvancedJobSearchResultArguments({this.jobModel});
}

//Index arguments holder class
class IndexArguments {
  final Key key;
  final User user;
  IndexArguments({this.key, this.user});
}
