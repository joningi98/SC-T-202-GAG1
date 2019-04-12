INSERT INTO coffees_did_hid_cid
SELECT DID, HID, CID
FROM coffees;


INSERT INTO coffees_did_hid SELECT DISTINCT DID, HID FROM coffees;
INSERT INTO coffees_did_cid SELECT DISTINCT DID, CID FROM coffees;
INSERT INTO coffees_did_dn_ds SELECT DISTINCT DID, DN, DS FROM coffees;
INSERT INTO coffees_cid_cn_cm SELECT DISTINCT CID, CN, CM FROM coffees;


INSERT INTO customers_cid_cn_cs_cnr_cc_eid SELECT DISTINCT CID, CN, CS, CNR, CC, EID FROM customers;
INSERT INTO customers_cc_cz SELECT DISTINCT CC, CZ FROM customers;


INSERT INTO projects_id_pid_sid SELECT DISTINCT ID, PID, SID FROM projects;
INSERT INTO projects_pid_pn SELECT DISTINCT PID, PN FROM projects;
INSERT INTO projects_sid_sn SELECT DISTINCT SID, SN FROM projects;
INSERT INTO projects_id_mid SELECT DISTINCT ID, MID FROM projects;
INSERT INTO projects_mid_mn SELECT DISTINCT MID, MN FROM projects;


INSERT INTO rentals_pid_hid_s SELECT DISTINCT PID, HID, S FROM rentals;
INSERT INTO rentals_pid_pn SELECT DISTINCT PID, PN FROM rentals;
INSERT INTO rentals_hid_hs_hz SELECT DISTINCT HID, HS, HZ FROM rentals;
INSERT INTO rentals_hz_hc SELECT DISTINCT HZ, HC FROM rentals;
