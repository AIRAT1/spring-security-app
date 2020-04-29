package de.springsecurityapp.service;

import de.springsecurityapp.model.User;

/**
 * Service class for {@link User}
 *
 * @author Ayrat Hairullin
 * @version 1.0
 */
public interface UserService {
    void save(User user);
    User findByUsername(String username);
}
