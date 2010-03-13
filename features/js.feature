  Scenario: testing javascript
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
