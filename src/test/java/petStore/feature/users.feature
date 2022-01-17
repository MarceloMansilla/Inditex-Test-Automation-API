Feature: user crud

  Background: Define url
    * def user = read('classpath:petStore/json/user.json')
    #* def result = callonce read('classpath:helper/DataGenerator.feature')
    #* def user = result.user
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