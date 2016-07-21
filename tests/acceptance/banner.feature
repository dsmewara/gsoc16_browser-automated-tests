Feature: Banner
  In order to manage Banner article in the web
  I need to create modify trash archived Check-In And publish and Unpublish Banner 

  Background:
    Given Joomla CMS is installed
    When Login into Joomla administrator with username "admin" and password "admin"
    Then I see administrator dashboard

   Scenario: Create a Banner 
   Given There is an add Banner link 
   When I create a new banner with field title as "Gsocbanner" 
   And I save a Banner 
   Then I should see the "Banner successfully saved." message
   
   Scenario: Modify a Banner 
    Given There is a Banner listing page
    When I Click the Banner with Name "Gsocbanner" 
    And I have Change the Banner field title to "Gsocbanner" 
    And I save a Banner 
    Then I should see the "Banner successfully saved." message

   Scenario: publish a Banner
    Given There is a Banner listing page
    When I select the Banner with Name "Gsocbanner" which needs to be published
    And I have publish the Banner
    Then I should see the "1 banner successfully published." message

   Scenario: Unpublish an Banner
    Given There is a Banner listing page
    When I select the Banner with Name "Gsocbanner" which needs to be unpublished
    And I have unpublish the Banner
    Then I should see the "1 banner successfully unpublished." message

   Scenario: Trash a Banner
    Given There is a Banner listing page
    When I select the Banner with Name "Gsocbanner" which needs to be Trash 
    And I Trash the Banner
    Then  I should see the "1 banner successfully trashed." message

   Scenario: archived a Banner
    Given There is a Banner listing page
    When I select the Banner with Name "Gsocbanner" which needs to be archived 
    And I archived the Banner
    Then I should see the "1 banner successfully archived." message

   Scenario: Check-In a Banner
    Given There is a Banner listing page
    When I select the Banner with Name "Gsocbanner" which needs to be Check-In 
    And I Check-In the Banner
    Then I should see the "1 banner successfully checked in." message
    