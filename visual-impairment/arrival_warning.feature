Feature: Transit stop vehicle arrival warning
  In order to be prepared to board a transit vehicle
  Visually impaired users must be alerted to the vehicle's approach

  Scenario: The next vehicle is 5 minutes from arriving
    Given I am at a transit stop that serves one route
    When the vehicle is 5 minutes from arriving
    Then I should hear "The {route} {vehicle} will be here in 5 minutes"

  Scenario: The next vehicle is 1 minute from arriving
    Given I am at a transit stop that serves one route
    When the vehicle is 1 minute from arriving
    Then I should hear "The {route} {vehicle} will be here in 1 minute"

  Scenario: The next desired vehicle is 5 minutes from arriving
    Given I am at a transit stop that serves multiple routes
    And I have specified the desired route
    When the desired vehicle is 5 minutes from arriving
    Then I should hear "The {desired route} {vehicle} will be here in 5 minutes"

  Scenario: The next desired vehicle is 1 minutes from arriving
    Given I am at a transit stop that serves multiple routes
    And I have specified the desired route
    When the desired vehicle is 1 minute from arriving
    Then I should hear "The {desired route} {vehicle} will be here in 1 minute"

  Scenario: The next desired vehicle has broken down 3 minutes away
