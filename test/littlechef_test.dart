library littlechef_test;

import 'package:guinness/guinness_html.dart';
import 'package:mock/mock.dart';
import 'dart:async';
import 'dart:html' as html;

import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';
import 'package:angular/mock/test_injection.dart';

import 'package:littlechef/littlechef.dart';
import 'package:littlechef/popular/popular_recipes.dart';
import 'package:littlechef/recipes/recipe_service.dart';
import 'package:littlechef/recipes/recipe_factory.dart';
import 'package:littlechef/recipes/recipe.dart';

part 'unit/popular/popular_recipes_component_test.dart';
part 'unit/recipe_service_test.dart';

main(){
  guinnessEnableHtmlMatchers();

  testPopularComponent();
  testRecipeService();

  guinness.initSpecs();
}