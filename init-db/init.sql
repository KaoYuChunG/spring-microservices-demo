CREATE TABLE users (
                       username VARCHAR(50) NOT NULL PRIMARY KEY,
                       password VARCHAR(100) NOT NULL,
                       enabled BOOLEAN NOT NULL
);

CREATE TABLE authorities (
                             username VARCHAR(50) NOT NULL,
                             authority VARCHAR(50) NOT NULL,
                             CONSTRAINT fk_username FOREIGN KEY(username) REFERENCES users(username)
);

CREATE UNIQUE INDEX ix_auth_username ON authorities (username, authority);

-- 插入用戶
INSERT INTO users (username, password, enabled) VALUES (
                                                           'kao',
                                                           '$2a$10$DOWSDxSHAPmOnCKuqQx5WOCMkZtMP/3fAyKz/EdjlZQKnZjTUC3V2',
                                                           true
                                                       );

-- 指定角色
INSERT INTO authorities (username, authority) VALUES ('kao', 'ROLE_USER');



CREATE TABLE IF NOT EXISTS oauth2_registered_client (
    id VARCHAR(100) PRIMARY KEY,
    client_id VARCHAR(100) NOT NULL,
    client_id_issued_at TIMESTAMP NOT NULL,
    client_secret VARCHAR(200),
    client_secret_expires_at TIMESTAMP,
    client_name VARCHAR(200) NOT NULL,
    client_authentication_methods VARCHAR(1000) NOT NULL,
    authorization_grant_types VARCHAR(1000) NOT NULL,
    redirect_uris VARCHAR(1000),
    scopes VARCHAR(1000),
    client_settings VARCHAR(2000) NOT NULL,
    token_settings VARCHAR(2000) NOT NULL
);