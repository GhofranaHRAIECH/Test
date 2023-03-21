CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE
);

CREATE TABLE Contract (
    contract_id INT PRIMARY KEY,
    employee_id INT,
    start_date DATE,
    end_date DATE,
    salary DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Family (
    family_id INT PRIMARY KEY,
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE Service (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(50),
    supervisor VARCHAR(100)
);

CREATE TABLE EmployeeService (
    employee_id INT,
    service_id INT,
    PRIMARY KEY (employee_id, service_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (service_id) REFERENCES Service(service_id)
);

CREATE TABLE Manager (
    manager_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);