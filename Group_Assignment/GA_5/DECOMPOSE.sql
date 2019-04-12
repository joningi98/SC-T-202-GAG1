drop table IF EXISTS ga_5_schema.rentals_pid_hid_s;
drop table IF EXISTS ga_5_schema.rentals_hid_hs_hz;
drop table IF EXISTS ga_5_schema.rentals_hz_hc;
drop table IF EXISTS ga_5_schema.rentals_pid_pn;

drop table IF EXISTS ga_5_schema.coffees_did_hid_cid;
drop table IF EXISTS ga_5_schema.coffees_did_hid;
drop table IF EXISTS ga_5_schema.coffees_did_dn_ds;
drop table IF EXISTS ga_5_schema.coffees_did_cid;
drop table IF EXISTS ga_5_schema.coffees_cid_cn_cm;

drop table IF EXISTS ga_5_schema.projects_id_pid_sid;
drop table IF EXISTS ga_5_schema.projects_id_mid;
drop table IF EXISTS ga_5_schema.projects_mid_mn;
drop table IF EXISTS ga_5_schema.projects_sid_sn;
drop table IF EXISTS ga_5_schema.projects_pid_pn;

drop table IF EXISTS ga_5_schema.customers_cid_cn_cs_cnr_cc_eid;
drop table IF EXISTS ga_5_schema.customers_cc_cz;


CREATE TABLE Rentals_HZ_HC(
  HZ INT NOT NULL,
  HC varchar,
  PRIMARY KEY (HZ)
);

CREATE TABLE Rentals_HID_HS_HZ(
  HID INT NOT NULL,
  HS INT NOT NULL,
  HZ INT NOT NULL,
  PRIMARY KEY (HID),
  FOREIGN KEY (HZ) REFERENCES Rentals_HZ_HC(HZ)
);

CREATE TABLE Rentals_PID_PN(
  PID INT NOT NULL,
  PN varchar NOT NULL,
  PRIMARY KEY (PID)
);


CREATE TABLE Rentals_PID_HID_S(
  PID INT NOT NULL,
  HID INT NOT NULL,
  S INT NOT NULL,
  PRIMARY KEY (PID, HID),
  FOREIGN KEY (HID) REFERENCES Rentals_HID_HS_HZ(HID),
  FOREIGN KEY (PID) REFERENCES Rentals_PID_PN(PID)
);


CREATE TABLE Coffees_CID_CN_CM(
  CID INT NOT NULL UNIQUE,
  CN varchar NOT NULL,
  CM varchar NOT NULL,
  PRIMARY KEY (CID)
);

CREATE TABLE Coffees_DID_DN_DS(
  DID INT NOT NULL,
  DN varchar NOT NULL,
  DS varchar NOT NULL,
  PRIMARY KEY (DID)
);

CREATE TABLE Coffees_DID_HID(
  DID INT NOT NULL UNIQUE,
  HID INT NOT NULL UNIQUE ,
  PRIMARY KEY (DID, HID),
  FOREIGN KEY (DID) REFERENCES Coffees_DID_DN_DS(DID)
);

CREATE TABLE Coffees_DID_CID(
  DID INT NOT NULL UNIQUE,
  CID INT NOT NULL UNIQUE,
  PRIMARY KEY (DID, CID),
  FOREIGN KEY (CID) REFERENCES Coffees_CID_CN_CM(CID)
);

CREATE TABLE Coffees_DID_HID_CID (
  DID INT NOT NULL UNIQUE,
  HID INT NOT NULL UNIQUE,
  CID INT NOT NULL UNIQUE,
  PRIMARY KEY (DID, HID, CID),
  FOREIGN KEY (CID) REFERENCES Coffees_DID_CID(CID),
  FOREIGN KEY (DID) REFERENCES Coffees_DID_HID(DID)
);



CREATE TABLE Projects_MID_MN(
  MID INT NOT NULL,
  MN varchar NOT NULL,
  PRIMARY KEY (MID)
);

CREATE TABLE Projects_ID_MID(
  ID INT NOT NULL,
  MID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (MID) REFERENCES Projects_MID_MN(MID)
);

CREATE TABLE Projects_SID_SN(
  SID INT NOT NULL,
  SN varchar NOT NULL,
  PRIMARY KEY (SID)
);

CREATE TABLE Projects_PID_PN(
  PID INT NOT NULL,
  PN varchar NOT NULL,
  PRIMARY KEY (PID)
);

CREATE TABLE Projects_ID_PID_SID(
  ID INT NOT NULL,
  PID INT NOT NULL,
  SID INT NOT NULL,
  PRIMARY KEY (ID, PID, SID),
  FOREIGN KEY (PID) REFERENCES Projects_PID_PN(PID),
  FOREIGN KEY (SID) REFERENCES Projects_SID_SN(SID),
  FOREIGN KEY (ID) REFERENCES Projects_ID_MID(ID)
);


CREATE TABLE Customers_CC_CZ(
  CC INT NOT NULL,
  CZ INT NOT NULL,
  PRIMARY KEY (CC)
);

CREATE TABLE Customers_CID_CN_CS_CNR_CC_EID(
  CID INT NOT NULL,
  CN varchar NOT NULL,
  CS varchar NOT NULL,
  CNR INT NOT NULL,
  CC INT NOT NULL,
  EID INT NOT NULL,
  PRIMARY KEY (CID),
  FOREIGN KEY (CC) REFERENCES Customers_CC_CZ(CC)
);

