
Feature: pseudo subscription

  Scenario: The user does not subscribe to any channel through NewPipe

    Given I click on the search button for the first time
    Then I enter text "Bridgewater" into field with id "search_src_text"
    Then I press search
    Then I wait for "Don Mega" to appear
    Then I touch the "Don Mega" text
    Then I wait for "views" to appear
    When I goto NewPipe
    Then I should see "NewPipe"

  Scenario:  The user subscribes to a channel through NewPipe

    Given I click on the search button
    Then I enter text "Bridgewater" into field with id "search_src_text"
    Then I press search
    Then I wait for "Don Mega" to appear
    Then I touch the "Don Mega" text
    Then I wait for "views" to appear
    Then I click on the subscribe button
    When I goto NewPipe
    And I wait for 5 seconds
    Then I should see "Don Mega"


  Scenario: The user unsubscribes from a channel subscribed through NewPipe

    Given I click on the search button
    Then I enter text "Bridgewater" into field with id "search_src_text"
    Then I press search
    Then I wait for "Don Mega" to appear
    Then I touch the "Don Mega" text
    Then I wait for "views" to appear
    Then I click on the unsubscribe button
    When I goto NewPipe
    Then I should see "NewPipe"