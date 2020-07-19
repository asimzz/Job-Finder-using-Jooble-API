import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@module
abstract class JobSearchInjectableModule {
  @lazySingleton
  http.Client get httpClient => http.Client();
  @lazySingleton
  DataConnectionChecker get dataConnectionChecker => DataConnectionChecker();
}
