# Home Maker Morning Chores
# language: en
@good_morning @make_tea
Feature: Home Maker Prepares Tea and Chocolate Milk
  In order to start a morning
  As a Home Maker of The Home
  I want to prepare Tea and Choclolate Milk

  @make_tea
  Scenario: Making Tea for 2 with Tea Bags
    Given Tea Maker
    When making 2 cups of tea
    Then add 1 cup milk
    And  add 1 Cup Water
    And add 2 spoons Sugar
    And add 4 tea bags
    Then print tea making steps

  @prepare_chocolate_milk
  Scenario: Making Chocolate milk for 1 child
    Given Milk Mixer
    When making 1 cup of Chocolate Milk
    Then add 1 cup of plain milk
    And 1 spoon of Ovaltine
    And 1 spoon of Sugar
    Then print Chocolate milk steps