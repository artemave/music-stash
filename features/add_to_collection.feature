Feature: add songs to collection
  As a music lover
  I want to be able to add songs to collection
  So that I can listen to them

  Scenario: add song with no metadata
    Given I have the following songs:
      | file_name |
      | song1.mp3 |
      | song2.mp3 |
    When I upload them into MusicStash
    And I view my collection
    Then I should see them in my collection
