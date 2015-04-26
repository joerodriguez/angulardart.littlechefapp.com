part of littlechef_test;

class RecipeServiceMock extends Mock implements RecipeService {
}

testPopularComponent() {

  describe("PopularRecipes", () {

    beforeEach(setUpInjector);
    afterEach(tearDownInjector);

    var recipeService = new RecipeServiceMock();

    beforeEach(module((Module _) => _
      ..bind(RecipeService, toValue: recipeService)
      ..bind(PopularRecipes)));

    it("asks the recipe service for a list of popular recipes", () {

      var recipes = new List<Recipe>();
      var completer = new Completer();

      recipeService.when(callsTo('getPopularRecipes')).thenReturn(completer.future);

      inject((RecipeService recipeService, PopularRecipes component) {
        expect(component.recipes).toEqual(null);

        completer.complete(recipes);

        scheduleMicrotask(() {
          expect(component.recipes).toBe(recipes);
        });

      });
    });

  });
}
