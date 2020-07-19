import 'package:auto_route/auto_route_annotations.dart';
import 'package:job_finder/presentation/job_search/widgets/job_detail_page.dart';
import 'package:job_finder/presentation/sign_in/sign_in_page.dart';
import 'package:job_finder/presentation/sign_up/sign_up_page.dart';

import '../core/bottom_navy_bar_page.dart';
import '../job_search/job_home_page.dart';
import '../job_search/job_search_form/widget/list_of_advanced_job_search_result.dart';
import '../job_search/widgets/list_of_regualr_job_search_result.dart';
import '../splash_page/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  // initial route is named "/"
  MaterialRoute(page: SplashPage, initial: true),
  MaterialRoute(page: JobHomePage),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: SignUpPage),
  MaterialRoute(page: JobDetailsPage),
  MaterialRoute(page: ListOfRegularJobSearchResult),
  MaterialRoute(page: ListOfAdvancedJobSearchResult),
  MaterialRoute(page: Index),
])
class $Router {}
