-- populate tables OOP2

spool c:/CPRG211/PopulateTablesOOP2.txt

DELETE FROM rate_of_pay;
DELETE FROM employee;

set def OFF

INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (123456012, 'Zena', 'Kebede', TO_DATE('1990-10-07', 'YYYY-MM-DD'), '3306 2 Street NW', 'T2K0V6', 4036303386, 0);
INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (234567890, 'Michaela', 'Paige', TO_DATE('2005-12-31', 'YYYY-MM-DD'), '123 Edgeburn Gardens NW', 'T2A0P3', 4035556666, 0);
INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (345678901, 'Skylar', 'Jones', TO_DATE('1992-06-15', 'YYYY-MM-DD'), '123 Castledale Way NE', 'T3J3X3', 4036861299, 1);
INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (456789012, 'Zeal', 'Mehta', TO_DATE('1985-09-28', 'YYYY-MM-DD'), '1501 1 Street NW', 'T2K0W1', 8258907785, 1);
INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (567890123, 'Samuel', 'James', TO_DATE('2001-03-07', 'YYYY-MM-DD'),  '56 Saddletown Square NE', 'T2Y3V5', 5878251234, 0);
INSERT INTO employee (employeeID, first_name, last_name, date_of_birth, address, postal_code, phone_number, typeEmployee) VALUES (678901234, 'Ella', 'Smith', TO_DATE('1978-11-12', 'YYYY-MM-DD'), '470 33 Avenue NW', 'T3M1M4', 5148925555, 1);

INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (123456012, 0, 0, 4000);
INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (234567890, 0, 0, 4500);
INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (345678901, 1, 45, 0);
INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (456789012, 1, 38, 0);
INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (567890123, 0, 0, 5500);
INSERT INTO rate_of_pay (employeeID, typeEmployee, rateHourly, rateSalary) VALUES (678901234, 1, 32, 0);

COMMIT;

spool off