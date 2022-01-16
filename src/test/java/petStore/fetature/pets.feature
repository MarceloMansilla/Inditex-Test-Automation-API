Feature: user crud

  Background: Define url
    Given url apiUrl
    * def statusPets = 'sold'

  @pets @regression
  Scenario: get list pets
    Given path 'pet/findByStatus'
    And param status = statusPets
    When method get
    Then status 200
    * def resp = response

#TO DO: COMPLETE POINT 2 AND 4