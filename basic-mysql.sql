CREATE DATABASE training;
USE training;
CREATE TABLE tasks(entity_id INT NOT NULL,task_name VARCHAR(255) NOT NULL,
description VARCHAR(255) NOT NULL,estimate_hours INT NOT NULL,
assignee_name INT NOT NULL,status BOOLEAN NOT NULL DEFAULT 0,PRIMARY KEY(entity_id));
