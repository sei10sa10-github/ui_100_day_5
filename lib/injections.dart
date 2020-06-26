import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injections.iconfig.dart';

final getIt = GetIt.I;

@injectableInit
void configureDependencies() {
  $initGetIt(getIt);
}