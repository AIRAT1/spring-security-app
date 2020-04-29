-- Table: users
CREATE TABLE IF NOT EXISTS users (
    id       BIGSERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table: roles
CREATE TABLE IF NOT EXISTS roles (
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Table for mapping user and roles: user_roles
CREATE TABLE IF NOT EXISTS user_roles (
    user_id INTEGER NOT NULL ,
    role_id INTEGER NOT NULL ,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (role_id) REFERENCES roles(id),
    UNIQUE (user_id, role_id)
);

-- Insert data
INSERT INTO users VALUES (1, 'root', '$2a$04$FrA9v3ztV7.iPwp8y0eCseMNoi0plx8QMeA5rA/pG4rULbE/ZmhYu');
INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');
INSERT INTO user_roles VALUES (1, 2);