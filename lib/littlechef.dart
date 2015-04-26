library littlechef;

import 'package:angular/angular.dart';

import 'package:littlechef/router.dart';
import 'package:littlechef/popular/popular_recipes.dart';
import 'package:littlechef/recipes/recipe.dart';
import 'package:littlechef/recipes/recipe_service.dart';
import 'package:littlechef/recipes/recipe_factory.dart';

class LittleChefApp extends Module {

  LittleChefApp() {
    bind(PopularRecipes);
    bind(RecipeService);
    bind(RecipeFactory);
    bind(RouteInitializerFn, toValue: littlechefRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }

}