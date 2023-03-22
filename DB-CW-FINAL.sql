/*MySQL syntax*/
/*Haresh Ravindiran  -   200243063*/
/*Jayden Mehta-Patel -   210336373*/
/*Niramay Mehta      -   210418875*/
/*Swann Oreal        -   210471308*/


CREATE DATABASE IF NOT EXISTS `coursework`;
USE `coursework`;

/************************************************************************************************************************************************************/
/*CREATE statements*/
CREATE TABLE IF NOT EXISTS AGENCY
(
    Id int primary key, 
    AgencyName varchar(255) NOT NULL,
    PhoneNumber varchar(255)
);

CREATE TABLE IF NOT EXISTS OFFICE
(
    Id int primary key,
    AgencyId int NOT NULL REFERENCES AGENCY(Id),
    Area varchar(4) NOT NULL,
    District varchar (255) NOT NULL,
    Sector varchar (255) NOT NULL,
    Unit varchar (255) NOT NULL,
    PostCode varchar (255) NOT NULL,
    PhoneNumber varchar(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS PROPERTY
(
    Id int primary key,
    Area varchar(4) NOT NULL,
    District varchar (255) NOT NULL,
    Sector varchar (255) NOT NULL,
    Unit varchar (255) NOT NULL,
    City varchar (255) NOT NULL,
    PostCode varchar (255) NOT NULL,
    Price int NOT NULL,
    PropertyType varchar (255),
    NumBedrooms int,
    PropertyDesc varchar(255)
);

CREATE TABLE IF NOT EXISTS CUSTOMER
(
    Id int primary key,
    CustomerName varchar(255) NOT NULL,
    PhoneNumber varchar(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS FORSALE
(
    PropertyId int NOT NULL REFERENCES PROPERTY(Id),
    OfficeId int NOT NULL REFERENCES OFFICE(Id)
);

CREATE TABLE IF NOT EXISTS FORRENT
( 
    PropertyId int NOT NULL REFERENCES PROPERTY(Id),
    OfficeId int NOT NULL REFERENCES OFFICE(Id)
);

CREATE TABLE IF NOT EXISTS SOLD
(
    PropertyId int NOT NULL REFERENCES PROPERTY(Id),
    OfficeId int NOT NULL REFERENCES OFFICE(Id),
    CustomerId int NOT NULL REFERENCES CUSTOMER(Id)
);


/************************************************************************************************************************************************************/
/*INSERT statements*/
INSERT INTO AGENCY VALUES(1, 'Harrow Estates', 07886574480);
INSERT INTO AGENCY VALUES(2, 'Birmingham Real Estates', 07534215687);
INSERT INTO AGENCY VALUES(3, 'Royal Smart Estates', 07578955674);
INSERT INTO AGENCY VALUES(4, 'London States Ltd', 071258432175);
INSERT INTO AGENCY VALUES(5, 'George Housing Pvt Ltd', 08857124579);
INSERT INTO AGENCY VALUES(6, 'Sharma Housing Agency', 08542239734);
INSERT INTO AGENCY VALUES(7, 'Bill&Co Real Agency Ltd', 07498337517);
INSERT INTO AGENCY VALUES(8, 'Hobbs & Shaw Estates', 07625723395);
INSERT INTO AGENCY VALUES(9, 'The Realtor Company Ltd', 07556438211);
INSERT INTO AGENCY VALUES(10,'BROOKLYN99 Estates', 02051478695);

INSERT INTO OFFICE VALUES(101, 1, 'A', '1', '1', 'AA', 'A1 1AA', 07576574480);
INSERT INTO OFFICE VALUES(102, 2, 'B', '2', '2', 'BB', 'B2 2BB', 07894352131);
INSERT INTO OFFICE VALUES(103, 4, 'C', '3', '3', 'CC', 'C3 3CC', 07322889167);
INSERT INTO OFFICE VALUES(104, 3, 'D', '4', '4', 'DD', 'D4 4DD', 07432189543);
INSERT INTO OFFICE VALUES(105, 5, 'E', '7', '5', 'EE', 'E5 5EE', 07789302192);
INSERT INTO OFFICE VALUES(106, 8, 'F', '6', '6', 'FF', 'F6 6FF', 07541218987);
INSERT INTO OFFICE VALUES(107, 7, 'G', '4', '7', 'GG', 'G7 7GG', 07766554329);
INSERT INTO OFFICE VALUES(108, 10,'H', '8', '8', 'HH', 'H8 8HH', 07443897221);
INSERT INTO OFFICE VALUES(109, 2, 'I', '9', '9', 'II', 'I9 9II', 07336788213);
INSERT INTO OFFICE VALUES(110, 4, 'J', '1', '2', 'JG', 'J1 2JG', 07654372185);
INSERT INTO OFFICE VALUES(111, 6, 'A', '2', '5', 'SD', 'A1 5SD', 07654372185);
INSERT INTO OFFICE VALUES(112, 8, 'C', '4', '2', 'UJ', 'C4 2UJ', 07654372185);
INSERT INTO OFFICE VALUES(113, 9, 'E', '3', '6', 'TG', 'E3 6TG', 07654372185);
INSERT INTO OFFICE VALUES(114, 10,'H', '5', '3', 'EF', 'H5 3EF', 07654372185);

INSERT INTO PROPERTY VALUES(201, 'E', '1', '2', 'BT', 'Manchester', 'E1 2BT', 450000, 'house', 4, '4BHK HOUSE WITH LIGHT');
INSERT INTO PROPERTY VALUES(202, 'A', '3', '6', 'QX', 'Birmingham', 'A3 6QX', 350000, 'flat', 3, '3BHK FLAT WITH 2 LIVING ROOMS');
INSERT INTO PROPERTY VALUES(203, 'D', '8', '9', 'YZ', 'London',     'D8 9YZ', 450000, 'house', 4, '4BHK HOUSE WITH BIG KITCHEN');
INSERT INTO PROPERTY VALUES(204, 'B', '7', '8', 'AD', 'Leicester',  'B7 8AD', 500000, 'house', 3, '3BHK HOUSE WITH TWO-CAR DRIVEWAY');
INSERT INTO PROPERTY VALUES(205, 'F', '3', '5', 'CR', 'Kent',       'F3 5CR', 400000, 'house', 2, '2BHK HOUSE WITH 2 LIVING ROOMS');
INSERT INTO PROPERTY VALUES(206, 'C', '9', '2', 'AF', 'Bath',       'C9 2AF', 400000, 'flat', 3, '3BHK FLAT FULLY FURNISHED');
INSERT INTO PROPERTY VALUES(207, 'E', '7', '6', 'QR', 'London',     'E7 6QR', 550000, 'house', 5, '5BHK HOUSE WITH OUTDOOR LIVING SPACE');
INSERT INTO PROPERTY VALUES(208, 'G', '5', '1', 'RB', 'Reading',    'G5 1RB', 500000, 'flat', 3, '3BHK HOUSE WITH BOX ROOM');
INSERT INTO PROPERTY VALUES(209, 'H', '3', '6', 'PJ', 'Liverpool',  'H3 6PJ', 500000, 'house', 6, '6BHK HOUSE WITH OUTDOOR FOUNTAIN');
INSERT INTO PROPERTY VALUES(210, 'J', '8', '5', 'RR', 'Edinburgh',  'J8 5RR', 600000, 'house', 8, '4BHK SMART HOUSE FULLY AUTOMATED');
INSERT INTO PROPERTY VALUES(211, 'H', '8', '6', 'RR', 'Nottingham', 'H8 6RR', 300000, 'house', 2, '2BHK HOUSE WITH OUTDOOR GARDEN');
INSERT INTO PROPERTY VALUES(212, 'E', '6', '5', 'AD', 'Leeds',      'E6 5AD', 450000, 'flat', 3, '3BHK FLAT WITH BALCONY');
INSERT INTO PROPERTY VALUES(213, 'D', '7', '4', 'RT', 'Derby',      'D7 4RT', 6000000, 'house', 8, '8BHK HOUSE WITH IN-BUILT GYM');
INSERT INTO PROPERTY VALUES(214, 'C', '4', '3', 'UI', 'Windsor',    'C4 3UI', 450000, 'flat', 3, '3BHK FLAT WITH PARKING INSIDE THE BUILDING');
INSERT INTO PROPERTY VALUES(215, 'B', '2', '2', 'IK', 'Portsmouth', 'B2 2IK', 750000, 'flat', 3, '3BHK FLAT WITH SEASIDE VIEW');
INSERT INTO PROPERTY VALUES(216, 'E', '1', '1', 'OL', 'Bristol',    'E1 1OL', 670000, 'house', 4, '4BHK HOUSE WITH MODULAR KITCHEN ');
INSERT INTO PROPERTY VALUES(217, 'J', '1', '5', 'EF', 'York',       'J1 5EF', 900000, 'house', 5, '5BHK LUXURY HOUSE SURROUNDED BY FRIENDLY WOODS');
INSERT INTO PROPERTY VALUES(218, 'I', '4', '4', 'VB', 'Oxford',     'I4 4VB', 500000, 'flat', 3, '3BHK FLAT WITH AMBIENT LIGHTING AND HOME-THEATER SYSTEM');
INSERT INTO PROPERTY VALUES(219, 'H', '5', '6', 'YH', 'Leicester',  'H5 6YH', 550000, 'house', 2, '2BHK SMART HOUSE WITH APPLE-HOMEKIT APPLIANCES');
INSERT INTO PROPERTY VALUES(220, 'G', '6', '1', 'WD', 'Coventry',   'G6 1WD', 240000, 'house', 1, '1BHK HOUSE FULLY FURNISHED');
INSERT INTO PROPERTY VALUES(221, 'G', '9', '7', 'NH', 'Manchester', 'G9 7NH', 700000, 'flat', 3, '3BHK SMART FLAT WITH JACUZZI');
INSERT INTO PROPERTY VALUES(222, 'E', '7', '8', 'HK', 'Derby',      'E7 8HK', 600000, 'flat', 4, '4BHK FLAT WITH LAKE-VIEW BALCONY');
INSERT INTO PROPERTY VALUES(223, 'A', '4', '9', 'NM', 'Sheffield',  'A4 9NM', 790000, 'house', 5, '5BHK HOUSE WITH OKAWOOD FURNITURE');
INSERT INTO PROPERTY VALUES(224, 'C', '5', '2', 'JO', 'Worcester',  'C5 2JO', 880000, 'flat', 3, '3BHK LUXURY FLAT WITH MODULAR KITCHEN, SMART LIVNG-ROOM');
INSERT INTO PROPERTY VALUES(225, 'E', '8', '3', 'QS', 'Swansea',    'E8 3QS', 9000000, 'house', 6, '6BHK SEA-FACING HOUSE WITH 3 OUTDOOR BALCONY');


INSERT INTO CUSTOMER VALUES(1201, 'Joseph', 07667894358);
INSERT INTO CUSTOMER VALUES(1202, 'Jack', 07889654562);
INSERT INTO CUSTOMER VALUES(1203, 'Jill', 07865643219);
INSERT INTO CUSTOMER VALUES(1204, 'Mikel', 07765459832);
INSERT INTO CUSTOMER VALUES(1205, 'David', 07876453275);
INSERT INTO CUSTOMER VALUES(1206, 'Samuel', 07655324980);
INSERT INTO CUSTOMER VALUES(1207, 'Joyce', 07453228968);
INSERT INTO CUSTOMER VALUES(1208, 'Charlie', 07654219874);
INSERT INTO CUSTOMER VALUES(1209, 'Alan', 07865544376);
INSERT INTO CUSTOMER VALUES(1210, 'Mary', 07123543378);


INSERT INTO FORSALE VALUES(211, 101);
INSERT INTO FORSALE VALUES(213, 106);
INSERT INTO FORSALE VALUES(216, 106);
INSERT INTO FORSALE VALUES(217, 105);
INSERT INTO FORSALE VALUES(211, 110);

INSERT INTO FORRENT VALUES(212,110);
INSERT INTO FORRENT VALUES(214,102);
INSERT INTO FORRENT VALUES(215,103);
INSERT INTO FORRENT VALUES(218,105);
INSERT INTO FORRENT VALUES(219,101);

INSERT INTO SOLD VALUES(201,102,1204);
INSERT INTO SOLD VALUES(204,102,1210);
INSERT INTO SOLD VALUES(202,103,1208);
INSERT INTO SOLD VALUES(203,108,1209);
INSERT INTO SOLD VALUES(205,107,1205);
INSERT INTO SOLD VALUES(209,107,1206);
INSERT INTO SOLD VALUES(206,104,1202);
INSERT INTO SOLD VALUES(210,106,1207);
INSERT INTO SOLD VALUES(208,109,1201);
INSERT INTO SOLD VALUES(207,109,1203);

/************************************************************************************************************************************************************/
/*QUERIES FOR PART 2 - BASIC*/

/*QUERY 1 - FUNC-AVG*/
/*The costliest property from the list*/
SELECT MAX(Price) FROM PROPERTY;

/*QUERY 2 - INNER-JOIN*/
/*Prints the postcode of offices with their respective agency*/
SELECT AGENCY.Id, AGENCY.AgencyName, OFFICE.PostCode AS OFFICE_POSTCODE FROM AGENCY INNER JOIN OFFICE ON AGENCY.Id = OFFICE.AgencyId ORDER BY AGENCY.Id; 
/*For some agencies, there are more than 1 office, hence it prints the agency more than once*/

/************************************************************************************************************************************************************/
/*QUERIES FOR PART 3 - MEDIUM*/

/*QUERY 1 - LEFT-JOIN*/
/*Displays the number of properties sold by a particular office*/
SELECT OFFICE.Id, COUNT(SOLD.PropertyId) AS NoOfPropertiesSold FROM OFFICE LEFT JOIN SOLD ON OFFICE.Id = SOLD.OfficeId GROUP BY OFFICE.Id;


/*QUERY 2 - SELF-JOIN*/
/*Lists the details of the properties which are in the same city*/
SELECT DISTINCT A.Id AS PROPERTY_1, A.PropertyType AS TYPE_1, B.Id AS PROPERTY_2, B.PropertyType AS TYPE_2, A.City AS CITY FROM PROPERTY A, PROPERTY B WHERE A.Id <> B.Id AND A.City = B.City AND A.Id < B.Id GROUP BY A.Id, B.Id;


/*QUERY 3 - RIGHT-JOIN*/
/*Lists all the properties SOLD per area*/
SELECT PROPERTY.Area, COUNT(PROPERTY.Id) AS No_Of_Properties FROM SOLD RIGHT JOIN PROPERTY ON PROPERTY.Id = SOLD.PropertyId WHERE SOLD.CustomerId IS NOT NULL GROUP BY PROPERTY.Area ORDER BY PROPERTY.Area;
/*If the no of properties is 0, then it doesn't print that Area*/

/************************************************************************************************************************************************************/
/*QUERIES FOR PART 4 - ADVANCED*/

/*QUERY 1 - AGGREGATE FUNC - GROUP BY, HAVING*/
/*Prints the average price of properties in a district IF that value is greater than the average price of all the properties sold*/
SELECT District, AVG(Price) FROM PROPERTY GROUP BY District HAVING AVG(Price) > (SELECT AVG(PROPERTY.Price) FROM SOLD LEFT JOIN PROPERTY ON SOLD.PropertyId = PROPERTY.Id) ORDER BY District;

/*QUERY 2 - NESTED*/
/*3rd Highest Name of Agency, ALPHABETICALLY*/
SELECT Id, AgencyName, PhoneNumber FROM AGENCY WHERE AgencyName IN (SELECT MAX(A1.AgencyName) FROM AGENCY A1 WHERE EXISTS (SELECT NULL FROM AGENCY A2 WHERE A2.AgencyName >= A1.AgencyName HAVING COUNT(AgencyName) = 3));

/*QUERY 3 - SET-BASED CONDITION - UNION*/
/*Lists all the properties that are on hold, that is, properties that are neither for sale, nor for rent nor sold*/

/*Created a view 'OnHold' of the union of properties from FORRENT, FORSALE, SOLD*/
/*UNION is the set-based condition*/
CREATE VIEW OnHold AS
SELECT PROPERTY.Id, PROPERTY.PostCode, PROPERTY.PropertyDesc FROM FORSALE INNER JOIN PROPERTY ON FORSALE.PropertyId = PROPERTY.Id 
UNION 
SELECT PROPERTY.Id, PROPERTY.PostCode, PROPERTY.PropertyDesc FROM FORRENT INNER JOIN PROPERTY ON FORRENT.PropertyId = PROPERTY.Id 
UNION
SELECT PROPERTY.Id, PROPERTY.PostCode, PROPERTY.PropertyDesc FROM SOLD INNER JOIN PROPERTY ON SOLD.PropertyId = PROPERTY.Id;

/*The view is used to remove the properties that are for sale, for rent or sold from the list of all properties to get properties OnHold*/
/*This is done using a let-join*/
SELECT PROPERTY.Id, PROPERTY.PostCode, PROPERTY.PropertyDesc FROM PROPERTY LEFT JOIN OnHold ON PROPERTY.Id = OnHold.Id WHERE OnHold.Id IS NULL;