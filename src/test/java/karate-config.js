function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        apiUrl: 'https://petstore.swagger.io/v2/',
    }
    if (env == 'dev') {
        config.user = { "id": 1000, "username": "king", "firstName": "Marcelo", "lastName": "Man", "email": "man@gmail.com", "password": "123", "phone": "23242", "userStatus": 2 }
    } else if (env == 'qa') {
        config.user = { "id": 1000, "username": "king2", "firstName": "Marcelo2", "lastName": "Man2", "email": "man2@gmail.com", "password": "111", "phone": "1111", "userStatus": 2 }
    }
    return config;
}