package helper;

import com.github.javafaker.Faker;

import net.minidev.json.JSONObject;

public class DataGenerator {
    private static Faker faker = new Faker();

    public static String getId() {
        return Integer.toString(faker.number().numberBetween(1, 1000));
    }

    public static String getUsername() {
        return faker.name().username();
    }

    public static String getFirstname() {
        return faker.name().firstName();
    }

    public static String getLastname() {
        return faker.name().lastName();
    }

    public static String getEmail() {
        return faker.internet().emailAddress();
    }

    public static String getPassword() {
        return faker.internet().password();
    }

    public static String getPhone() {
        return faker.phoneNumber().phoneNumber();
    }

    public static JSONObject getUser() {

        String id = Integer.toString(faker.number().numberBetween(1, 1000));
        String username = faker.name().username();
        String firstName = faker.name().firstName();
        String lastName = faker.internet().emailAddress();
        String email = faker.internet().emailAddress();
        String password = faker.internet().password();
        String phone = faker.phoneNumber().phoneNumber();
        String userStatus = "2";

        JSONObject json = new JSONObject();
        json.put("id", id);
        json.put("username", username);
        json.put("firstName", firstName);
        json.put("lastName", lastName);
        json.put("email", email);
        json.put("password", password);
        json.put("phone", phone);
        json.put("userStatus", userStatus);

        return json;
    }
}
