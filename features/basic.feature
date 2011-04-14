Feature: Parse Natural Language Ingredients Feature
	In order to make it simple for normals to enter lists of ingredients
	As a Developer
	I want to intelligently parse natural language ingredient lists

	Scenario Outline: Parse Ingredient Scenario
		Given a User has entered <ingredient>
		When concoction parses it
		Then the ingredient should be <reagent>
		And the units should be <unit>
		And the quantity should be <quantity>
		And the raw should be <ingredient>

		Examples:
		|ingredient           |reagent|unit	|quantity|
		|1 cup of flour       |flour  |cups	|1.0     |
		|1.5 cups of flour    |flour  |cups	|1.5     |
		|1 1/2 cups of flour  |flour  |cups	|1.5     |
