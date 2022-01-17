Feature: user crud

  Scenario: Define User
    * def user = read('classpath:petStore/json/user.json')
    * def dataGenerator = Java.type('helper.DataGenerator')
    * set user.id = dataGenerator.getUser().id
    * set user.username = dataGenerator.getUser().username
    * set user.firstName = dataGenerator.getUser().firstName
    * set user.lastName = dataGenerator.getUser().lastName
    * set user.email = dataGenerator.getUser().email
    * set user.password = dataGenerator.getUser().password
    * set user.phone = dataGenerator.getUser().phone
    * set user.userStatus = dataGenerator.getUser().userStatus
    * print user