package java.service;

import java.modul.User;

import java.util.List;

public interface UserService {
    void add(User user);

    void edit(User user);

    void removeUser(User user);

    User getUserById(int id);

    List<User> listUser();
}
