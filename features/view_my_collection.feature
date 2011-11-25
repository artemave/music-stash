Feature: view music collection
  As a music lover
  I want to see my collection
  In order to choose what to listen to

  Scenario: view entire collection
    Given I am logged in
    And there are the following songs in my collection:
      | song             |
      | black hole sun   |
      | april            |
      | thick as a brick |
    When I view my collection
    Then I should see:
      | song             |
      | black hole sun   |
      | april            |
      | thick as a brick |
