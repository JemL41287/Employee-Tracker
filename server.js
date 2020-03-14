var mysql = require("mysql");
var inquirer = require("inquirer");
var consoleTable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Olive9139!",
  database: "employee_trackerDB"
});

function updateServer() {
  connection.query("SELECT * from role", function (err, res) {
    allroles = res.map(role => ({ name: role.title, value: role.id }));
  });

  connection.query("SELECT * from department", function (err, res) {
    alldepartments = res.map(dept => ({ name: dept.title, value: dept.id }));
  });

  connection.query("SELECT * from employee", function (err, res) {
    allemployees = res.map(employee => ({ 
      name: `${employee.first_name} ${employee.last_name}`,
      value: employee.id
   }));
  });
}

connection.connect(function (err) {
  if (err) throw err;
  console.log("\nWelcome to the Employee Management System\n");
  startEmployeeManager();
  updateServer();
});

function startEmployeeManager() {
  inquirer
    .prompt({
      name: "action",
      type: "rawlist",
      message: "What would you like to do?",
      choices: [
        "View All Employees",
        "View All Departments",
        "View All Roles",
        "Add Employee",
        "Add Department",
        "Add Role",
        "Update Employee Role",
        "Exit"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
      case "View All Employees":
        viewAllEmployees();
        break;

      case "View All Departments":
        viewAllDepartments();
        break;

      case "View All Roles":
        viewAllRoles();
        break;

      case "Add Employee":
        addEmployee();
        break;

      case "Add Department":
        addDepartment();
        break;

      case "Add Role":
        addRole();
        break;

      case "Update Employee Role":
        updateEmployeeRole();
        break;

      case "Exit":
        connection.end();
        break;
      }
    });
}

function viewAllEmployees() {
  console.log("     ")
  var query = "SELECT employee.id, first_name AS firstname, last_name AS lastname, title AS role, name AS department, salary AS salary FROM employee INNER JOIN role ON employee.role_id = role.id INNER JOIN department ON role.department_id = department.id;";
  connection.query(query, function(err, res) {
    if (err) throw (err);
    console.table(res);
    startEmployeeManager();
  });
}

function viewAllDepartments() {
  console.log("     ")
  var query = "SELECT id, name AS department FROM department";
  connection.query(query, function(err, res) {
    if (err) throw (err);
    console.table(res);
    startEmployeeManager();
  });
}

function viewAllRoles() {
  console.log("     ")
  var query = "SELECT r.id, title AS role, salary, name AS department FROM role r LEFT JOIN department d ON department_id = d.id";
  connection.query(query, function(err, res) {
    if (err) throw (err);
    console.table(res);
    startEmployeeManager();
  });
}


