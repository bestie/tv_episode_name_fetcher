@wip
Feature: user runs the renamer

  As a user
  I want to run the name fetcher
  So that the horrible file names stop driving me crazy
  
  Background:
    Given I have some files to rename
  
  # Scenario: Show instructions when started with no args
  #   When I start the programme with no arguments
  #   Then I should see the help message
  #   And the file names should not have changed
    
  Scenario: Rename stuff
    When I start the programme with "--show 'Heroes' --season 3"
    Then I should see "Fetching episode names for 'Heroes' Season 3"
    And I should see a list of file name suggestions
    And I should see "Would you like to accept the proposed changes? [y/n]"
    
    When I enter "y"
    Then I should see "Renaming"
    And I should see "Done"
    And I the files should be renamed