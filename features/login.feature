Feature: The Internet Guinea Pig Website

  Scenario Outline: As a user, I can log into the secure area

    Given I am on the login page
    When I login with <username> and <password>
    Then I should see a flash message saying <message>

    Examples:
      | username   | password             | message                        |
      | tomsmith   | SuperSecretPassword! | You logged into a secure area! |
      | foobar33   | barfoo22             | Your username is invalid!      |
      | foobar22   | barfoo333            | Your username is invalid!      |
      | foobar222  | barfoo33 22          | Your username is invalid!      |
      | foobar333  | barfoo22             | Your username is invalid!      |
      | foobar333  | barfoo22             | Your username is invalid!      |
      | foobar333s | barfoo22de           | Your username is invalid!      |

