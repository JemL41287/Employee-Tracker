USE employee_trackerDB;

--departments
INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Human Resources");

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Marketing");

--roles
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Director", 100000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Account Executive", 70000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Chief People Officer", 200000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Benefits Manager", 60000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Senior Software Engineer", 150000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("Chief Marketing Officer", 200000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("Marketing Manager", 70000, 4);

--employees
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("James", "Smith", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Michael", "Jones", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Kathy", "Coleman", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Robert", "Turner", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Scott", "Parker", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Lily", "Adams", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Taylor", "Stone", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Marcia", "Garcia", 3);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Amy", "Andrews", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Dan", "Sanders", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Jessica", "Carson", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Paul", "Olsen", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Sarah", "Walsh", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Bill", "Johnson", 7);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Molly", "Miller", 8);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Matt", "Lewis", 8);
