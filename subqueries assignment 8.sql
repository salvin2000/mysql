create database Country9;
use Country9;
CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(50) NOT NULL, Population BIGINT NOT NULL, Area FLOAT NOT NULL );
INSERT INTO Country VALUES (1, 'India', 1407563842, 3287263);
INSERT INTO Country VALUES (2, 'USA', 332915073, 9833520);
INSERT INTO Country VALUES (3, 'UK', 67545757, 243610);
INSERT INTO Country VALUES (4, 'Japan', 125836021, 377975);
INSERT INTO Country VALUES (5, 'Russia', 143912676, 17098246);
INSERT INTO Country VALUES (6, 'China', 1444216107, 9596961);
select * from Country;





CREATE TABLE Persons (Id INT PRIMARY KEY,Fname VARCHAR(50) NOT NULL,Lname VARCHAR(50) NOT NULL,Population BIGINT NOT NULL,Rating FLOAT NOT NULL,Country_Id INT,Country_name VARCHAR(50));
INSERT INTO Persons VALUES (101, 'Ravi', 'Kumar', 1407563842, 9.1, 1, 'India');
INSERT INTO Persons VALUES (102, 'Emma', 'Smith', 332915073, 5.3, 2, 'USA');
INSERT INTO Persons VALUES (103, 'Oliver', 'Brown', 67545757, 8.2, 3, 'UK');
INSERT INTO Persons VALUES (104, 'Takashi', 'Kobayashi', 125836021, 6.0, 4,'Japan');
INSERT INTO Persons VALUES (105, 'Ivan', 'Petrov', 143912676, 8.3, 5, 'Russia');
INSERT INTO Persons VALUES (106, 'Li', 'Wei', 1444216107, 4.7, 6, 'China');
INSERT INTO Persons VALUES (107, 'Priya', 'Nair', 1407563842, 7.5, 1, 'India');
INSERT INTO Persons VALUES (108, 'Michael', 'Johnson', 332915073, 6.8, 2, 'USA');
INSERT INTO Persons VALUES (109, 'Henry', 'Clark', 67545757, 7.1, 3, 'UK');
INSERT INTO Persons VALUES (110, 'Yuki', 'Tanaka', 125836021, 8.0, 4, 'Japan');
select * from Persons;

select country_name,(select count(*) from persons where country_id in (select id from country where country_name =c.country_name)) as person_count from country c;
select country_name,(select count(*) from persons where country_id in (select id from country where country_name =c.country_name )) as person_count from country c order by person_count desc;
select country_name, (select avg(rating) from persons where persons.country_id = c.id) as avg_rating from country c where (select avg(rating) from persons where persons.country_id = c.id) > 3.0;
select country_name, (select avg(rating) from persons where country_id = c.id) as average_rating from country c where id in (select country_id from persons group by country_id having avg(rating) >= (select avg(rating) from persons where country_id = 2));
select country_name,population from country where population >(select avg(population) from country) ;

create database product;
use product;
create table customer(Customer_Id int primary key, First_name varchar(20),Last_name varchar(30), Email varchar(50), Phone_no char(10),Address varchar(20),City varchar(20), State varchar(20), Zip_code char(6), Country varchar(20));
insert into customer values(100, 'John', 'Doe', 'john.doe@email.com', '9876543210', '123 Main St', 'Los Angeles', 'California', '900018', 'USA');
insert into customer values(101, 'Emma', 'Smith', 'emma.smith@email.com', '8765432109', '456 Oak St', 'London', 'England', '522631', 'UK');
insert into customer values(103, 'Liam', 'Brown', 'liam.brown@email.com', '7654321098', '789 Pine St', 'Toronto', 'Ontario', '765435', 'Canada');
insert into customer values(104, 'Sophia', 'cheriyan', 'sophia.muller@email.com', '6543210987', 'thonnipuzha', 'kollam', 'kerala', '101415', 'India');
insert into customer values(105, 'Noah', 'Garcia', 'noah.garcia@email.com', '5432109876', '987 Birch St', 'Madrid', 'Madrid', '280011', 'Spain');
insert into customer values(106, 'Olivia', 'Wang', 'olivia.wang@email.com', '4321098765', '741 Cedar St', 'Beijing', 'Beijing', '100000', 'China');
insert into customer values(107, 'James', 'Kumar', 'james.kumar@email.com', '3210987654', '852 Gandhi nagar St', 'New Delhi', 'Delhi', '110001', 'India');
insert into customer values(108, 'Isabella', 'Ivanov', 'isabella.ivanov@email.com', '2109876543', '963 Walnut St', 'Moscow', 'Moscow', '101000', 'Russia');
insert into customer values(109, 'William', 'Tanaka', 'william.tanaka@email.com', '1098765432', '159 Redwood St', 'Tokyo', 'Tokyo', '100001', 'Japan');
insert into customer values(110, 'Mia', 'Lopez', 'mia.lopez@email.com', '0987654321', '357 Palm St', 'Houston', 'washington dc', '240010', 'USA');
insert into customer values(111, 'Aarav', 'Sharma', 'aarav.sharma@email.com', '9871234560', '12 MG Road', 'Mumbai', 'Maharashtra', '400001', 'India');

insert into customer values(111, 'Aarav', 'Sharma', 'aarav.sharma@email.com', '9871234560', '12 MG Road', 'Mumbai', 'Maharashtra', '400001', 'India');
insert into customer values(112, 'Riya', 'Patel', 'riya.patel@email.com', '8762345671', '45 Link Road', 'Pune', 'Maharashtra', '411001', 'India');
insert into customer values(113, 'Vihaan', 'Malhotra', 'vihaan.malhotra@email.com', '7653456782', '23 Elm St', 'Nagpur', 'Maharashtra', '440001', 'India');
insert into customer values(114, 'Ananya', 'Iyer', 'ananya.iyer@email.com', '6544567893', '89 Maple St', 'Nashik', 'Maharashtra', '422001', 'India');
insert into customer values(115, 'Kabir', 'Joshi', 'kabir.joshi@email.com', '5435678904', '34 Cedar St', 'Aurangabad', 'Maharashtra', '431001', 'India');
insert into customer values(116, 'Mira', 'Kapoor', 'mira.kapoor@email.com', '4326789015', '67 Birch St', 'Thane', 'Maharashtra', '400601', 'India');
insert into customer values(117, 'Lena', 'Müller', 'lena.muller@email.com', '3217890126', '12 Palm St', 'Munich', 'Bavaria', '801101', 'Germany');
insert into customer values(118, 'Jonas', 'Schmidt', 'jonas.schmidt@email.com', '2108901237', '34 Oak St', 'Nuremberg', 'Bavaria', '802102', 'Germany');
insert into customer values(119, 'Hannah', 'Fischer', 'hannah.fischer@email.com', '1099012348', '56 Pine St', 'Augsburg', 'Bavaria', '803103', 'Germany');
insert into customer values(120, 'Finn', 'Wagner', 'finn.wagner@email.com', '0980123459', '78 Redwood St', 'Regensburg', 'Bavaria', '804104', 'Germany');
insert into customer values(121, 'Sophie', 'Becker', 'sophie.becker@email.com', '9871234561', '90 Spruce St', 'Würzburg', 'Bavaria', '805105', 'Germany');
insert into customer values(122, 'Aria', 'Smith', 'aria.smith@email.com', '8762345672', '12 King St', 'London', 'England', '101201', 'UK');
insert into customer values(123, 'Noah', 'Brown', 'noah.brown@email.com', '7653456783', '34 Queen St', 'Manchester', 'England', '102202', 'UK');
insert into customer values(124, 'Emma', 'Wilson', 'emma.wilson@email.com', '6544567894', '56 Elm St', 'Edinburgh', 'Scotland', '103203', 'UK');
insert into customer values(125, 'Lucas', 'Anderson', 'lucas.anderson@email.com', '5435678905', '78 River St', 'Dublin', 'Leinster', '104204', 'Ireland');
insert into customer values(126, 'Mila', 'Thompson', 'mila.thompson@email.com', '4326789016', '90 Lake St', 'Toronto', 'Ontario', '105205', 'Canada');
insert into customer values(127, 'Benjamin', 'Harris', 'benjamin.harris@email.com', '3217890127', '23 Mountain St', 'Vancouver', 'British Columbia', '106206', 'Canada');
insert into customer values(128, 'Ella', 'Martinez', 'ella.martinez@email.com', '2108901238', '45 Sunset Blvd', 'Madrid', 'Madrid', '107207', 'Spain');
insert into customer values(129, 'Leo', 'Garcia', 'leo.garcia@email.com', '1099012349', '67 Sunrise Blvd', 'Barcelona', 'Catalonia', '108208', 'Spain');
insert into customer values(130, 'Isabella', 'Lopez', 'isabella.lopez@email.com', '0980123460', '89 Harbor Rd', 'Mexico City', 'CDMX', '109209', 'Mexico');
insert into customer values(131, 'Mateo', 'Perez', 'mateo.perez@email.com', '9871234562', '12 Ocean Rd', 'Guadalajara', 'Jalisco', '110210', 'Mexico');
insert into customer values(132, 'Sofia', 'Gonzalez', 'sofia.gonzalez@email.com', '8762345673', '34 Park Ave', 'Buenos Aires', 'Buenos Aires', '111211', 'Argentina');
insert into customer values(133, 'Liam', 'Silva', 'liam.silva@email.com', '7653456784', '56 Broadway', 'São Paulo', 'São Paulo', '112212', 'Brazil');
insert into customer values(134, 'Gabriel', 'Ferreira', 'gabriel.ferreira@email.com', '6544567895', '78 Wall St', 'Rio de Janeiro', 'Rio de Janeiro', '113213', 'Brazil');
insert into customer values(135, 'Chloe', 'Dubois', 'chloe.dubois@email.com', '5435678906', '90 Maple Ave', 'Paris', 'Île-de-France', '114214', 'France');
insert into customer values(136, 'Louis', 'Lefevre', 'louis.lefevre@email.com', '4326789017', '12 Birch St', 'Lyon', 'Auvergne-Rhône-Alpes', '115215', 'France');
insert into customer values(137, 'Alice', 'Moreau', 'alice.moreau@email.com', '3217890128', '34 Oak Ave', 'Marseille', 'Provence-Alpes-Côte d’Azur', '116216', 'France');
insert into customer values(138, 'Yusuf', 'Ali', 'yusuf.ali@email.com', '2108901239', '56 Palm Ave', 'Dubai', 'Dubai', '117217', 'UAE');
insert into customer values(139, 'Amara', 'Ogun', 'amara.ogun@email.com', '1099012350', '78 Cedar Ave', 'Lagos', 'Lagos', '118218', 'Nigeria');
insert into customer values(140, 'Fatima', 'Mohammed', 'fatima.mohammed@email.com', '0980123461', '90 Redwood Ave', 'Cairo', 'Cairo', '119219', 'Egypt');


select * from customer;
drop table customer;

create view customer_info as select first_name,Last_name,Email from customer;
select * from customer_info;

create view us_customers as select first_name,last_name,Email,phone_no,city from customer where country='usa';
select * from us_customers;

create view Customer_details as select concat(first_name," ",Last_name) as fullname, Email,phone_no,state from customer;
select * from Customer_details;
update Customer_details set phone_no='1230912384' where state='California';

select state,customer_count from (select state, count(*) as customer_count from customer group by state) as state_count where customer_count>=5;

create view cus_state as select state,count(*) as count from customer_details group by state;
select * from cus_state;

create view cus_sort as select * from customer_details order by state asc;
select * from cus_sort;

