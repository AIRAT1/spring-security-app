package de.springsecurityapp.service;

/**
 * Service for security.
 *
 * @author Ayrat Hairullin
 * @version 1.0
 */

public interface SecurityService {
    String findLoggedInUsername();
    void autoLogin(String username, String password);
}
