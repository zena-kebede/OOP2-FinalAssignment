-- create tables for OOP2 final assignment

spool C:/CPRG211/FinalAssignmentOOP_Output.txt

DROP TABLE rate_of_pay CASCADE CONSTRAINTS;
DROP TABLE employee CASCADE CONSTRAINTS;


-- create tables and constraints
CREATE TABLE employee 
(
    employeeID NUMBER(9) PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    date_of_birth DATE NOT NULL,
    address VARCHAR(50) NOT NULL,
    postal_code VARCHAR(6),
    phone_number NUMBER(10),
    typeEmployee NUMBER(1) NOT NULL
);

CREATE TABLE rate_of_pay
(
    employeeID NUMBER(9) NOT NULL,
    typeEmployee NUMBER(1) NOT NULL,
    rateHourly NUMBER(4),
    rateSalary NUMBER(6),
    CONSTRAINT rate_pay_PK PRIMARY KEY (employeeID, typeEmployee),
    CONSTRAINT rate_pay_FK FOREIGN KEY (employeeID) REFERENCES employee(employeeID)
);

COMMIT;

spool OFF