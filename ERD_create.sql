CREATE DATABASE hms;
USE hms;

CREATE TABLE Bill (
    Invoice_id int NOT NULL,
    Guest_id int NOT NULL,
    Room_charges float NOT NULL,
    Misc_charges float NOT NULL,
    Total_bill float NOT NULL,
    CONSTRAINT Bill_pk PRIMARY KEY (Invoice_id)
);

-- Table: Employee
CREATE TABLE Employee (
    Employee_id int NOT NULL,
    Name varchar(50) NOT NULL,
    Phone varchar(50) NOT NULL,
    CONSTRAINT Employee_pk PRIMARY KEY (Employee_id)
);

-- Table: Guest
CREATE TABLE Guest (
    Guest_id int NOT NULL,
    Name varchar(50) NOT NULL,
    Phone varchar(50) NOT NULL,
    Date_arrival varchar(50) NOT NULL,
    CONSTRAINT Guest_pk PRIMARY KEY (Guest_id)
);

-- Table: Hotel
CREATE TABLE Hotel (
    Hotel_code int NOT NULL,
    Name varchar(255) NOT NULL,
    Location varchar(255) NOT NULL,
    Num_rooms int NOT NULL,
    CONSTRAINT Hotel_pk PRIMARY KEY (Hotel_code)
);

-- Table: Reservation
CREATE TABLE Reservation (
    Reservation_id int NOT NULL,
    Guest_id int NOT NULL,
    Room_id int NOT NULL,
    CONSTRAINT Reservation_pk PRIMARY KEY (Reservation_id)
);

-- Table: Room
CREATE TABLE Room (
    Room_id int NOT NULL,
    Room_type varchar(50) NOT NULL,
    Num_beds int NOT NULL,
    CONSTRAINT Room_pk PRIMARY KEY (Room_id)
);

-- foreign keys
-- Reference: Bill_Guest (table: Bill)
ALTER TABLE Bill ADD CONSTRAINT Bill_Guest FOREIGN KEY Bill_Guest (Guest_id)
    REFERENCES Guest (Guest_id);


-- Reference: Reservation_Guest (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Guest FOREIGN KEY Reservation_Guest (Guest_id)
    REFERENCES Guest (Guest_id);


-- Reference: Reservation_Room (table: Reservation)
ALTER TABLE Reservation ADD CONSTRAINT Reservation_Room FOREIGN KEY Reservation_Room (Room_id)
    REFERENCES Room (Room_id);


-- End of file.

