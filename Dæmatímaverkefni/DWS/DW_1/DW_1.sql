CREATE TABLE Coffees(
    name varchar(20),
    manufacture varchar(20),
    PRIMARY KEY(name)
);

CREATE TABLE Coffeehouse(
    name varchar(20),
    address varchar(20),
    license varchar(20),
    PRIMARY KEY (name)
);

CREATE TABLE Drinkers(
    name varchar(20),
    address varchar(20),
    phone varchar(20),
    PRIMARY KEY (name)
);

CREATE TABLE Likes(
    drinker varchar(20),
    coffee varchar(20),
    FOREIGN KEY (drinker) REFERENCES Drinkers(name),
    FOREIGN KEY (coffee) REFERENCES Coffees(name)
);

CREATE TABLE Frequents(
    drinker varchar(20),
    coffeehouse varchar(20),
    FOREIGN KEY (drinker) REFERENCES Drinkers(name),
    FOREIGN KEY (coffeehouse) REFERENCES Coffeehouse(name)
);

CREATE TABLE sells(
    coffeehouse varchar(20),
    coffee varchar(20),
    price int,
    FOREIGN KEY (coffeehouse) REFERENCES Coffeehouse(name),
    FOREIGN KEY (coffee) REFERENCES Coffees(name)
);

INSERT INTO Coffees(name, manufacture) VALUES ('Americano', 'Gevalia');
INSERT INTO Coffees(name, manufacture) VALUES ('Espresso', 'Caffé Nero');
INSERT INTO Coffees(name, manufacture) VALUES ('Latte', 'Dunkin Donuts');

INSERT INTO Coffeehouse(name, address, license) VALUES ('Te&Kaffi', 'Menntavegur 1', 'GJ7489');
INSERT INTO Coffeehouse(name, address, license) VALUES ('Kaffitár', 'Bankastræti 8', 'JKH8867');
INSERT INTO Coffeehouse(name, address, license) VALUES ('Mokka kaffi', 'Skólavörðustígur 3A', 'HGY4458');
INSERT INTO Drinkers(name, address, phone) VALUES ('Jón Ingi', 'Reykjabyggð 30', '8624686');
insert INTO Drinkers(name, address, phone) VALUES ('Jóna Dís', 'Biskpusgata 29', '1456789');
INSERT INTO Drinkers(name, address, phone) VALUES ('Ólafur', 'Reykjabyggð 30', '45687789');

INSERT INTO Likes(drinker, coffee) VALUES ('Jón Ingi', 'Americano');
INSERT INTO Likes(drinker, coffee) VALUES ('Jóna Dís', 'Latte');
INSERT into Likes(drinker, coffee) VALUES ('Ólafur', 'Espresso');

INSERT INTO Frequents(drinker, coffeehouse) VALUES ('Jón Ingi', 'Te&Kaffi');
INSERT INTO Frequents(drinker, coffeehouse) VALUES ('Jóna Dís','Kaffitár');
insert into Frequents(drinker, coffeehouse) VALUES ('Ólafur', 'Mokka kaffi');

INSERT INTO sellS(coffeehouse, coffee, price) VALUES ('Te&Kaffi', 'Americano', 540);
INSERT into sells(coffeehouse, coffee, price) VALUES ('Kaffitár', 'Latte', 650);
INSERT into sells(coffeehouse, coffee, price) VALUES ('Mokka kaffi', 'Espresso', 450);

SELECT * FROM Likes where drinker like 'J%';
SELECT * FROM Drinkers where name like 'Ó%';

SELECT * FROM Coffees;
SELECT * FROM Coffeehouse;
SELECT * FROM Drinkers;
SELECT * FROM Likes;

SELECT name FROM Coffeehouse;

SELECT * FROM Coffees where name='Americano';

TRUNCATE TABLE Coffees;
TRUNCATE TABLE Coffeehouse;
TRUNCATE TABLE Drinkers;
TRUNCATE TABLE Likes;
TRUNCATE TABLE Frequents;
TRUNCATE TABLE sells;

DROP TABLE Coffees;
DROP TABLE Coffeehouse;
DROP TABLE Drinkers;
DROP TABLE Likes;
DROP TABLE Frequents;
DROP TABLE sells
