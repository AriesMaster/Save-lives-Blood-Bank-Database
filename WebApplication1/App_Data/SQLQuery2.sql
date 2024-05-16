-- Creating table for donors
CREATE TABLE DONOR (
  Donor_ID INT PRIMARY KEY,
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Date_of_Birth DATE,
  Phone_Number VARCHAR(20),
  Blood_Type CHAR(2),
  Gender VARCHAR(10),
  Social_Status VARCHAR(50),
  Last_Date_of_Donation DATE,
  Medical_Conditions VARCHAR(255),
  Weight DECIMAL(5,2)
);

-- Creating table for employees
CREATE TABLE EMPLOYEE (
  Emp_ID INT PRIMARY KEY,
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Date_of_Birth DATE,
  Phone_Number VARCHAR(20),
  Gender VARCHAR(10),
  Social_Status VARCHAR(50)
);

-- Creating table for hospital requests
CREATE TABLE HOSPITAL_REQUESTS (
  Hospital_ID INT PRIMARY KEY,
  Hospital_Name VARCHAR(100),
  Number_of_Blood_Bags_Required INT,
  Type_Required CHAR(2)
);

-- Creating table for blood bags
CREATE TABLE BLOOD_BAG (
  Blood_ID INT PRIMARY KEY,
  Donation_Date DATE,
  Expiry_Date DATE,
  Blood_Type CHAR(2),
  Donor_ID INT,
  CONSTRAINT fk_donor FOREIGN KEY (Donor_ID) REFERENCES DONOR(Donor_ID)
);

-- Creating table for blood inventory
CREATE TABLE BLOOD_INVENTORY (
  Inventory_ID INT PRIMARY KEY,
  Blood_Type CHAR(2),
  Number_of_Bags INT,
  Blood_ID INT,
  Emp_ID INT,
  CONSTRAINT fk_blood_bag FOREIGN KEY (Blood_ID) REFERENCES BLOOD_BAG(Blood_ID),
  CONSTRAINT fk_employee FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID)
);

-- Creating table for blood banks
CREATE TABLE BLOOD_BANK (
  Blood_Bank_ID INT PRIMARY KEY,
  Blood_Bank_Name VARCHAR(100),
  Blood_Bank_Address VARCHAR(255),
  Blood_Bank_Contact_Details VARCHAR(255),
  Hospital_ID INT,
  Emp_ID INT,
  Donor_ID INT,
  Inventory_ID INT,
  CONSTRAINT fk_hospital_requests FOREIGN KEY (Hospital_ID) REFERENCES HOSPITAL_REQUESTS(Hospital_ID),
  CONSTRAINT fk_employee_bb FOREIGN KEY (Emp_ID) REFERENCES EMPLOYEE(Emp_ID),
  CONSTRAINT fk_donor_bb FOREIGN KEY (Donor_ID) REFERENCES DONOR(Donor_ID),
  CONSTRAINT fk_inventory_bb FOREIGN KEY (Inventory_ID) REFERENCES BLOOD_INVENTORY(Inventory_ID)
);

-- Populate the DONOR table (continued)
INSERT INTO DONOR (Donor_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Blood_Type, Gender, Social_Status, Last_Date_of_Donation, Medical_Conditions, Weight)
VALUES 
(4, 'Emily', 'Brown', CONVERT(DATE, '1992-11-18', 23), '888-888-8888', 'A', 'Female', 'Single', CONVERT(DATE, '2023-01-10', 23), 'Hypertension', 60.00);

INSERT INTO DONOR (Donor_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Blood_Type, Gender, Social_Status, Last_Date_of_Donation, Medical_Conditions, Weight)
VALUES 
(5, 'David', 'Miller', CONVERT(DATE, '1988-07-05', 23), '999-999-9999', 'O', 'Male', 'Married', CONVERT(DATE, '2022-11-30', 23), NULL, 75.00);

INSERT INTO DONOR (Donor_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Blood_Type, Gender, Social_Status, Last_Date_of_Donation, Medical_Conditions, Weight)
VALUES 
(6, 'Sophia', 'Wilson', CONVERT(DATE, '1997-04-30', 23), '111-111-1111', 'A', 'Female', 'Single', CONVERT(DATE, '2023-03-15', 23), NULL, 55.00);

-- Populate the EMPLOYEE table (continued)
INSERT INTO EMPLOYEE (Emp_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Gender, Social_Status)
VALUES 
(3, 'Jessica', 'Martinez', CONVERT(DATE, '1990-09-12', 23), '333-333-3333', 'Female', 'Married');

INSERT INTO EMPLOYEE (Emp_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Gender, Social_Status)
VALUES 
(4, 'William', 'Taylor', CONVERT(DATE, '1975-12-30', 23), '444-444-4444', 'Male', 'Married');

INSERT INTO EMPLOYEE (Emp_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Gender, Social_Status)
VALUES 
(5, 'Olivia', 'Harris', CONVERT(DATE, '1983-02-15', 23), '555-555-5555', 'Female', 'Divorced');

INSERT INTO EMPLOYEE (Emp_ID, First_Name, Last_Name, Date_of_Birth, Phone_Number, Gender, Social_Status)
VALUES 
(6, 'Daniel', 'Thomas', CONVERT(DATE, '1993-01-08', 23), '666-666-6666', 'Male', 'Single');

-- Populate the HOSPITAL_REQUESTS table (continued)
INSERT INTO HOSPITAL_REQUESTS (Hospital_ID, Hospital_Name, Number_of_Blood_Bags_Required, Type_Required)
VALUES 
(3, 'Memorial Hospital', 30, 'O');

INSERT INTO HOSPITAL_REQUESTS (Hospital_ID, Hospital_Name, Number_of_Blood_Bags_Required, Type_Required)
VALUES 
(4, 'City Medical Center', 25, 'A');

INSERT INTO HOSPITAL_REQUESTS (Hospital_ID, Hospital_Name, Number_of_Blood_Bags_Required, Type_Required)
VALUES 
(5, 'Regional Hospital', 20, 'AB');

INSERT INTO HOSPITAL_REQUESTS (Hospital_ID, Hospital_Name, Number_of_Blood_Bags_Required, Type_Required)
VALUES 
(6, 'Community Clinic', 10, 'O');

-- Populate the BLOOD_BAG table (continued)
INSERT INTO BLOOD_BAG (Blood_ID, Donation_Date, Expiry_Date, Blood_Type, Donor_ID)
VALUES 
(3, CONVERT(DATE, '2022-12-25', 23), CONVERT(DATE, '2023-12-25', 23), 'B', 3);

INSERT INTO BLOOD_BAG (Blood_ID, Donation_Date, Expiry_Date, Blood_Type, Donor_ID)
VALUES 
(4, CONVERT(DATE, '2023-01-05', 23), CONVERT(DATE, '2024-01-05', 23), 'A', 4);

INSERT INTO BLOOD_BAG (Blood_ID, Donation_Date, Expiry_Date, Blood_Type, Donor_ID)
VALUES 
(5, CONVERT(DATE, '2022-11-20', 23), CONVERT(DATE, '2023-11-20', 23), 'O', 5);

INSERT INTO BLOOD_BAG (Blood_ID, Donation_Date, Expiry_Date, Blood_Type, Donor_ID)
VALUES 
(6, CONVERT(DATE, '2023-03-10', 23), CONVERT(DATE, '2024-03-10', 23), 'A', 6);

-- Populate the BLOOD_INVENTORY table (continued)
INSERT INTO BLOOD_INVENTORY (Inventory_ID, Blood_Type, Number_of_Bags, Blood_ID, Emp_ID)
VALUES 
(3, 'B', 7, 3, 3);

INSERT INTO BLOOD_INVENTORY (Inventory_ID, Blood_Type, Number_of_Bags, Blood_ID, Emp_ID)
VALUES 
(4, 'A', 8, 4, 4);

INSERT INTO BLOOD_INVENTORY (Inventory_ID, Blood_Type, Number_of_Bags, Blood_ID, Emp_ID)
VALUES 
(5, 'O', 10, 5, 5);

INSERT INTO BLOOD_INVENTORY (Inventory_ID, Blood_Type, Number_of_Bags, Blood_ID, Emp_ID)
VALUES 
(6, 'A', 6, 6, 6);

-- Populate the BLOOD_BANK table (continued)
INSERT INTO BLOOD_BANK (Blood_Bank_ID, Blood_Bank_Name, Blood_Bank_Address, Blood_Bank_Contact_Details, Hospital_ID, Emp_ID, Donor_ID, Inventory_ID)
VALUES 
(3, 'Regional Blood Bank', '789 Elm St', '111-222-3333', 3, 3, 3, 3);

INSERT INTO BLOOD_BANK (Blood_Bank_ID, Blood_Bank_Name, Blood_Bank_Address, Blood_Bank_Contact_Details, Hospital_ID, Emp_ID, Donor_ID, Inventory_ID)
VALUES 
(4, 'City Blood Services', '101 Pine St', '444-555-6666', 4, 4, 4, 4);

INSERT INTO BLOOD_BANK (Blood_Bank_ID, Blood_Bank_Name, Blood_Bank_Address, Blood_Bank_Contact_Details, Hospital_ID, Emp_ID, Donor_ID, Inventory_ID)
VALUES 
(5, 'County Blood Bank', '202 Maple St', '999-888-7777', 5, 5, 5, 5);

INSERT INTO BLOOD_BANK (Blood_Bank_ID, Blood_Bank_Name, Blood_Bank_Address, Blood_Bank_Contact_Details, Hospital_ID, Emp_ID, Donor_ID, Inventory_ID)
VALUES 
(6, 'Metro Blood Center', '303 Cedar St', '666-555-4444', 6, 6, 6, 6);
