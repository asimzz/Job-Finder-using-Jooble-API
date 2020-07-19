import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:job_finder/injection.iconfig.dart';

final GetIt getIt = GetIt.instance;
@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}
