CREATE TABLE IF NOT EXISTS tblCompany(
  ComId INT PRIMARY KEY,
  ComName VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS tblTaxDistrict(
  TaxKey INT PRIMARY KEY,
  TaxName VARCHAR(20),
  TaxPercentage FLOAT
);

CREATE TABLE IF NOT EXISTS tblWorker(
  WorkKey INT PRIMARY KEY,
  WorFName VARCHAR(30),
  WorSurName VARCHAR(30),
  WorMarriedTo INT,
  TaxKey INT,
  WorLastVisit VARCHAR(20),
  FOREIGN KEY (WorMarriedTo) REFERENCES tblWorker(WorkKey),
  FOREIGN KEY (TaxKey) REFERENCES tblTaxDistrict(TaxKey)
);

CREATE TABLE IF NOT EXISTS tblAnnualPay(
  AnnIncome INT,
  AnnTaxYear INT,
  ComId INT,
  WorkKey INT,
  FOREIGN KEY (ComId) REFERENCES tblCompany(ComId),
  FOREIGN KEY (WorkKey) REFERENCES tblWorker(WorkKey)
);


SELECT * FROM tblTaxDistrict;

SELECT WorSurName, worfname FROM tblWorker;

SELECT tblWorker.WorkKey FROM tblWorker, tblCompany, tblAnnualPay WHERE tblCompany.ComName = 'Nordic Power Ltd.';