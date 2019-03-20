CREATE TABLE Passenger(
  SSN INT,
  First_name varchar,
  Last_name varchar,
  phone_number integer not null check (phone_number between 0 and 9999999999),
  E_mail varchar,
  PRIMARY KEY (SSN)
);

CREATE TABLE Booking(
  Booking_ID SERIAL PRIMARY KEY,
  Date_of_purchase date,
  Price INT,
  Books INT,
  PRIMARY KEY (Booking_ID),
  FOREIGN KEY (Books) REFERENCES Passenger (SSN)
);

CREATE TABLE Flight(
  Flight_number SERIAL,
  Date_of_flight date,
  Arrival TIME,
  Departure TIME,
  From_location varchar,
  To_location varchar,
  Air_line varchar,
  Has_booking INT,
  Flies INT,
  PRIMARY KEY (Flight_number),
  FOREIGN KEY (Has_booking) REFERENCES Booking (Booking_ID),
  FOREIGN KEY (Flies) REFERENCES Airplane (REG_number)
);

CREATE TABLE Airplane(
  REG_number SERIAL,
  Seats INT,
  Model_number INT,

)