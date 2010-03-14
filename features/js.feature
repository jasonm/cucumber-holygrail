  Scenario: Harmony can run javascript against the page
    Given I am on the homepage
    When I run the following javascript:
      """
      var para = document.createElement('p');
      var body = document.getElementsByTagName('body')[0];
      body.appendChild(para);
      """
    When I run the following javascript:
      """
      document.getElementsByTagName('p').length
      """
    Then the result of that javascript should be "1"

  Scenario: Webrat can see the changes Harmony makes
    Given I am on the homepage
    When I run the following javascript:
      """
      var para = document.createElement('p');
      para.innerHTML = "Hello from javascript"
      var body = document.getElementsByTagName('body')[0];
      body.appendChild(para);
      """
    Then I should see "Hello from javascript"

  Scenario: AJAX forms submit correctly
    Given I am on the AJAX form page
    When I fill in "Name" with "Jason"
    And I press "Save changes"
    Then I should see "Whats up, Jason?"

  Scenario: link_to_remote with POST works
  Scenario: link_to_remote with DELETE works
