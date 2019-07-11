
/*    create the MovinOn database 
script Date: Feb/18/2019
Developed by Bianyu WANG(1896181) , Hongyu ZHAO(1895825), Yangyang MA(1896156),  */




use Movinon_YM;

load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/Vehicles.csv'
into table vehicles
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
;


SELECT 
    *
FROM
    vehicles
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/warehouses.csv'
into table warehouses
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
;

SELECT 
    *
FROM
    warehouses
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/positions.csv'
into table positions
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
;

SELECT 
    *
FROM
    positions
;
show columns from positions;

load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/Drivers.csv'
into table drivers
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(DriverID,DriverFirst,DriverLast,SSN,DOB,StartDate,@EndDate,Address,City,State,Zip,Phone,Cell,MileageRate,Review,DrivingRecord)
set enddate = nullif (@enddate, '')
;

SELECT 
    *
FROM
    drivers
;

load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/Customers.csv'
into table customers
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
;

SELECT 
    *
FROM
    customers
;


load data infile 'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/Employees.csv'
into table employees
fields terminated by ','
lines terminated by '\r\n'
ignore 1 rows
(EmpID,EmpFirst,EmpLast,Address,City,State,Zip,Phone,Cell,SSN,DOB,StartDate,@var1_enddate,PositionID,@var4_Salary,@var3_HourlyRate,@var2_review,Memo,WarehouseID)
set 
enddate = nullif (@var1_enddate, ''), 
review = nullif (@var2_review, ''), 
hourlyrate = nullif (@var3_HourlyRate, ''),
Salary = nullif (@var4_Salary, '')
;



SELECT 
    *
FROM
    employees;


