CREATE DATABASE travel_booking_system;
USE travel_booking_system;

-- Airlines
CREATE TABLE airlines (
    airline_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    airline_code VARCHAR(10) NOT NULL UNIQUE,
    airline_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

INSERT INTO airlines (airline_code, airline_name, country) VALUES
('AI', 'Air India', 'India'),
('6E', 'IndiGo', 'India'),
('UK', 'Vistara', 'India'),
('SG', 'SpiceJet', 'India'),
('EK', 'Emirates', 'UAE'),
('QR', 'Qatar Airways', 'Qatar'),
('SQ', 'Singapore Airlines', 'Singapore'),
('LH', 'Lufthansa', 'Germany'),
('BA', 'British Airways', 'UK'),
('AF', 'Air France', 'France'),
('AA', 'American Airlines', 'USA'),
('DL', 'Delta Airlines', 'USA'),
('UA', 'United Airlines', 'USA'),
('CX', 'Cathay Pacific', 'Hong Kong'),
('JL', 'Japan Airlines', 'Japan'),
('NH', 'All Nippon Airways', 'Japan'),
('EY', 'Etihad Airways', 'UAE'),
('TK', 'Turkish Airlines', 'Turkey'),
('QF', 'Qantas', 'Australia'),
('KL', 'KLM', 'Netherlands');

-- Airports
CREATE TABLE airports (
    airport_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    airport_code CHAR(3) NOT NULL UNIQUE,
    airport_name VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

INSERT INTO airports (airport_code, airport_name, city, country) VALUES
('DEL', 'Indira Gandhi International Airport', 'New Delhi', 'India'),
('BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai', 'India'),
('BLR', 'Kempegowda International Airport', 'Bengaluru', 'India'),
('MAA', 'Chennai International Airport', 'Chennai', 'India'),
('HYD', 'Rajiv Gandhi International Airport', 'Hyderabad', 'India'),
('DXB', 'Dubai International Airport', 'Dubai', 'UAE'),
('DOH', 'Hamad International Airport', 'Doha', 'Qatar'),
('SIN', 'Changi Airport', 'Singapore', 'Singapore'),
('LHR', 'Heathrow Airport', 'London', 'UK'),
('CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
('FRA', 'Frankfurt Airport', 'Frankfurt', 'Germany'),
('JFK', 'John F Kennedy International Airport', 'New York', 'USA'),
('LAX', 'Los Angeles International Airport', 'Los Angeles', 'USA'),
('HKG', 'Hong Kong International Airport', 'Hong Kong', 'China'),
('NRT', 'Narita International Airport', 'Tokyo', 'Japan'),
('SYD', 'Sydney Kingsford Smith Airport', 'Sydney', 'Australia'),
('AMS', 'Schiphol Airport', 'Amsterdam', 'Netherlands'),
('IST', 'Istanbul Airport', 'Istanbul', 'Turkey'),
('YYZ', 'Toronto Pearson Airport', 'Toronto', 'Canada'),
('DyB', 'Dubai International Airport T2', 'Dubai', 'UAE');

-- Booking Status
CREATE TABLE booking_status (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(30) NOT NULL UNIQUE
);

INSERT INTO booking_status (status_name) VALUES
('PENDING'),
('CONFIRMED'),
('CANCELLED'),
('COMPLETED');

-- CUSTOMER DOMAIN
-- Customers
CREATE TABLE customers (
    customer_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE
);

INSERT INTO customers (email, phone, password_hash, is_active) VALUES
('arjun.mehta@gmail.com','9000000001','hash01',1),
('rohit.sharma@gmail.com','9000000002','hash02',1),
('neha.verma@gmail.com','9000000003','hash03',1),
('priya.singh@gmail.com','9000000004','hash04',1),
('amit.kumar@gmail.com','9000000005','hash05',1),
('rahul.jain@gmail.com','9000000006','hash06',1),
('sneha.patel@gmail.com','9000000007','hash07',1),
('vikas.malhotra@gmail.com','9000000008','hash08',1),
('ananya.iyer@gmail.com','9000000009','hash09',1),
('deepak.rao@gmail.com','9000000010','hash10',1),

('john.smith@gmail.com','9000000011','hash11',1),
('emma.watson@gmail.com','9000000012','hash12',1),
('li.wei@gmail.com','9000000013','hash13',1),
('mohammed.ali@gmail.com','9000000014','hash14',1),
('sophia.brown@gmail.com','9000000015','hash15',1),
('karan.khanna@gmail.com','9000000016','hash16',1),
('pooja.nair@gmail.com','9000000017','hash17',1),
('manish.gupta@gmail.com','9000000018','hash18',1),
('ruchi.sharma@gmail.com','9000000019','hash19',1),
('sanjay.verma@gmail.com','9000000020','hash20',1),

('alex.miller@gmail.com','9000000021','hash21',1),
('olivia.jones@gmail.com','9000000022','hash22',1),
('daniel.wilson@gmail.com','9000000023','hash23',1),
('mia.taylor@gmail.com','9000000024','hash24',1),
('noah.anderson@gmail.com','9000000025','hash25',1),
('akash.singh@gmail.com','9000000026','hash26',1),
('nidhi.agarwal@gmail.com','9000000027','hash27',1),
('harsh.vardhan@gmail.com','9000000028','hash28',1),
('megha.joshi@gmail.com','9000000029','hash29',1),
('tarun.bansal@gmail.com','9000000030','hash30',1),

('lucas.martin@gmail.com','9000000031','hash31',1),
('isabella.moore@gmail.com','9000000032','hash32',1),
('ethan.thomas@gmail.com','9000000033','hash33',1),
('ava.jackson@gmail.com','9000000034','hash34',1),
('logan.white@gmail.com','9000000035','hash35',1),
('ramesh.patel@gmail.com','9000000036','hash36',1),
('kavita.mishra@gmail.com','9000000037','hash37',1),
('pankaj.singhal@gmail.com','9000000038','hash38',1),
('sonal.chopra@gmail.com','9000000039','hash39',1),
('alok.tiwari@gmail.com','9000000040','hash40',1),

('henry.clark@gmail.com','9000000041','hash41',1),
('amelia.hall@gmail.com','9000000042','hash42',1),
('benjamin.lewis@gmail.com','9000000043','hash43',1),
('charlotte.walker@gmail.com','9000000044','hash44',1),
('sebastian.young@gmail.com','9000000045','hash45',1),
('rahul.sen@gmail.com','9000000046','hash46',1),
('shruti.kapoor@gmail.com','9000000047','hash47',1),
('aditya.saxena@gmail.com','9000000048','hash48',1),
('kanika.goyal@gmail.com','9000000049','hash49',1),
('vikram.bedi@gmail.com','9000000050','hash50',1);

-- Customer Profiles
CREATE TABLE customer_profiles (
    customer_id BIGINT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender ENUM('MALE','FEMALE','OTHER'),
    nationality VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customer_profiles
(customer_id, first_name, last_name, date_of_birth, gender, nationality) VALUES
(1,'Arjun','Mehta','1990-05-14','MALE','Indian'),
(2,'Rohit','Sharma','1988-11-21','MALE','Indian'),
(3,'Neha','Verma','1992-03-10','FEMALE','Indian'),
(4,'Priya','Singh','1994-08-19','FEMALE','Indian'),
(5,'Amit','Kumar','1987-01-25','MALE','Indian'),
(6,'Rahul','Jain','1991-06-30','MALE','Indian'),
(7,'Sneha','Patel','1993-12-05','FEMALE','Indian'),
(8,'Vikas','Malhotra','1989-09-17','MALE','Indian'),
(9,'Ananya','Iyer','1995-04-02','FEMALE','Indian'),
(10,'Deepak','Rao','1986-02-14','MALE','Indian'),

(11,'John','Smith','1985-07-08','MALE','American'),
(12,'Emma','Watson','1990-04-15','FEMALE','British'),
(13,'Li','Wei','1988-10-11','MALE','Chinese'),
(14,'Mohammed','Ali','1984-01-03','MALE','Emirati'),
(15,'Sophia','Brown','1992-06-27','FEMALE','Canadian'),
(16,'Karan','Khanna','1991-03-18','MALE','Indian'),
(17,'Pooja','Nair','1994-07-09','FEMALE','Indian'),
(18,'Manish','Gupta','1989-11-29','MALE','Indian'),
(19,'Ruchi','Sharma','1993-02-06','FEMALE','Indian'),
(20,'Sanjay','Verma','1982-08-13','MALE','Indian'),

(21,'Alex','Miller','1987-09-22','MALE','American'),
(22,'Olivia','Jones','1991-12-01','FEMALE','American'),
(23,'Daniel','Wilson','1988-05-19','MALE','American'),
(24,'Mia','Taylor','1994-03-25','FEMALE','American'),
(25,'Noah','Anderson','1990-10-07','MALE','American'),
(26,'Akash','Singh','1992-01-14','MALE','Indian'),
(27,'Nidhi','Agarwal','1995-06-05','FEMALE','Indian'),
(28,'Harsh','Vardhan','1986-04-18','MALE','Indian'),
(29,'Megha','Joshi','1993-09-09','FEMALE','Indian'),
(30,'Tarun','Bansal','1988-12-20','MALE','Indian'),

(31,'Lucas','Martin','1989-03-03','MALE','French'),
(32,'Isabella','Moore','1992-07-14','FEMALE','British'),
(33,'Ethan','Thomas','1990-05-28','MALE','American'),
(34,'Ava','Jackson','1995-08-31','FEMALE','American'),
(35,'Logan','White','1987-11-11','MALE','American'),
(36,'Ramesh','Patel','1983-01-09','MALE','Indian'),
(37,'Kavita','Mishra','1991-06-16','FEMALE','Indian'),
(38,'Pankaj','Singhal','1986-02-24','MALE','Indian'),
(39,'Sonal','Chopra','1994-10-05','FEMALE','Indian'),
(40,'Alok','Tiwari','1985-09-27','MALE','Indian'),

(41,'Henry','Clark','1988-12-19','MALE','British'),
(42,'Amelia','Hall','1993-04-22','FEMALE','British'),
(43,'Benjamin','Lewis','1986-06-30','MALE','British'),
(44,'Charlotte','Walker','1992-02-17','FEMALE','British'),
(45,'Sebastian','Young','1989-08-08','MALE','British'),
(46,'Rahul','Sen','1991-05-05','MALE','Indian'),
(47,'Shruti','Kapoor','1994-11-14','FEMALE','Indian'),
(48,'Aditya','Saxena','1987-07-26','MALE','Indian'),
(49,'Kanika','Goyal','1993-03-08','FEMALE','Indian'),
(50,'Vikram','Bedi','1984-12-02','MALE','Indian');

-- FLIGHT DOMAIN
-- Flights
CREATE TABLE flights (
    flight_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    airline_id BIGINT NOT NULL,
    flight_number VARCHAR(20) NOT NULL,
    source_airport_id BIGINT NOT NULL,
    destination_airport_id BIGINT NOT NULL,
    departure_time DATETIME NOT NULL,
    arrival_time DATETIME NOT NULL,
    base_price DECIMAL(10,2) NOT NULL CHECK (base_price > 0),

    CONSTRAINT fk_flight_airline FOREIGN KEY (airline_id)
        REFERENCES airlines(airline_id),

    CONSTRAINT fk_flight_source FOREIGN KEY (source_airport_id)
        REFERENCES airports(airport_id),

    CONSTRAINT fk_flight_destination FOREIGN KEY (destination_airport_id)
        REFERENCES airports(airport_id),

    CONSTRAINT uq_flight UNIQUE (flight_number, departure_time)
);

INSERT INTO flights
(airline_id, flight_number, source_airport_id, destination_airport_id,
 departure_time, arrival_time, base_price) VALUES

(1,'AI101',1,2,'2025-01-10 06:00','2025-01-10 08:10',5200),
(2,'6E202',2,3,'2025-01-11 09:00','2025-01-11 10:45',4800),
(3,'UK303',3,4,'2025-01-12 14:00','2025-01-12 15:30',5100),
(4,'SG404',4,5,'2025-01-13 18:00','2025-01-13 19:20',4600),
(5,'EK501',6,9,'2025-01-14 02:00','2025-01-14 07:30',42000),

(6,'QR601',7,10,'2025-01-15 01:30','2025-01-15 07:10',39000),
(7,'SQ701',8,15,'2025-01-16 23:00','2025-01-17 06:30',45000),
(8,'LH801',11,9,'2025-01-17 10:00','2025-01-17 11:40',21000),
(9,'BA901',9,12,'2025-01-18 13:00','2025-01-18 21:30',52000),
(10,'AF1001',10,9,'2025-01-19 09:30','2025-01-19 10:45',18000),

(11,'AA1101',12,13,'2025-01-20 08:00','2025-01-20 11:10',16000),
(12,'DL1201',13,12,'2025-01-21 12:00','2025-01-21 19:30',16500),
(13,'UA1301',12,19,'2025-01-22 14:00','2025-01-22 18:30',22000),
(14,'CX1401',14,8,'2025-01-23 16:00','2025-01-23 20:00',28000),
(15,'JL1501',15,20,'2025-01-24 09:00','2025-01-24 12:00',26000),

(16,'NH1601',15,8,'2025-01-25 22:00','2025-01-26 04:00',29500),
(17,'EY1701',6,1,'2025-01-26 21:00','2025-01-27 03:30',36000),
(18,'TK1801',18,11,'2025-01-27 07:00','2025-01-27 09:30',24000),
(19,'QF1901',16,15,'2025-01-28 11:00','2025-01-28 19:00',48000),
(20,'KL2001',17,9,'2025-01-29 08:00','2025-01-29 09:30',20000),

(2,'6E221',1,3,'2025-02-01 07:00','2025-02-01 09:40',5200),
(3,'UK311',2,4,'2025-02-02 10:00','2025-02-02 12:10',5600),
(4,'SG415',3,5,'2025-02-03 18:30','2025-02-03 20:00',4900),
(1,'AI141',5,1,'2025-02-04 06:15','2025-02-04 08:30',5100),
(5,'EK541',6,10,'2025-02-05 02:20','2025-02-05 08:10',43000),

(6,'QR671',7,9,'2025-02-06 01:10','2025-02-06 06:50',41000),
(7,'SQ721',8,6,'2025-02-07 23:40','2025-02-08 03:50',38000),
(8,'LH831',11,17,'2025-02-08 09:30','2025-02-08 11:00',19000),
(9,'BA921',9,17,'2025-02-09 14:00','2025-02-09 15:20',17000),
(10,'AF1031',10,11,'2025-02-10 08:45','2025-02-10 10:15',16500),

(11,'AA1141',12,19,'2025-02-11 15:00','2025-02-11 19:20',23000),
(12,'DL1241',13,12,'2025-02-12 11:30','2025-02-12 19:00',17000),
(13,'UA1341',12,9,'2025-02-13 21:00','2025-02-14 08:00',54000),
(14,'CX1441',14,8,'2025-02-14 16:40','2025-02-14 20:10',27500),
(15,'JL1541',15,14,'2025-02-15 10:10','2025-02-15 14:20',25000),

(16,'NH1641',15,12,'2025-02-16 22:30','2025-02-17 10:00',52000),
(17,'EY1741',6,2,'2025-02-17 20:45','2025-02-18 03:40',35000),
(18,'TK1841',18,10,'2025-02-18 06:50','2025-02-18 09:50',26000),
(19,'QF1941',16,15,'2025-02-19 09:00','2025-02-19 18:40',49000),
(20,'KL2041',17,11,'2025-02-20 07:20','2025-02-20 08:50',18500),

(2,'6E261',3,1,'2025-02-21 19:00','2025-02-21 21:40',5300),
(3,'UK351',4,2,'2025-02-22 06:30','2025-02-22 08:40',5500),
(4,'SG451',5,3,'2025-02-23 20:15','2025-02-23 22:00',4800),
(1,'AI181',2,5,'2025-02-24 09:00','2025-02-24 11:10',5200),
(5,'EK581',6,12,'2025-02-25 03:00','2025-02-25 14:30',61000),

(6,'QR691',7,11,'2025-02-26 01:00','2025-02-26 06:30',39000),
(7,'SQ761',8,9,'2025-02-27 00:10','2025-02-27 07:20',42000),
(8,'LH861',11,18,'2025-02-28 12:30','2025-02-28 16:00',24000),
(9,'BA961',9,10,'2025-03-01 15:10','2025-03-01 16:30',17500),
(10,'AF1081',10,17,'2025-03-02 09:00','2025-03-02 10:30',18000),

(11,'AA1181',12,13,'2025-03-03 07:00','2025-03-03 10:20',15500),
(12,'DL1281',13,19,'2025-03-04 13:40','2025-03-04 21:30',26000),
(13,'UA1381',19,12,'2025-03-05 08:00','2025-03-05 12:30',24500),
(14,'CX1481',14,6,'2025-03-06 18:30','2025-03-06 23:10',30000),
(15,'JL1581',15,8,'2025-03-07 09:50','2025-03-07 15:30',27000),

(16,'NH1681',15,13,'2025-03-08 23:40','2025-03-09 13:20',54000),
(17,'EY1781',6,4,'2025-03-09 21:30','2025-03-10 04:30',34000),
(18,'TK1881',18,9,'2025-03-10 07:10','2025-03-10 10:00',25500),
(19,'QF1981',16,12,'2025-03-11 11:20','2025-03-11 22:30',56000),
(20,'KL2081',17,10,'2025-03-12 08:00','2025-03-12 09:40',19000);

-- Flight Seats
CREATE TABLE flight_seats (
    seat_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    flight_id BIGINT NOT NULL,
    seat_number VARCHAR(5) NOT NULL,
    seat_class ENUM('ECONOMY','BUSINESS','FIRST') NOT NULL,
    is_available BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_seat_flight FOREIGN KEY (flight_id)
        REFERENCES flights(flight_id),

    CONSTRAINT uq_flight_seat UNIQUE (flight_id, seat_number)
);

INSERT INTO flight_seats
(flight_id, seat_number, seat_class, is_available) VALUES

-- Flight 1
(1,'1A','BUSINESS',1),
(1,'1B','BUSINESS',1),
(1,'12A','ECONOMY',1),
(1,'12B','ECONOMY',1),
(1,'12C','ECONOMY',1),

-- Flight 2
(2,'2A','BUSINESS',1),
(2,'14A','ECONOMY',1),
(2,'14B','ECONOMY',1),

-- Flight 3
(3,'3A','BUSINESS',1),
(3,'15A','ECONOMY',1),
(3,'15B','ECONOMY',1),

-- Flight 4
(4,'4A','BUSINESS',1),
(4,'16A','ECONOMY',1),
(4,'16B','ECONOMY',1),

-- Flight 21
(21,'1A','BUSINESS',1),(21,'1B','BUSINESS',1),
(21,'2A','BUSINESS',1),(21,'2B','BUSINESS',1),
(21,'10A','ECONOMY',1),(21,'10B','ECONOMY',1),
(21,'10C','ECONOMY',1),(21,'11A','ECONOMY',1),
(21,'11B','ECONOMY',1),(21,'11C','ECONOMY',1),
(21,'12A','ECONOMY',1),(21,'12B','ECONOMY',1),

-- Flight 22
(22,'1A','BUSINESS',1),(22,'1B','BUSINESS',1),
(22,'2A','BUSINESS',1),(22,'2B','BUSINESS',1),
(22,'10A','ECONOMY',1),(22,'10B','ECONOMY',1),
(22,'10C','ECONOMY',1),(22,'11A','ECONOMY',1),
(22,'11B','ECONOMY',1),(22,'11C','ECONOMY',1),
(22,'12A','ECONOMY',1),(22,'12B','ECONOMY',1),

-- Flight 23
(23,'1A','BUSINESS',1),(23,'1B','BUSINESS',1),
(23,'2A','BUSINESS',1),(23,'2B','BUSINESS',1),
(23,'10A','ECONOMY',1),(23,'10B','ECONOMY',1),
(23,'10C','ECONOMY',1),(23,'11A','ECONOMY',1),
(23,'11B','ECONOMY',1),(23,'11C','ECONOMY',1),
(23,'12A','ECONOMY',1),(23,'12B','ECONOMY',1),

-- Flight 24
(24,'1A','BUSINESS',1),(24,'1B','BUSINESS',1),
(24,'2A','BUSINESS',1),(24,'2B','BUSINESS',1),
(24,'10A','ECONOMY',1),(24,'10B','ECONOMY',1),
(24,'10C','ECONOMY',1),(24,'11A','ECONOMY',1),
(24,'11B','ECONOMY',1),(24,'11C','ECONOMY',1),
(24,'12A','ECONOMY',1),(24,'12B','ECONOMY',1);

-- HOTEL DOMAIN
-- Hotels
CREATE TABLE hotels (
    hotel_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    hotel_name VARCHAR(150) NOT NULL,
    city VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5)
);

INSERT INTO hotels (hotel_name, city, country, rating) VALUES
('Taj Palace','New Delhi','India',4.8),
('Oberoi','Mumbai','India',4.7),
('ITC Gardenia','Bengaluru','India',4.6),
('Leela Palace','Chennai','India',4.5),
('Novotel','Hyderabad','India',4.3),
('Atlantis','Dubai','UAE',4.9),
('Marina Bay Sands','Singapore','Singapore',5.0),
('Hilton','London','UK',4.4),
('Hyatt','Paris','France',4.3),
('Radisson Blu','Frankfurt','Germany',4.2),
('Sheraton','New York','USA',4.5),
('Marriott','Los Angeles','USA',4.4),
('Peninsula','Hong Kong','China',4.8),
('Imperial Hotel','Tokyo','Japan',4.7),
('Four Seasons','Sydney','Australia',4.6),
('NH Collection','Amsterdam','Netherlands',4.3),
('Ritz Carlton','Istanbul','Turkey',4.6),
('Fairmont','Toronto','Canada',4.4),
('Grand Hyatt','Dubai','UAE',4.7),
('Holiday Inn','Delhi','India',4.1);

-- Room Types
CREATE TABLE room_types (
    room_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255)
);

INSERT INTO room_types (type_name, description) VALUES
('SINGLE','Single bed room'),
('DOUBLE','Double bed room'),
('DELUXE','Deluxe luxury room'),
('SUITE','Premium suite'),
('FAMILY','Family size room');

-- Hotel Rooms
CREATE TABLE hotel_rooms (
    room_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    hotel_id BIGINT NOT NULL,
    room_type_id INT NOT NULL,
    room_number VARCHAR(10) NOT NULL,
    price_per_night DECIMAL(10,2) NOT NULL CHECK (price_per_night > 0),
    is_active BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_room_hotel FOREIGN KEY (hotel_id)
        REFERENCES hotels(hotel_id),

    CONSTRAINT fk_room_type FOREIGN KEY (room_type_id)
        REFERENCES room_types(room_type_id),

    CONSTRAINT uq_hotel_room UNIQUE (hotel_id, room_number)
);

INSERT INTO hotel_rooms
(hotel_id, room_type_id, room_number, price_per_night, is_active) VALUES

-- Hotel 1 (Taj Palace - Delhi)
(1,1,'101',6000,1),(1,2,'102',8500,1),(1,3,'103',12000,1),(1,4,'104',20000,1),(1,5,'105',15000,1),

-- Hotel 2 (Oberoi - Kolkata)
(2,1,'201',5000,1),(2,2,'202',7500,1),(2,3,'203',11000,1),(2,4,'204',18000,1),(2,5,'205',14000,1),

-- Hotel 3 (ITC Maurya - Delhi)
(3,1,'301',6500,1),(3,2,'302',9000,1),(3,3,'303',13000,1),(3,4,'304',21000,1),(3,5,'305',16000,1),

-- Hotel 4 (Leela - Bengaluru)
(4,1,'401',5500,1),(4,2,'402',8000,1),(4,3,'403',12500,1),(4,4,'404',19500,1),(4,5,'405',15000,1),

-- Hotel 5 (Trident - Mumbai)
(5,1,'501',7000,1),(5,2,'502',9500,1),(5,3,'503',13500,1),(5,4,'504',22000,1),(5,5,'505',17000,1),

-- Hotel 6 (Atlantis - Dubai)
(6,1,'601',12000,1),(6,2,'602',16000,1),(6,3,'603',22000,1),(6,4,'604',35000,1),(6,5,'605',28000,1),

-- Hotel 7 (Burj Al Arab - Dubai)
(7,1,'701',20000,1),(7,2,'702',28000,1),(7,3,'703',35000,1),(7,4,'704',60000,1),(7,5,'705',45000,1),

-- Hotel 8 (Marina Bay Sands - Singapore)
(8,1,'801',15000,1),(8,2,'802',20000,1),(8,3,'803',28000,1),(8,4,'804',45000,1),(8,5,'805',35000,1),

-- Hotel 9 (Ritz London)
(9,1,'901',18000,1),(9,2,'902',24000,1),(9,3,'903',32000,1),(9,4,'904',50000,1),(9,5,'905',38000,1),

-- Hotel 10 (Hilton Paris)
(10,1,'1001',14000,1),(10,2,'1002',19000,1),(10,3,'1003',26000,1),(10,4,'1004',42000,1),(10,5,'1005',32000,1),

-- Hotel 11 (Radisson Frankfurt)
(11,1,'1101',9000,1),(11,2,'1102',13000,1),(11,3,'1103',18000,1),(11,4,'1104',30000,1),(11,5,'1105',24000,1),

-- Hotel 12 (Sheraton NYC)
(12,1,'1201',16000,1),(12,2,'1202',22000,1),(12,3,'1203',30000,1),(12,4,'1204',48000,1),(12,5,'1205',36000,1),

-- Hotel 13 (Marriott LA)
(13,1,'1301',15000,1),(13,2,'1302',21000,1),(13,3,'1303',29000,1),(13,4,'1304',46000,1),(13,5,'1305',34000,1),

-- Hotel 14 (Peninsula HK)
(14,1,'1401',17000,1),(14,2,'1402',23000,1),(14,3,'1403',31000,1),(14,4,'1404',52000,1),(14,5,'1405',39000,1),

-- Hotel 15 (Imperial Tokyo)
(15,1,'1501',16000,1),(15,2,'1502',22000,1),(15,3,'1503',30000,1),(15,4,'1504',48000,1),(15,5,'1505',36000,1),

-- Hotel 16 (Four Seasons Sydney)
(16,1,'1601',15500,1),(16,2,'1602',21500,1),(16,3,'1603',29500,1),(16,4,'1604',47000,1),(16,5,'1605',35000,1),

-- Hotel 17 (NH Amsterdam)
(17,1,'1701',13000,1),(17,2,'1702',18000,1),(17,3,'1703',25000,1),(17,4,'1704',41000,1),(17,5,'1705',32000,1),

-- Hotel 18 (Ritz Istanbul)
(18,1,'1801',14000,1),(18,2,'1802',19000,1),(18,3,'1803',26000,1),(18,4,'1804',43000,1),(18,5,'1805',33000,1),

-- Hotel 19 (Fairmont Toronto)
(19,1,'1901',14500,1),(19,2,'1902',20000,1),(19,3,'1903',27000,1),(19,4,'1904',44000,1),(19,5,'1905',34000,1),

-- Hotel 20 (Hyatt Chennai)
(20,1,'2001',7000,1),(20,2,'2002',9500,1),(20,3,'2003',13500,1),(20,4,'2004',22000,1),(20,5,'2005',17000,1);


-- RESERVATION & BOOKING DOMAIN
-- Reservations
CREATE TABLE reservations (
    reservation_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    customer_id BIGINT NOT NULL,
    status_id INT NOT NULL,
    reservation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_res_customer FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_res_status FOREIGN KEY (status_id)
        REFERENCES booking_status(status_id)
);

INSERT INTO reservations (customer_id, status_id, reservation_date) VALUES
(1,2,'2025-01-01'),(2,2,'2025-01-02'),
(3,2,'2025-01-02'),(1,2,'2025-01-03'),
(5,2,'2025-01-03'),

(6,2,'2025-01-04'),(7,3,'2025-01-04'),
(8,2,'2025-01-05'),(9,2,'2025-01-05'),
(10,4,'2025-01-06'),

(11,2,'2025-01-06'),(12,1,'2025-01-07'),
(13,2,'2025-01-07'),(14,2,'2025-01-08'),
(15,3,'2025-01-08'),

(16,2,'2025-01-09'),(17,2,'2025-01-09'),
(18,1,'2025-01-10'),(19,2,'2025-01-10'),
(20,2,'2025-01-11'),

(21,2,'2025-01-11'),(22,4,'2025-01-12'),
(23,2,'2025-01-12'),(24,2,'2025-01-13'),
(25,1,'2025-01-13'),

(26,2,'2025-01-14'),(27,2,'2025-01-14'),
(28,3,'2025-01-15'),(29,2,'2025-01-15'),
(30,2,'2025-01-16'),

(31,2,'2025-01-16'),(32,1,'2025-01-17'),
(33,2,'2025-01-17'),(34,2,'2025-01-18'),
(35,4,'2025-01-18'),

(36,2,'2025-01-19'),(37,2,'2025-01-19'),
(38,1,'2025-01-20'),(39,2,'2025-01-20'),
(40,2,'2025-01-21'),

(41,2,'2025-01-21'),(42,4,'2025-01-22'),
(43,2,'2025-01-22'),(44,2,'2025-01-23'),
(45,1,'2025-01-23'),

(46,2,'2025-01-24'),(47,2,'2025-01-24'),
(48,3,'2025-01-25'),(49,2,'2025-01-25'),
(50,2,'2025-01-26');


-- Flight Bookings
CREATE TABLE flight_bookings (
    flight_booking_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reservation_id BIGINT NOT NULL,
    flight_id BIGINT NOT NULL,
    seat_id BIGINT NOT NULL,
    price DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_fb_reservation FOREIGN KEY (reservation_id)
        REFERENCES reservations(reservation_id),

    CONSTRAINT fk_fb_flight FOREIGN KEY (flight_id)
        REFERENCES flights(flight_id),

    CONSTRAINT fk_fb_seat FOREIGN KEY (seat_id)
        REFERENCES flight_seats(seat_id),

    CONSTRAINT uq_seat_booking UNIQUE (seat_id)
);

INSERT INTO flight_bookings
( reservation_id, flight_id, seat_id, price) VALUES

(1,1,1,7200),(2,2,6,6800),
(3,3,9,7100),(4,4,12,6500),
(5,5,15,45000),

(6,6,18,42000),(7,7,20,46000),
(8,8,24,22000),(9,9,27,54000),
(10,10,30,19000),

(11,11,33,17000),(12,12,36,17500),
(13,13,39,24000),(14,14,42,29000),
(15,15,45,27000),

(16,16,48,31000),(17,17,51,38000),
(18,18,54,26000),(19,19,57,50000),
(20,20,60,21000),

(21,21,61,5600),(22,22,4,6000),
(23,23,7,5200),(24,24,16,5400),
(25,25,22,44000),

(26,26,21,41000),(27,27,38,39000),
(28,28,43,20000),(29,29,56,18000),
(30,30,62,17500),

(31,31,3,23500),(32,32,8,18000),
(33,33,5,56000),(34,34,17,28000),
(35,35,29,26000),

(36,36,41,53000),(37,37,53,36000),
(38,38,35,27000),(39,39,31,51000),
(40,40,49,19500),

(41,41,10,5600),(42,42,13,5900),
(43,43,25,5100),(44,44,37,5500),
(45,45,46,62000),

(46,46,52,40000),(47,47,40,43000),
(48,48,26,24500),(49,49,34,18500),
(50,50,59,19000);

-- Hotel Bookings
CREATE TABLE hotel_bookings (
    hotel_booking_id BIGINT PRIMARY KEY,
    reservation_id BIGINT NOT NULL,
    room_id BIGINT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,

    CONSTRAINT fk_hb_reservation FOREIGN KEY (reservation_id)
        REFERENCES reservations(reservation_id),

    CONSTRAINT fk_hb_room FOREIGN KEY (room_id)
        REFERENCES hotel_rooms(room_id),

    CONSTRAINT chk_dates CHECK (check_out > check_in)
);

INSERT INTO hotel_bookings
(hotel_booking_id, reservation_id, room_id, check_in, check_out, price) VALUES

(1,1,1,'2025-01-10','2025-01-12',12000),
(2,2,6,'2025-01-11','2025-01-14',15000),
(3,3,11,'2025-01-12','2025-01-15',19500),
(4,4,16,'2025-01-13','2025-01-14',5500),
(5,5,21,'2025-01-14','2025-01-16',14000),

(6,6,26,'2025-01-15','2025-01-18',36000),
(7,7,31,'2025-01-16','2025-01-18',40000),
(8,8,36,'2025-01-17','2025-01-20',60000),
(9,9,41,'2025-01-18','2025-01-21',54000),
(10,10,46,'2025-01-19','2025-01-22',48000),

(11,11,51,'2025-01-20','2025-01-22',18000),
(12,12,56,'2025-01-21','2025-01-23',26000),
(13,13,61,'2025-01-22','2025-01-25',45000),
(14,14,66,'2025-01-23','2025-01-25',30000),
(15,15,71,'2025-01-24','2025-01-26',32000),

(16,16,76,'2025-01-25','2025-01-28',46500),
(17,17,81,'2025-01-26','2025-01-29',54000),
(18,18,86,'2025-01-27','2025-01-28',9000),
(19,19,91,'2025-01-28','2025-01-31',40500),
(20,20,96,'2025-01-29','2025-01-31',19000),

(21,21,2,'2025-02-01','2025-02-03',17000),
(22,22,7,'2025-02-02','2025-02-05',22500),
(23,23,12,'2025-02-03','2025-02-06',33000),
(24,24,17,'2025-02-04','2025-02-06',16000),
(25,25,22,'2025-02-05','2025-02-07',19000),

(26,26,27,'2025-02-06','2025-02-09',66000),
(27,27,32,'2025-02-07','2025-02-09',56000),
(28,28,37,'2025-02-08','2025-02-11',84000),
(29,29,42,'2025-02-09','2025-02-12',69000),
(30,30,47,'2025-02-10','2025-02-13',96000),

(31,31,52,'2025-02-11','2025-02-13',26000),
(32,32,57,'2025-02-12','2025-02-14',30000),
(33,33,62,'2025-02-13','2025-02-16',75000),
(34,34,67,'2025-02-14','2025-02-16',38000),
(35,35,72,'2025-02-15','2025-02-18',48000),

(36,36,77,'2025-02-16','2025-02-19',88500),
(37,37,82,'2025-02-17','2025-02-20',105000),
(38,38,87,'2025-02-18','2025-02-19',13000),
(39,39,92,'2025-02-19','2025-02-22',81000),
(40,40,97,'2025-02-20','2025-02-23',58500),

(41,41,3,'2025-02-21','2025-02-23',24000),
(42,42,8,'2025-02-22','2025-02-25',37500),
(43,43,13,'2025-02-23','2025-02-26',39000),
(44,44,18,'2025-02-24','2025-02-26',16000),
(45,45,23,'2025-02-25','2025-02-28',25500),

(46,46,28,'2025-02-26','2025-03-01',96000),
(47,47,33,'2025-02-27','2025-03-02',84000),
(48,48,38,'2025-02-28','2025-03-03',105000),
(49,49,43,'2025-03-01','2025-03-04',87000),
(50,50,48,'2025-03-02','2025-03-05',96000);

-- Payments
CREATE TABLE payments (
    payment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reservation_id BIGINT NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount > 0),
    payment_method ENUM('CARD','UPI','NET_BANKING','WALLET') NOT NULL,
    payment_status ENUM('SUCCESS','FAILED','PENDING') NOT NULL,
    payment_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_payment_res FOREIGN KEY (reservation_id)
        REFERENCES reservations(reservation_id)
);

INSERT INTO payments
(reservation_id, amount, payment_method, payment_status, payment_time)
VALUES
(1,19200,'CARD','SUCCESS','2025-01-01 10:10:00'),
(2,21800,'UPI','SUCCESS','2025-01-02 11:15:00'),
(3,26600,'CARD','SUCCESS','2025-01-02 12:20:00'),
(4,12000,'NET_BANKING','PENDING','2025-01-03 09:05:00'),
(5,59000,'CARD','SUCCESS','2025-01-03 14:45:00'),

(6,78000,'CARD','SUCCESS','2025-01-04 10:30:00'),
(7,86000,'UPI','FAILED','2025-01-04 11:40:00'),
(8,82000,'CARD','SUCCESS','2025-01-05 13:10:00'),
(9,108000,'CARD','SUCCESS','2025-01-05 15:20:00'),
(10,67000,'NET_BANKING','SUCCESS','2025-01-06 10:00:00'),

(11,35000,'UPI','SUCCESS','2025-01-06 12:00:00'),
(12,43500,'CARD','PENDING','2025-01-07 09:30:00'),
(13,69000,'CARD','SUCCESS','2025-01-07 11:45:00'),
(14,59000,'NET_BANKING','SUCCESS','2025-01-08 10:10:00'),
(15,59000,'UPI','FAILED','2025-01-08 16:25:00'),

(16,77500,'CARD','SUCCESS','2025-01-09 09:50:00'),
(17,92000,'CARD','SUCCESS','2025-01-09 13:40:00'),
(18,35000,'UPI','PENDING','2025-01-10 08:55:00'),
(19,90500,'NET_BANKING','SUCCESS','2025-01-10 14:15:00'),
(20,40000,'UPI','SUCCESS','2025-01-11 11:30:00'),

(21,22600,'UPI','SUCCESS','2025-01-11 12:10:00'),
(22,28500,'CARD','FAILED','2025-01-12 10:40:00'),
(23,38200,'CARD','SUCCESS','2025-01-12 15:20:00'),
(24,21400,'NET_BANKING','SUCCESS','2025-01-13 09:25:00'),
(25,63000,'CARD','PENDING','2025-01-13 17:00:00'),

(26,107000,'CARD','SUCCESS','2025-01-14 11:45:00'),
(27,95000,'UPI','SUCCESS','2025-01-14 14:10:00'),
(28,104000,'CARD','SUCCESS','2025-01-15 10:30:00'),
(29,105000,'NET_BANKING','SUCCESS','2025-01-15 15:55:00'),
(30,113500,'CARD','SUCCESS','2025-01-16 13:35:00'),

(31,49500,'UPI','SUCCESS','2025-01-16 14:40:00'),
(32,48000,'CARD','PENDING','2025-01-17 10:15:00'),
(33,131000,'CARD','SUCCESS','2025-01-17 16:10:00'),
(34,66000,'NET_BANKING','SUCCESS','2025-01-18 11:30:00'),
(35,74000,'UPI','FAILED','2025-01-18 18:00:00'),

(36,141500,'CARD','SUCCESS','2025-01-19 09:50:00'),
(37,141000,'CARD','SUCCESS','2025-01-19 14:20:00'),
(38,40000,'UPI','PENDING','2025-01-20 08:45:00'),
(39,132000,'NET_BANKING','SUCCESS','2025-01-20 16:10:00'),
(40,78000,'UPI','SUCCESS','2025-01-21 12:35:00'),

(41,29600,'UPI','SUCCESS','2025-01-21 14:10:00'),
(42,34500,'CARD','FAILED','2025-01-22 11:20:00'),
(43,44100,'CARD','SUCCESS','2025-01-22 15:30:00'),
(44,21500,'NET_BANKING','SUCCESS','2025-01-23 09:40:00'),
(45,87500,'CARD','PENDING','2025-01-23 17:25:00'),

(46,136000,'CARD','SUCCESS','2025-01-24 12:15:00'),
(47,127000,'UPI','SUCCESS','2025-01-24 15:50:00'),
(48,129500,'CARD','SUCCESS','2025-01-25 10:05:00'),
(49,105500,'NET_BANKING','SUCCESS','2025-01-25 16:40:00'),
(50,115000,'CARD','SUCCESS','2025-01-26 11:30:00');

-- Cancellation Logs
CREATE TABLE cancellation_logs (
    cancellation_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    reservation_id BIGINT NOT NULL,
    cancelled_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    reason VARCHAR(255),

    CONSTRAINT fk_cancel_res FOREIGN KEY (reservation_id)
        REFERENCES reservations(reservation_id)
);

INSERT INTO cancellation_logs
(reservation_id, cancelled_at, reason)
VALUES
(7,'2025-01-04 18:10:00','Payment failed'),
(10,'2025-01-06 18:30:00','Payment timeout'),
(15,'2025-01-08 20:10:00','Customer cancelled'),
(18,'2025-01-10 19:45:00','Payment pending too long'),
(22,'2025-01-12 18:20:00','Payment failed'),

(25,'2025-01-13 21:00:00','Customer changed plans'),
(32,'2025-01-17 19:10:00','Payment not completed'),
(35,'2025-01-18 22:15:00','Payment failed'),
(38,'2025-01-20 20:30:00','Auto cancellation – unpaid'),
(42,'2025-01-22 18:55:00','Payment failure');

-- 1. List all active customers
SELECT customer_id, email, phone
FROM customers
WHERE is_active = TRUE;

-- 2. Get customer profile details
SELECT c.customer_id,
       p.first_name,
       p.last_name,
       c.email,
       c.phone,
       p.gender,
       p.nationality
FROM customers c
JOIN customer_profiles p
  ON c.customer_id = p.customer_id;


-- 3. List all airlines
SELECT airline_id, airline_name, country
FROM airlines;

-- 4. Show all airports in India
SELECT airport_code, airport_name, city
FROM airports
WHERE country = 'India';

-- 5. List all hotels in a city
SELECT hotel_id, hotel_name, city, rating
FROM hotels
WHERE city = 'Mumbai';

-- 6. Find flights by source, destination, and date
SELECT f.flight_id,
       a.airline_name,
       f.flight_number,
       f.departure_time,
       f.arrival_time,
       f.base_price
FROM flights f
JOIN airlines a ON f.airline_id = a.airline_id
JOIN airports src ON f.source_airport_id = src.airport_id
JOIN airports dest ON f.destination_airport_id = dest.airport_id
WHERE src.airport_code = 'DEL'
  AND dest.airport_code = 'BOM'
  AND DATE(f.departure_time) = '2025-01-10';

-- 7. Available seats for a flight
SELECT seat_id, seat_number, seat_class
FROM flight_seats
WHERE flight_id = 1
  AND is_available = TRUE;

-- 8. Available seats count by class
SELECT seat_class, COUNT(*) AS available_seats
FROM flight_seats
WHERE flight_id = 1
  AND is_available = TRUE
GROUP BY seat_class;

-- 9. Hotel rooms with room types
SELECT h.hotel_name,
       r.room_number,
       t.type_name,
       r.price_per_night
FROM hotel_rooms r
JOIN hotels h ON r.hotel_id = h.hotel_id
JOIN room_types t ON r.room_type_id = t.room_type_id;

-- 10. Available rooms for given dates
SELECT r.room_id, r.room_number
FROM hotel_rooms r
WHERE r.is_active = TRUE
  AND r.room_id NOT IN (
      SELECT room_id
      FROM hotel_bookings
      WHERE '2025-02-10' < check_out
        AND '2025-02-12' > check_in
  );

-- 11. Average room price per city
SELECT h.city, AVG(r.price_per_night) AS avg_price
FROM hotels h
JOIN hotel_rooms r ON h.hotel_id = r.hotel_id
GROUP BY h.city;

-- 12. All reservations of a customer
SELECT r.reservation_id,
       b.status_name,
       r.reservation_date
FROM reservations r
JOIN booking_status b ON r.status_id = b.status_id
WHERE r.customer_id = 5;

-- 13. Flight booking details per reservation
SELECT r.reservation_id,
       f.flight_number,
       fb.price
FROM reservations r
JOIN flight_bookings fb ON r.reservation_id = fb.reservation_id
JOIN flights f ON fb.flight_id = f.flight_id;
 
-- 14. Hotel booking details per reservation
SELECT r.reservation_id,
       h.hotel_name,
       hb.check_in,
       hb.check_out,
       hb.price
FROM reservations r
JOIN hotel_bookings hb ON r.reservation_id = hb.reservation_id
JOIN hotel_rooms hr ON hb.room_id = hr.room_id
JOIN hotels h ON hr.hotel_id = h.hotel_id;

-- 15. Successful payments
SELECT payment_id, reservation_id, amount
FROM payments
WHERE payment_status = 'SUCCESS';

-- 16. Total revenue
SELECT SUM(amount) AS total_revenue
FROM payments
WHERE payment_status = 'SUCCESS';

-- 17. Monthly revenue
SELECT DATE_FORMAT(payment_time, '%Y-%m') AS month,
       SUM(amount) AS revenue
FROM payments
WHERE payment_status = 'SUCCESS'
GROUP BY month;

-- 18. Most booked flight
SELECT f.flight_number, COUNT(*) AS total_bookings
FROM flight_bookings fb
JOIN flights f ON fb.flight_id = f.flight_id
GROUP BY f.flight_number
ORDER BY total_bookings DESC
LIMIT 1;

-- 19. Most popular hotel
SELECT h.hotel_name, COUNT(*) AS total_bookings
FROM hotel_bookings hb
JOIN hotel_rooms hr ON hb.room_id = hr.room_id
JOIN hotels h ON hr.hotel_id = h.hotel_id
GROUP BY h.hotel_name
ORDER BY total_bookings DESC
LIMIT 1;

-- 20. Customers with more than 1 reservations
SELECT customer_id, COUNT(*) AS total_reservations
FROM reservations
GROUP BY customer_id
HAVING total_reservations > 1;

-- SUBQUERIES
-- 21. Flights priced above average
SELECT flight_id, base_price
FROM flights
WHERE base_price > (
    SELECT AVG(base_price) FROM flights
);

-- 22. Customers who never cancelled
SELECT c.customer_id, c.email
FROM customers c
WHERE c.customer_id NOT IN (
    SELECT r.customer_id
    FROM cancellation_logs cl
    JOIN reservations r ON cl.reservation_id = r.reservation_id
);

-- 23. Complete reservation summary
SELECT r.reservation_id,
       c.email,
       b.status_name,
       p.amount,
       p.payment_status
FROM reservations r
JOIN customers c ON r.customer_id = c.customer_id
JOIN booking_status b ON r.status_id = b.status_id
LEFT JOIN payments p ON r.reservation_id = p.reservation_id;

-- 24. Flights with airline and airport names
SELECT f.flight_number,
       a.airline_name,
       src.city AS source_city,
       dest.city AS destination_city
FROM flights f
JOIN airlines a ON f.airline_id = a.airline_id
JOIN airports src ON f.source_airport_id = src.airport_id
JOIN airports dest ON f.destination_airport_id = dest.airport_id;

-- 25. Cancellation reasons frequency
SELECT reason, COUNT(*) AS count
FROM cancellation_logs
GROUP BY reason;

-- 26. Reservation count by status
SELECT b.status_name, COUNT(*) AS total
FROM reservations r
JOIN booking_status b ON r.status_id = b.status_id
GROUP BY b.status_name;

-- 27. Highest spending customer
SELECT r.customer_id, SUM(p.amount) AS total_spent
FROM reservations r
JOIN payments p ON r.reservation_id = p.reservation_id
WHERE p.payment_status = 'SUCCESS'
GROUP BY r.customer_id
ORDER BY total_spent DESC
LIMIT 1;

-- 28. Flight revenue ranking
SELECT f.flight_number, SUM(fb.price) AS revenue
FROM flight_bookings fb
JOIN flights f ON fb.flight_id = f.flight_id
GROUP BY f.flight_number
ORDER BY revenue DESC;

-- 29. Hotel revenue ranking
SELECT h.hotel_name, SUM(hb.price) AS revenue
FROM hotel_bookings hb
JOIN hotel_rooms hr ON hb.room_id = hr.room_id
JOIN hotels h ON hr.hotel_id = h.hotel_id
GROUP BY h.hotel_name
ORDER BY revenue DESC;

-- 30. Unpaid or failed reservations
SELECT r.reservation_id
FROM reservations r
LEFT JOIN payments p ON r.reservation_id = p.reservation_id
WHERE p.payment_status <> 'SUCCESS'
   OR p.payment_status IS NULL;
   
-- VIEW
-- 1. Customer_booking_summary
CREATE OR REPLACE VIEW customer_booking_summary AS
SELECT
    c.customer_id,
    cp.first_name,
    cp.last_name,
    c.email,
    r.reservation_id,
    bs.status_name,
    r.reservation_date,
    p.amount AS payment_amount,
    p.payment_status
FROM customers c
JOIN customer_profiles cp
    ON c.customer_id = cp.customer_id
JOIN reservations r
    ON c.customer_id = r.customer_id
JOIN booking_status bs
    ON r.status_id = bs.status_id
LEFT JOIN payments p
    ON r.reservation_id = p.reservation_id;

SELECT * from customer_booking_summary;

-- 2. active_reservations_view
CREATE OR REPLACE VIEW active_reservations_view AS
SELECT
    r.reservation_id,
    c.email,
    bs.status_name,
    r.reservation_date
FROM reservations r
JOIN customers c
    ON r.customer_id = c.customer_id
JOIN booking_status bs
    ON r.status_id = bs.status_id
WHERE bs.status_name IN ('CONFIRMED', 'PENDING');

-- 3.Flight_availability_view
CREATE OR REPLACE VIEW flight_availability_view AS
SELECT
    f.flight_id,
    f.flight_number,
    a.airline_name,
    src.city AS source_city,
    dest.city AS destination_city,
    f.departure_time,
    f.arrival_time,
    f.base_price,
    COUNT(fs.seat_id) AS available_seats
FROM flights f
JOIN airlines a
    ON f.airline_id = a.airline_id
JOIN airports src
    ON f.source_airport_id = src.airport_id
JOIN airports dest
    ON f.destination_airport_id = dest.airport_id
LEFT JOIN flight_seats fs
    ON f.flight_id = fs.flight_id
   AND fs.is_available = TRUE
GROUP BY
    f.flight_id,
    f.flight_number,
    a.airline_name,
    src.city,
    dest.city,
    f.departure_time,
    f.arrival_time,
    f.base_price;

-- 4. Hotel_occupancy_view
CREATE OR REPLACE VIEW hotel_occupancy_view AS
SELECT
    h.hotel_id,
    h.hotel_name,
    h.city,
    COUNT(hb.hotel_booking_id) AS total_bookings,
    SUM(hb.price) AS total_revenue
FROM hotels h
LEFT JOIN hotel_rooms hr
    ON h.hotel_id = hr.hotel_id
LEFT JOIN hotel_bookings hb
    ON hr.room_id = hb.room_id
GROUP BY
    h.hotel_id,
    h.hotel_name,
    h.city;

-- TRIGGER
-- 1. Automatically CONFIRM reservation after successful payment
DELIMITER $$

CREATE TRIGGER trg_confirm_reservation_after_payment
AFTER INSERT ON payments
FOR EACH ROW
BEGIN
    DECLARE confirmed_status INT;

    IF NEW.payment_status = 'SUCCESS' THEN
        SELECT status_id
        INTO confirmed_status
        FROM booking_status
        WHERE status_name = 'CONFIRMED';

        UPDATE reservations
        SET status_id = confirmed_status
        WHERE reservation_id = NEW.reservation_id;
    END IF;
END$$

DELIMITER ;

-- 2. Prevent double booking of flight seats (hard safety net)
DELIMITER $$

CREATE TRIGGER trg_prevent_double_seat_booking
BEFORE INSERT ON flight_bookings
FOR EACH ROW
BEGIN
    DECLARE seat_available BOOLEAN;

    SELECT is_available
    INTO seat_available
    FROM flight_seats
    WHERE seat_id = NEW.seat_id
    FOR UPDATE;

    IF seat_available = FALSE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Seat already booked';
    END IF;
END$$

DELIMITER ;

-- 3. Prevent overlapping hotel room bookings
DELIMITER $$

CREATE TRIGGER trg_prevent_room_double_booking
BEFORE INSERT ON hotel_bookings
FOR EACH ROW
BEGIN
    DECLARE conflict_count INT;

    SELECT COUNT(*)
    INTO conflict_count
    FROM hotel_bookings
    WHERE room_id = NEW.room_id
      AND NEW.check_in < check_out
      AND NEW.check_out > check_in;

    IF conflict_count > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Room already booked for selected dates';
    END IF;
END$$

DELIMITER ;

-- 4. Log cancellations automatically
DELIMITER $$

CREATE TRIGGER trg_log_cancellation
AFTER UPDATE ON reservations
FOR EACH ROW
BEGIN
    DECLARE cancelled_status INT;

    SELECT status_id
    INTO cancelled_status
    FROM booking_status
    WHERE status_name = 'CANCELLED';

    IF NEW.status_id = cancelled_status
       AND OLD.status_id <> cancelled_status THEN

        INSERT INTO cancellation_logs (reservation_id, reason)
        VALUES (NEW.reservation_id, 'Reservation cancelled');
    END IF;
END$$

DELIMITER ;

-- STORED PROCEDURE

-- 1. Book a Flight (Seat-safe, Transactional)
-- Seat must be available
-- Reservation must exist
-- Seat marked unavailable after booking
DELIMITER $$

CREATE PROCEDURE book_flight (
    IN p_reservation_id BIGINT,
    IN p_flight_id BIGINT,
    IN p_seat_id BIGINT,
    IN p_price DECIMAL(10,2)
)
BEGIN
    DECLARE seat_available BOOLEAN;

    START TRANSACTION;

    SELECT is_available
    INTO seat_available
    FROM flight_seats
    WHERE seat_id = p_seat_id
      AND flight_id = p_flight_id
    FOR UPDATE;

    IF seat_available IS NULL OR seat_available = FALSE THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Seat is not available';
    END IF;

    INSERT INTO flight_bookings
    (reservation_id, flight_id, seat_id, price)
    VALUES
    (p_reservation_id, p_flight_id, p_seat_id, p_price);

    UPDATE flight_seats
    SET is_available = FALSE
    WHERE seat_id = p_seat_id;

    COMMIT;
END$$

DELIMITER ;

-- 2. Book a Hotel Room (No Double Booking)
-- Room must be active
-- No overlapping date booking
DELIMITER $$

CREATE PROCEDURE book_hotel_room (
    IN p_reservation_id BIGINT,
    IN p_room_id BIGINT,
    IN p_check_in DATE,
    IN p_check_out DATE,
    IN p_price DECIMAL(10,2)
)
BEGIN
    DECLARE conflict_count INT;

    START TRANSACTION;

    SELECT COUNT(*)
    INTO conflict_count
    FROM hotel_bookings
    WHERE room_id = p_room_id
      AND p_check_in < check_out
      AND p_check_out > check_in
    FOR UPDATE;

    IF conflict_count > 0 THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Room is already booked for selected dates';
    END IF;

    INSERT INTO hotel_bookings
    (reservation_id, room_id, check_in, check_out, price)
    VALUES
    (p_reservation_id, p_room_id, p_check_in, p_check_out, p_price);

    COMMIT;
END$$

DELIMITER ;

-- 3. Cancel a Reservation (Centralized Cancellation)
-- Status updated
-- Cancellation logged
-- Safe for re-use by triggers / services
DELIMITER $$

CREATE PROCEDURE cancel_reservation (
    IN p_reservation_id BIGINT,
    IN p_reason VARCHAR(255)
)
BEGIN
    DECLARE cancelled_status INT;

    START TRANSACTION;

    SELECT status_id
    INTO cancelled_status
    FROM booking_status
    WHERE status_name = 'CANCELLED';

    UPDATE reservations
    SET status_id = cancelled_status
    WHERE reservation_id = p_reservation_id;

    INSERT INTO cancellation_logs
    (reservation_id, reason)
    VALUES
    (p_reservation_id, p_reason);

    COMMIT;
END$$

DELIMITER ;

-- 4. Get Customer Booking History (Flights + Hotels)
DELIMITER $$

CREATE PROCEDURE get_customer_booking_history (
    IN p_customer_id BIGINT
)
BEGIN
    SELECT r.reservation_id,
           b.status_name,
           r.reservation_date,
           f.flight_number,
           h.hotel_name
    FROM reservations r
    JOIN booking_status b ON r.status_id = b.status_id
    LEFT JOIN flight_bookings fb ON r.reservation_id = fb.reservation_id
    LEFT JOIN flights f ON fb.flight_id = f.flight_id
    LEFT JOIN hotel_bookings hb ON r.reservation_id = hb.reservation_id
    LEFT JOIN hotel_rooms hr ON hb.room_id = hr.room_id
    LEFT JOIN hotels h ON hr.hotel_id = h.hotel_id
    WHERE r.customer_id = p_customer_id
    ORDER BY r.reservation_date DESC;
END$$

DELIMITER ;
