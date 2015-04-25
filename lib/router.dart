library littlechef_router;

import 'package:angular/angular.dart';

void littlechefRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
      'popular': ngRoute(
          path: '/',
          viewHtml: '<popular />',
          defaultRoute: true
      )
  });
}