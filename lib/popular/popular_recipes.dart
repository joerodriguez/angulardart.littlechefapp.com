library littlechef_popular;

import 'package:angular/angular.dart';
import 'package:littlechef/recipes/recipe.dart';
import 'package:littlechef/recipes/recipe_service.dart';

@Component(
  selector: 'popular',
  templateUrl: 'popular_recipes.html'
)
class PopularRecipes {

  RecipeService _recipeService;
  List<Recipe> recipes;

  PopularRecipes(this._recipeService) {
    _recipeService.getPopularRecipes().then((recipes) {
      this.recipes = recipes;
    });
  }
}