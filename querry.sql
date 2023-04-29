-- to do app database structure

-- Creating Database
CREATE DATABASE n19_todo_db;
USE n19_todo_db

-- Create tasks table

CREATE TABLE IF NOT EXISTS tasks(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(128) NOT NULL,
    info VARCHAR(512),
    parent_id INT,
    is_done TINYINT DEFAULT 0,
    created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO   tasks (task,info,parent_id)VALUES
    ("do homework","i have a lot of tasks to do",0),
    ("TASK 1"," ",1),
    ("TASK 2"," ",1),
    ("TASK 3"," ",1);
INSERT INTO   tasks (task,parent_id)VALUES
    ("DOWNLOAD CS.GO",0),
    ("update system",0);
INSERT INTO   tasks (task,info,parent_id,is_done)VALUES
    ("Prepare OS","Install all additional soft on it",0,1),
    ("Install OS","Download from microsoft.com",7,1),
    ("Install google chrome","make a primary browser",7,1);
    