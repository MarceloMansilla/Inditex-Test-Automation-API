function fn() {
    var env = karate.env; // get system property 'karate.env'
    karate.log('karate.env system property was:', env);
    if (!env) {
        env = 'dev';
    }
    var config = {
        apiUrl: 'https://petstore.swagger.io/v2/',
    }
    if (env == 'dev') {} else if (env == 'qa') {}
    return config;
}