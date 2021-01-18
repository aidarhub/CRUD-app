package java.service;

import java.dao.UserDAO;
import java.modul.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImp implements UserService{

    private UserDAO userDAO;

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Override
    @Transactional
    public void add(User user) {
        this.userDAO.add(user);
    }

    @Override
    @Transactional
    public void edit(User user) {
        this.userDAO.edit(user);
    }

    @Override
    @Transactional
    public void removeUser(User user) {
        this.userDAO.removeUser(user);
    }

    @Override
    @Transactional
    public User getUserById(int id) {
        return this.userDAO.getUserById(id);
    }

    @Override
    @Transactional
    public List<User> listUser() {
        return this.userDAO.listUser();
    }
}
