library littlechef_recipe_factory;

import 'package:angular/angular.dart' show Injectable;
import 'package:littlechef/recipes/recipe.dart';
import 'dart:convert';

@Injectable()
class RecipeFactory {
  List<Recipe> buildRecipesFromJson(List<Map> recipeMaps) {
    List<Recipe> recipes = new List<Recipe>();

    recipeMaps.forEach((m) {
      recipes.add(new Recipe(m['title']));
    });

    return recipes;
  }
}