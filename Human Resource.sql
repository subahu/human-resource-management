create database human_Resource;
use human_resource;
-- ---------------------------------------------------------------------------------
create table countries(
country_id varchar(2) not null,
country_name varchar(40) default null,
region_id decimal(10,0) default null,
primary key (country_id),
key countr_reg_fk(region_id)
);

INSERT INTO countries (country_id, country_name, region_id)
VALUES 
('US', 'United States', 1),
('IN', 'India', 2),
('UK', 'United Kingdom', 3),
('AU', 'Australia', 4),
('CA', 'Canada', 5),
('FR', 'France', 6),
('DE', 'Germany', 7),
('JP', 'Japan', 8),
('CN', 'China', 9),
('BR', 'Brazil', 10);

select *from countries;
-- -------------------------------------------------------------------------------------

create table department(
department_id  decimal(4,0) not null default"0",
department_name varchar(30) not null,
manager_id  decimal(6,0) default null,
location_id decimal(4,0) default null,
primary key (department_id),
key dept_mgr_fk (manager_id),  -- create index of manager  id 
key dept_location_Ix (location_id)
);

show tables;

INSERT INTO department (department_id, department_name, manager_id, location_id)
VALUES 
(10, 'Finance', 101, 1),
(20, 'Human Resources', 102, 2),
(30, 'IT', 103, 3),
(40, 'Marketing', 104, 4),
(50, 'Sales', NULL, 5),
(60, 'Operations', 105, NULL),
(70, 'Legal', 106, 6),
(80, 'Procurement', NULL, NULL),
(90, 'Research', 107, 7),
(100, 'Customer Support', NULL, 8);

select * from department;
-- -------------------------------------------------------------------------------------

create table employe(
employe_id  decimal(6,0) not null default"0",
first_name varchar(20) not null,
last_name varchar(25) not null,
email varchar(25) not null,
phone_no varchar(20) default null,
hire_date  date not null,
job_id varchar(10) not null,
salary  decimal(8,2) default null,
comission_pct  decimal(2,2) default null,
manager_id  decimal(6,0) default null,
department_id  decimal(4,0) default null,
location_id decimal(4,0) default null,
primary key (employe_id),
unique key emp_email_uk (email),
key emp_department_IX (department_id),
key emp_job_IX (job_id),
key dept_mgr_IX (manager_id),  -- create index of manager  id 
key emp_namw_IX (last_name,first_name)
);

INSERT INTO employe (employe_id, first_name, last_name, email, phone_no, hire_date, job_id, salary, comission_pct, manager_id, department_id, location_id)
VALUES
(100001, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '2025-01-10', 'DEV01', 75000.00, 0.05, 100002, 10, 1),
(100002, 'Jane', 'Smith', 'janesmith@example.com', '234-567-8901', '2025-01-05', 'HR01', 60000.00, 0.04, NULL, 20, 2),
(100003, 'Michael', 'Johnson', 'mjohnson@example.com', '345-678-9012', '2025-01-12', 'SALES01', 50000.00, 0.03, 100001, 30, 3),
(100004, 'Emily', 'Davis', 'edavis@example.com', '456-789-0123', '2025-01-08', 'IT01', 80000.00, 0.06, NULL, 40, 4),
(100005, 'William', 'Brown', 'wbrown@example.com', '567-890-1234', '2025-01-15', 'FIN01', 95000.00, 0.07, 100003, 50, 5),
(100006, 'Olivia', 'Martinez', 'omartinez@example.com', '678-901-2345', '2025-01-20', 'DEV02', 72000.00, 0.05, 100001, 10, 1),
(100007, 'Sophia', 'Garcia', 'sophia@example.com', '789-012-3456', '2025-01-25', 'HR02', 65000.00, 0.04, 100002, 20, 2),
(100008, 'Liam', 'Wilson', 'liamwilson@example.com', '890-123-4567', '2025-01-30', 'SALES02', 54000.00, 0.03, 100001, 30, 3),
(100009, 'Ava', 'Taylor', 'avataylor@example.com', '901-234-5678', '2025-02-01', 'IT02', 78000.00, 0.06, 100003, 40, 4),
(100010, 'James', 'Anderson', 'jamesanderson@example.com', '012-345-6789', '2025-02-05', 'FIN02', 98000.00, 0.07, 100003, 50, 5); 

INSERT INTO employe (employe_id, first_name, last_name, email, phone_no, hire_date, job_id, salary, comission_pct, manager_id, department_id, location_id)
VALUES
(100016, 'Sophia', 'Martinez', 'sophiamartin@example.com', '123-456-7890', '2025-03-01', 'DEV04', 77000.00, 0.05, 100002, 10, 1),
(100017, 'Jackson', 'Rodriguez', 'jacksonr@example.com', '234-567-8901', '2025-03-02', 'HR04', 65000.00, 0.04, 100003, 20, 2),
(100018, 'Isabella', 'Walker', 'isabellawalk@example.com', '345-678-9012', '2025-03-03', 'SALES04', 54000.00, 0.03, 100004, 30, 3),
(100019, 'Mason', 'Lopez', 'masonlopez@example.com', '456-789-0123', '2025-03-04', 'IT04', 78000.00, 0.06, 100002, 40, 4),
(100020, 'Harper', 'Taylor', 'harpertaylor@example.com', '567-890-1234', '2025-03-05', 'FIN04', 99000.00, 0.07, 100003, 50, 5);
 
 Select * from employe;
 --  ----------------------------------------------------------------------------------------------------------- 
 
 CREATE TABLE job_history (
    employe_id DECIMAL(6, 0) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    job_id VARCHAR(10) NOT NULL,
    department_id DECIMAL(4, 0) NOT NULL,
    PRIMARY KEY (employe_id, start_date),
    key jhist_department_IX (department_id),
    key jhist_employe_IX (employe_id),
	key jhist_job_IX (job_id)
    );
    
INSERT INTO job_history (employe_id, start_date, end_date, job_id, department_id)
VALUES
(100001, '2022-01-10', '2023-01-10', 'DEV01', 10),
(100002, '2020-06-15', '2021-06-15', 'HR01', 20),
(100003, '2021-03-01', '2022-03-01', 'SALES01', 30),
(100004, '2022-05-05', '2023-05-05', 'IT01', 40),
(100005, '2022-06-01', '2023-06-01', 'DEV02', 10),
(100006, '2023-01-10', '2024-01-10', 'SALES02', 30);

select* from job_history;
--  --------------------------------------------------------------------------------------------------------------------------------------------

create table jobs(
job_id varchar(10) not null default '',
job_title varchar(35) default null,
min_salary decimal(6,0) default null,
max_salary decimal(6,0) default null,
primary key (job_id)
);

INSERT INTO jobs (job_id, job_title, min_salary, max_salary)
VALUES
('DEV01', 'Software Developer', 50000, 100000),
('HR01', 'HR Manager', 45000, 80000),
('SALES01', 'Sales Associate', 30000, 60000),
('IT01', 'IT Specialist', 40000, 75000),
('FIN01', 'Financial Analyst', 55000, 90000),
('DEV02', 'Senior Developer', 70000, 120000),
('SALES02', 'Sales Manager', 60000, 110000),
('IT02', 'Network Administrator', 50000, 95000),
('HR02', 'HR Assistant', 35000, 60000),
('SALES03', 'Sales Director', 80000, 150000),
('DEV03', 'Backend Developer', 60000, 110000),
('IT03', 'System Administrator', 45000, 85000),
('FIN02', 'Investment Analyst', 70000, 120000),
('DEV04', 'Full-stack Developer', 75000, 130000),
('SALES04', 'Sales Executive', 40000, 70000),
('IT04', 'Cloud Architect', 85000, 150000),
('HR03', 'HR Director', 75000, 140000),
('DEV05', 'Frontend Developer', 60000, 110000),
('SALES05', 'Account Executive', 45000, 80000);

select * from jobs;

--  ------------------------------------------------------------------------------------------------------------------------------------------ 
create table location (
location_id  decimal(4,0) not null default"0",
street_name varchar(40) default null,
postal_code varchar(12) default null,
city varchar(30) not null,
state_province varchar(25) default null,
country_id varchar(2) default null,
primary key (location_id),
key loc_city_fk (city), 
key loc_country_Ix (country_id),
key loc_state_province_IX(state_province)
);

INSERT INTO location (location_id, street_name, postal_code, city, state_province, country_id)
VALUES
(1001, '123 Main St', '90001', 'Los Angeles', 'California', 'US'),
(1002, '456 Elm St', '20001', 'Washington', 'District of Columbia', 'US'),
(1003, '789 Oak St', '94101', 'San Francisco', 'California', 'US'),
(1004, '101 Pine St', '110001', 'New Delhi', 'Delhi', 'IN'),
(1005, '202 Maple Ave', 'V6B 3X1', 'Vancouver', 'British Columbia', 'CA'),
(1006, '303 Birch Rd', '700101', 'Hyderabad', 'Telangana', 'IN'),
(1007, '404 Cedar Blvd', 'E1 5LR', 'London', 'England', 'GB'),
(1008, '505 Willow Dr', 'A1 3AX', 'Edinburgh', 'Scotland', 'GB'),
(1009, '606 Pine Rd', '75001', 'Paris', 'Île-de-France', 'FR'),
(1010, '707 Cedar Lane', '600001', 'Mumbai', 'Maharashtra', 'IN'),
(1011, '808 Oak Blvd', '6300', 'Sydney', 'New South Wales', 'AU'),
(1012, '909 Birch Ln', '70030', 'Melbourne', 'Victoria', 'AU'),
(1013, '1010 Maple St', '12345', 'New York', 'New York', 'US'),
(1014, '1111 Pine Dr', '33456', 'Chicago', 'Illinois', 'US'),
(1015, '1212 Birch Blvd', '75002', 'Houston', 'Texas', 'US'),
(1016, '1313 Oak St', '4700', 'Berlin', 'Berlin', 'DE'),
(1017, '1414 Cedar Dr', '4000', 'Amsterdam', 'North Holland', 'NL'),
(1018, '1515 Willow Blvd', '12000', 'São Paulo', 'São Paulo', 'BR'),
(1019, '1616 Elm Ave', '70012', 'Rio de Janeiro', 'Rio de Janeiro', 'BR'),
(1020, '1717 Pine Rd', '4000', 'Tokyo', 'Tokyo', 'JP');

select * from location;
--  --------------------------------------------------------------------------------------------------------------------------------------------
 
create table region(
region_id decimal(5,0) not null,
region_name varchar(25) default null,
primary key (region_id),
unique key sss(region_name)
);

INSERT INTO region (region_id, region_name)
VALUES
(1, 'North America'),
(2, 'Europe'),
(3, 'Asia'),
(4, 'South America'),
(5, 'Africa'),
(6, 'Oceania'),
(7, 'Middle East'),
(8, 'Caribbean'),
(9, 'Central America'),
(10, 'Southeast Asia'),
(11, 'Northern Europe'),
(12, 'Western Europe'),
(13, 'Eastern Europe'),
(14, 'Southern Europe'),
(15, 'Central Asia'),
(16, 'South Asia'),
(17, 'East Asia'),
(18, 'Sub-Saharan Africa'),
(19, 'North Africa'),
(20, 'Latin America');

select * from region;
--  ---------------------------------------------------------------------------------------------------------------------------------------------- 
