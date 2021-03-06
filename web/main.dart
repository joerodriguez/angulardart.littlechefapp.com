library littlechef_main;

import 'package:littlechef/littlechef.dart';

import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';


void main() {
  Logger.root
    ..level = Level.FINEST
    ..onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
    .addModule(new LittleChefApp())
    .run();
}