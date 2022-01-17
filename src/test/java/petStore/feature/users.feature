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
    #* configure retry = {count: 3, interval: 1000}
    #* def sleep = function(pause){ java.lang.Thread.sleep(pause) }
    Given path '/user/'
    And path user.username
    When method get
    #* eval sleep(10000)
    Then status 200
    And match response contains user