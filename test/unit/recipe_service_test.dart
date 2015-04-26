part of littlechef_test;

testRecipeService() {

  describe("RecipeService", () {

    beforeEach(setUpInjector);
    afterEach(tearDownInjector);

    beforeEach(module((Module _) => _
      ..bind(RecipeFactory)
      ..bind(RecipeService)));

    it("provides popular recipes", () {

      inject((MockHttpBackend http, RecipeService service) {
        http.whenGET("http://www.littlechefapp.com/feeds/show.json").respond('[{ "title": "Lasagna" }]');

        final f = service.getPopularRecipes();

        scheduleMicrotask(() {
          http.flush();

          f.then((res) {
            expect(res.length).toEqual(1);
            expect(res.first.title).toEqual("Lasagna");
          });
        });
      });
    });

  });
}
