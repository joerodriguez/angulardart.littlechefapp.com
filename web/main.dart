library littlechef;

import 'package:littlechef/router.dart';
import 'package:littlechef/popular/popular_recipes.dart';

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

class LittleChefAppModule extends Module {

  LittleChefAppModule() {
    bind(PopularRecipes);
    bind(RouteInitializerFn, toValue: littlechefRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }

}

void main() {
  Logger.root
    ..level = Level.FINEST
    ..onRecord.listen((LogRecord r) { print(r.message); });

  applicationFactory()
    .addModule(new LittleChefAppModule())
    .run();
}