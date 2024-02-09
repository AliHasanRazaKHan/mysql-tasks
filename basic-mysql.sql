CREATE DATABASE training;
USE training;
CREATE TABLE tasks(entity_id INT NOT NULL,task_name VARCHAR(255) NOT NULL,
description VARCHAR(255) NOT NULL,estimate_hours INT NOT NULL,
assignee_name INT NOT NULL,status BOOLEAN NOT NULL DEFAULT 0,PRIMARY KEY(entity_id));
ALTER TABLE tasks MODIFY COLUMN assignee_name VARCHAR(30);
ALTER TABLE tasks MODIFY COLUMN estimate_hours VARCHAR(10);
INSERT INTO tasks (entity_id,task_name,description,estimate_hours,assignee_name,status)
VAlues(1,"Create New Database","CREATE new mysql database","30m","hassanRaza",0),
(2,"Create New Table","Create new table in mysql and insert your name as assignee","2h","hassanRaza",0),
(3,"Alter Table Fields","Update the columns of table according to point 3 and 4","1d","hassanRaza",0),
(4,"Delete Database","Delete the database when all tasks are finished","0.5d","hassanRaza",0),
(5,"Php tutorial","Check all the php tutorials on w3school","7d","hassanRaza",1);
SELECT * FROM tasks;
UPDATE tasks SET status = 1 WHERE entity_id BETWEEN 1 AND 3;
DELETE FROM tasks WHERE entity_id = 5;
