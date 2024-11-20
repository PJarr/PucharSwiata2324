USE PortfolioProject


CREATE TABLE WC_Calendar2324
(
ID INT IDENTITY(1,1) PRIMARY KEY,
WC_Date DATE,
Miasto NVARCHAR(50),
K_Point INT,
HS_Point INT,
Zawody NVARCHAR(50)
)


CREATE TABLE WC_Results2324
(
Result_ID INT IDENTITY(1,1) PRIMARY KEY,
WC_ID INT,
Standing_ID INT,
Miasto NVARCHAR(50),
Miejsce DECIMAL(3,1) NULL,
Zawodnik NVARCHAR(65),
Kraj NVARCHAR(3),
Skok_1 DECIMAL(4,1),
Skok_2 DECIMAL(4,1),
Skok_3 DECIMAL(4,1),
Nota DECIMAL(4,1),
FOREIGN KEY (WC_ID) REFERENCES WC_Calendar2324(ID),
FOREIGN KEY (Standing_ID) REFERENCES WC_Standings2324(Standing_ID)
)


CREATE TABLE WC_Standings2324
(
Standing_ID INT IDENTITY(1,1) PRIMARY KEY,
[Rank] INT,
Athlete NVARCHAR(65),
Country_abbrev NVARCHAR(3),
Points INT,
Gap INT,
Appearances INT,
Rank_Basket INT
)

CREATE TABLE WC_StandingsCum2324
(
ID INT IDENTITY(1,1),
WC_ID INT,
Standing_ID INT,
Miejsce INT,
Zawodnik NVARCHAR(65),
Country_abbrev NVARCHAR(3),
Punkty INT,
Strata INT
FOREIGN KEY (WC_ID) REFERENCES WC_Calendar2324(ID),
FOREIGN KEY (Standing_ID) REFERENCES WC_Standings2324(Standing_ID)
)
