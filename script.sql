CREATE TABLE wp_instances (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30) NOT NULL,
description VARCHAR(30) NOT NULL,
email VARCHAR(50),
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO wp_instances (location, description, email) VALUES ('SL', 'Sri Lanka', 'email1@qwe.com');
INSERT INTO wp_instances (location, description, email) VALUES ('IND', 'India', 'email2@qwe.com');
INSERT INTO wp_instances (location, description, email) VALUES ('AUS', 'Australia', 'email3@qwe.com');
