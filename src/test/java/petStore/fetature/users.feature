Feature: user crud

  Background: Define url
    Given url apiUrl

  @user @regression
  Scenario: create user
    Given path 'user'
    And request user
    When method post
    Then status 200

  @user @regression
  Scenario: get user created
    Given path '/user/'
    And path user.username
    When method get
    Then status 200
    And match response contains user