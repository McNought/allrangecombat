-- Creates db schema
CREATE SCHEMA if not exists `arcs` ;

-- Create the user
DROP USER 'arcsuser'@'localhost';
CREATE USER 'arcsuser'@'localhost' IDENTIFIED BY 'Ninjas123';

GRANT ALL PRIVILEGES ON arcs.* TO 'arcsuser'@'localhost';

-- Instantiuates the nom MODX tables
