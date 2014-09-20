Feature: Manage Contacts
  In Order to have a phone book
  As a user
  I want to add contacts to the contact form

    Scenario: I am on the Add contacts page
    Given I want to add a contact
    When I fill out the form with the folliwng attributes:
    | First name   | Harry             |
    | Last Name    | Potter            |
    | Phone number | 555-555-5555      |
    | Address      | 6 private drive   |
    And I click the "Save" button
    Then I should see "Your contact was successfully saved"


    Scenario: I am on "Show your contacts" page
    Given I want to get all contacts
    When I go to  "Show your contacts page"
    Then I see all the contacts 
