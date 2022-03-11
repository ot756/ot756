-- intitializers
CREATE DATABASE project_115;
USE project_115;
DROP DATABASE project_115;
DROP TABLE Vaccinated_pet;
DROP TABLE Vaccination;
DROP TABLE Disease;
DROP TABLE Customer;
DROP TABLE Pets;
DROP TABLE Visits;
DROP TABLE Med_info;
DROP TABLE Medicine;
DROP TABLE SpecialFood;

-- create table statements

CREATE TABLE Customer(
Cus_name VARCHAR(100),
Cus_address VARCHAR(100),
Tele1 VARCHAR(10) UNIQUE,
Tele2 INT UNIQUE,
PRIMARY KEY (Cus_name, Cus_address)
);

CREATE TABLE Pets(
Cus_name VARCHAR(100),
Pet_name VARCHAR(100),
Tele1 VARCHAR(10),
Pet_color VARCHAR(60),
Pet_sex ENUM('Male', 'Female'),
Dob DATE,
Weight INT,
Breed VARCHAR(50),
Species VARCHAR(100),
PRIMARY KEY (Pet_name, Tele1),
FOREIGN KEY (Cus_name) REFERENCES Customer(Cus_name),
FOREIGN KEY (Tele1) REFERENCES Customer(Tele1)
);

CREATE TABLE Visits(
Cus_name VARCHAR(100),
Pet_name VARCHAR(100),
Tele1 VARCHAR(10),
Visit_time DATE,
Visit_date DATE,
Visit_reason VARCHAR(100),
Payment INT,
PRIMARY KEY (Visit_time, Visit_date, Visit_reason),
FOREIGN KEY (Cus_name) REFERENCES Customer(Cus_name),
FOREIGN KEY (Tele1) REFERENCES Customer(Tele1),
FOREIGN KEY (Pet_name) REFERENCES Pets(Pet_name)
);

CREATE TABLE Vaccination(
Vacc_name VARCHAR(100) PRIMARY KEY,
Vacc_freq VARCHAR(100),
Vacc_dosage INT
);

CREATE TABLE Disease(
Disease_name VARCHAR(100) PRIMARY KEY,
Disease_symp VARCHAR(500)
);

CREATE TABLE Vaccinated_Pet(
Tele1 VARCHAR(10),
Pet_name VARCHAR(100),
Vacc_name VARCHAR(100),
Disease_name VARCHAR(100),
Vacc_date DATE, 
PRIMARY KEY (Tele1, Pet_name, Vacc_name, Disease_name),
FOREIGN KEY (Tele1) REFERENCES Pets(Tele1),
FOREIGN KEY (Vacc_name) REFERENCES Vaccination(Vacc_name),
FOREIGN KEY (Disease_name) REFERENCES Disease(Disease_name),
FOREIGN KEY (Pet_name) REFERENCES Pets(Pet_name)
);

CREATE TABLE Med_Info(
Cus_name VARCHAR(100),
Pet_name VARCHAR(100),
Med_SF_name VARCHAR(100),
Dosage_freq VARCHAR(100),
Diagnosis VARCHAR(500),
Spec_instruc VARCHAR(500),
Fee INT,
PRIMARY KEY (Med_SF_name),
FOREIGN KEY (Cus_name) REFERENCES Pets(Cus_name),
FOREIGN KEY (Pet_name) REFERENCES Pets(Pet_name)
);

CREATE TABLE Medicine(
Med_name varchar(100) PRIMARY KEY,
Presc_dosage VARCHAR(100),
FOREIGN KEY (Med_name) references Med_info(Med_SF_name)
);

CREATE TABLE SpecialFood(
SF_name VARCHAR(100) PRIMARY KEY,
Amount VARCHAR(75),
FOREIGN KEY (SF_name) REFERENCES Med_info(Med_SF_name)
);


-- insert statements 

INSERT INTO Customer VALUES ('Mary-Jane','Dubai','0555152654','0583267129');
INSERT INTO Customer VALUES ('om','Abu Dhabi','0562189002','0549322244');
INSERT INTO Customer VALUES ('bruce','Dubai','0557802525','0589017555');
INSERT INTO Customer VALUES ('John','Sharjah, UAE','0521809810','0567452190');
INSERT INTO Customer VALUES ('fred','Ras Al Khaimah','0521909356','0555298009');

INSERT INTO Pets VALUES ('Mary-Jane','Leonardo','0555152654','Black and White','Male','2015-02-12',32,'German Shephard','Dog');
INSERT INTO Pets VALUES ('Om','Habiba','0562189002','Brown','Female','2016-11-19',18,'Bulldog','Dog');
INSERT INTO Pets VALUES ('Bruce','Charlie','0557802525','Brown','Male','2017-01-25',8,'persian','Cat');
INSERT INTO Pets VALUES ('John','Ali','0521809810','Brown','Male','2014-12-28',26,'Labrador','Dog');
INSERT INTO Pets VALUES ('Om','Ejazz','0562189002','Black','Male','2028-03-07',11,'Siamese','Cat');
INSERT INTO Pets VALUES ('Fred','Sally','0521909356','White','Female','2016-04-09',9,'Siamese','Cat');

INSERT INTO Visits VALUES ('Mary-Jane','Leonardo','0555152654',str_to_date("181500", "%H%i%s"),DATE_FORMAT("2021-02-25", "%Y/%m/%d"),'Vaccination',500);
INSERT INTO Visits VALUES ('Mary-Jane','Leonardo','0555152654',str_to_date("173000", "%H%i%s"),DATE_FORMAT("2021-03-27", "%Y/%m/%d"),'Doctor Visit',300);
INSERT INTO Visits VALUES ('Om','Habiba','0562189002',str_to_date("161500", "%H%i%s"),DATE_FORMAT("2021-03-11", "%Y/%m/%d"),'Medicine',250);
INSERT INTO Visits VALUES ('Om','Habiba','0562189002',str_to_date("193000", "%H%i%s"),DATE_FORMAT("2021-07-24", "%Y/%m/%d"),'Doctor Visit',300);
INSERT INTO Visits VALUES ('Om','Ejazz','0562189002',str_to_date("184500", "%H%i%s"),DATE_FORMAT("2022-01-29", "%Y/%m/%d"),'Medicine',250);
INSERT INTO Visits VALUES ('John','Ali','0521809810',str_to_date("20000", "%H%i%s"),DATE_FORMAT("2022-02-17", "%Y/%m/%d"),'Special Food',100);
INSERT INTO Visits VALUES ('John','Ali','0521809810',str_to_date("193000", "%H%i%s"),DATE_FORMAT("2022-04-14", "%Y/%m/%d"),'Doctor Visit',300);

INSERT INTO Vaccination VALUES ('FeLV','Once every year',2);
INSERT INTO Vaccination VALUES ('FIP','Once every 2 years',3);
INSERT INTO Vaccination VALUES ('FVRCP','Once every year',2);
INSERT INTO Vaccination VALUES ('FIV','Once every year',1);
INSERT INTO Vaccination VALUES ('DA2PP','Once every 3 years',2);
INSERT INTO Vaccination VALUES ('NOBIVAC','Once every 2 years',2);
INSERT INTO Vaccination VALUES ('FVRCP-C','Once every year',2);
INSERT INTO Vaccination VALUES ('DHPP','Once every year',3);

INSERT INTO Disease VALUES ("Hookworms and roundworms", "Skin rash, Coughing and weezing, fever");
INSERT INTO Disease VALUES ('Salmonella', 'Diarrhea, Fever, Vomiting');
INSERT INTO Disease VALUES ('Rabies', 'fearfulness, aggression, excessive drooling, difficulty swallowing');
INSERT INTO Disease VALUES ('Leptospirosis', 'Fever, Vomiting, Abdominal pain, Diarrhea, Refusal to eat.');
INSERT INTO Disease VALUES ('Bordetella', 'dry hacking cough, watery nasal discharge');
INSERT INTO Disease VALUES ('Feline Leukaemia', 'Pale gums, Yellow color in the mouth and whites of eyes, Enlarged lymph nodes, Bladder, skin, or upper respiratory infections');
INSERT INTO Disease VALUES ('Distemper', 'Fever, Nasal discharge, Eye discharge, Lethargy.');
INSERT INTO Disease VALUES ('Feline herpesvirus type 1', 'conjunctivitis, ocular discharge, sneezing, nasal discharge,');
INSERT INTO Disease VALUES ('canine parvovirus', 'lethargy, loss of appetite, abdominal pain and bloating');
INSERT INTO Disease VALUES ('Covid-19', 'Fever, Coughing, Difficulty breathing or shortness of breath, Lethargy, Sneezing.');

INSERT INTO Vaccinated_Pet VALUES ('0555152654','Leonardo','FIV','Hookworms and roundworms',DATE_FORMAT("2020-02-24", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0555152654','Leonardo','FeLV','Salmonella',DATE_FORMAT("2020-05-29", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0521809810','Ali','DA2PP','Leptospirosis',DATE_FORMAT("2021-12-07", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0521809810','Ali','FVRCP-C','Rabies',DATE_FORMAT("2021-02-28", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0562189002','Habiba','NOBIVAC','Feline Leukaemia',DATE_FORMAT("2021-10-13", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0562189002','Habiba','FIP','Bordetella',DATE_FORMAT("2021-12-15", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0562189002','Ejazz','DA2PP','Leptospirosis',DATE_FORMAT("2022-06-03", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0562189002','Ejazz','NOBIVAC','Feline Leukaemia',DATE_FORMAT("2022-12-01", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0562189002','Ejazz','FIV','Hookworms and roundworms',DATE_FORMAT("2022-08-09", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0557802525','Charlie','FVRCP-C','Rabies',DATE_FORMAT("2022-10-21", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0557802525','Charlie','FIP','Salmonella',DATE_FORMAT("2022-05-18", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0557802525','Charlie','DA2PP','Leptospirosis',DATE_FORMAT("2022-08-12", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0521909356','Sally','FIV','Distemper',DATE_FORMAT("2021-12-23", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0521909356','Sally','NOBIVAC','Feline herpesvirus type 1',DATE_FORMAT("2021-06-20", "%Y/%m/%d"));
INSERT INTO Vaccinated_Pet VALUES ('0521909356','Sally','DHPP','canine parvovirus',DATE_FORMAT("2021-09-10", "%Y/%m/%d"));

INSERT INTO Med_info VALUES ('John','Ali','Frontline Flea & Tick Spot On Combo For Dogs & Home Protection','Once a day ','Fleas and Ticks','The product should not be used on puppies less than 8 weeks old and/or weighing less than 2kg.',145);
INSERT INTO Med_info VALUES ('Bruce','Charlie','Beaphar Fiprotec for Cats','Apply once every 4 weeks ','Fleas and Ticks','Part the cat’s fur between the shoulder blades and apply the contents of one pipette to the skin’s surface, ideally split between two areas roughly 2cm apart, one at the base of the head and the second 2-3cm further back. For continuous protection re-apply once every four weeks',95);
INSERT INTO Med_info VALUES ('Mary-Jane','Leonardo','Beaphar Fiprotec for Dogs','Apply once every 4 weeks','fleas and ticks','Part the dogs’s fur between the shoulder blades and apply the contents of one pipette to the skin’s surface, ideally split between two areas roughly 2cm apart, one at the base of the head and the second 2-3cm further back. For continuous protection re-apply once every four weeks',95);
INSERT INTO Med_info VALUES ('Fred','Sally','(3 Pack) Pet Pectillin Diarrhea Medication for Dogs and Cats','Once a day for 4 consecutive days','Diarrhea','Add to one meal',200);
INSERT INTO Med_info VALUES ('Om','Ejazz','NaturVet Cranberry Relief Healthy Urinary Tract', '60 chews,Once a day','bloody urine', 'For use in dogs over the age of 12 weeks',99);

INSERT INTO Medicine VALUES ('Beaphar Fiprotec for Dogs','4 pipettes of 100mg');
INSERT INTO Medicine VALUES ('Frontline Flea & Tick Spot On Combo For Dogs & Home Protection','3 Pack');
INSERT INTO Medicine VALUES ('NaturVet Cranberry Relief Healthy Urinary Tract','240 capsules');
INSERT INTO Medicine VALUES ('Beaphar Fiprotec for Cats','4 pipettes of 50mg');

INSERT INTO SpecialFood VALUES ('NaturVet Cranberry Relief Healthy Urinary Tract', '60 chews');
INSERT INTO SpecialFood VALUES ('Beaphar Fiprotec for Cats', '50 Soft Chews');
INSERT INTO SpecialFood VALUES ('Beaphar Fiprotec for Dogs', '160 Soft Chews');
INSERT INTO SpecialFood VALUES ('Frontline Flea & Tick Spot On Combo For Dogs & Home Protection', '60 Soft Chews');


-- task-4(1)
SELECT DISTINCT C.Cus_name, VP.Tele1, VP.Pet_name, VP.Disease_name, VP.Vacc_name, VP.Vacc_date FROM Vaccinated_pet AS VP, Pets AS P, Customer AS C  
WHERE P.Pet_name=VP.Pet_name AND VP.Tele1=P.Tele1 AND P.Tele1=C.Tele1;


-- task-4(2)
SELECT Vis.Payment, Vis.Cus_Name, Vis.Pet_name, Vis.Tele1 FROM Visits AS Vis, Customer AS C WHERE Vis.Tele1=C.Tele1 AND Vis.Cus_name=C.Cus_name;


-- task-4(3)


-- task-4(4)
SELECT DISTINCT CN1, PN1, MAX(Count_pets) AS Visit FROM (SELECT Cus_name as CN1,
Pet_name as PN1, COUNT(Pet_name) AS Count_pets FROM Visits GROUP BY CN1) 
AS subq1, Visits GROUP BY Cus_name;


-- task-4(5)
SELECT Pet_name FROM Pets WHERE Pet_name NOT IN(SELECT Pet_name FROM Visits);
