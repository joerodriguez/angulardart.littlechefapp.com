library littlechef_recipe_service;

import 'package:angular/angular.dart' show Http, Injectable;
import 'package:littlechef/recipes/recipe.dart';
import 'package:littlechef/recipes/recipe_factory.dart';

import 'dart:async';

@Injectable()
class RecipeService {
  Http _http;
  RecipeFactory _recipeFactory;

  RecipeService(this._http, this._recipeFactory);

  Future<List<Recipe>> getPopularRecipes() {
    return _http.get("http://www.littlechefapp.com/feeds/show.json").then((res) {
      return _recipeFactory.buildRecipesFromJson(res.data);
    });
  }
}
