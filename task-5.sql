CREATE DATABASE Project_system;
USE Project_system;

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

CREATE TABLE VacPet(
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

CREATE TABLE MedInformation(
Cus_name VARCHAR(100),
Pet_name VARCHAR(100),
Med_SF_name VARCHAR(100),
Dosage_freq VARCHAR(100),
Diagnosis VARCHAR(500),
Spec_instruc VARCHAR(500),
Fee INT,
PRIMARY KEY (Med_name),
FOREIGN KEY (Cus_name) REFERENCES Pets(Cus_name),
FOREIGN KEY (Pet_name) REFERENCES pets(Pet_name)
);

CREATE TABLE medicines(
Med_name varchar(100) PRIMARY KEY,
Presc_dosage VARCHAR(100),
FOREIGN KEY (Med_name) references MedInformation(Med_SF_name)
);

CREATE TABLE SpecialFood(
SF_name VARCHAR(100) PRIMARY KEY,
Amount VARCHAR(75),
FOREIGN KEY (SF_name) REFERENCES MedInformation(Med_SF_name)
);



-- Insert for Customer --
INSERT INTO Customer VALUES ('Anna','Springs,UAE','0502345645','0566788934');
INSERT INTO Customer VALUES ('Bob','Arabian Ranches,UAE','0508976767','0507867892');
INSERT INTO Customer VALUES ('Thomas','Arabian Ranches,UAE','0523039378','0564355628');
INSERT INTO Customer VALUES ('Sandro','Jumeirah Village Circle, UAE','0502998765','0507776543');
INSERT INTO Customer VALUES ('Jeremy','Meadows,UAE','0506543749','0503454485');


-- Insert for Pets --
INSERT INTO Pets VALUES ('Anna','Max','0502345645','Black','Male','2018-08-31',32,'Labrador','Dog');
INSERT INTO Pets VALUES ('Bob','Leo','0508976767','Brown and White','Male','2015-01-15',10,'Beagle','Dog');
INSERT INTO Pets VALUES ('Thomas','Luna','0523039378','Grey','Female','2018-06-11',28,'Greyhound','Dog');
INSERT INTO Pets VALUES ('Sandro','Abby','0502998765','White','Female','2012-03-01',6,'Ragdoll','Cat');
INSERT INTO Pets VALUES ('Sandro','Koko','0502998765','White','Male','2020-02-04',7,'Siamese','Cat');
INSERT INTO Pets VALUES ('Jeremy','Zoe','0506543749','Green','Female','2021-07-25',0.03,'Parrotlet','Bird');


-- Insert For Appointment --
INSERT INTO Appointment VALUES ('Anna','Max','0502345645',str_to_date("193010", "%H%i%s"),DATE_FORMAT("2020-06-15", "%Y/%m/%d"),'Doctor Visit',300);
INSERT INTO Appointment VALUES ('Anna','Max','0502345645',str_to_date("153510", "%H%i%s"),DATE_FORMAT("2021-06-11", "%Y/%m/%d"),'Vaccination',500);
INSERT INTO Appointment VALUES ('Bob','Leo','0508976767',str_to_date("124500", "%H%i%s"),DATE_FORMAT("2020-08-21", "%Y/%m/%d"),'Health Check',150);
INSERT INTO Appointment VALUES ('Bob','Leo','0508976767',str_to_date("170000", "%H%i%s"),DATE_FORMAT("2022-01-05", "%Y/%m/%d"),'Special Food',150);
INSERT INTO Appointment VALUES ('Sandro','Koko','0502998765',str_to_date("104010", "%H%i%s"),DATE_FORMAT("2022-02-11", "%Y/%m/%d"),'Medicine',250);
INSERT INTO Appointment VALUES ('Sandro','Abby','0502998765',str_to_date("165010", "%H%i%s"),DATE_FORMAT("2022-03-03", "%Y/%m/%d"),'Vaccination',500);
INSERT INTO Appointment VALUES ('Sandro','Abby','0502998765',str_to_date("153510", "%H%i%s"),DATE_FORMAT("2022-02-24", "%Y/%m/%d"),'Doctor Visit',300);


-- Insert for Vaccination --
INSERT INTO Vaccination VALUES ('RABVAC','Once every year',1);
INSERT INTO Vaccination VALUES ('DHPP','Once every 3 years',3);
INSERT INTO Vaccination VALUES ('DA2PP','Once every year',1);
INSERT INTO Vaccination VALUES ('FVRCP','Once every 3 years',3);
INSERT INTO Vaccination VALUES ('FeLV','Once every year',1);
INSERT INTO Vaccination VALUES ('NOBIVAC','Once every year',1);
INSERT INTO Vaccination VALUES ('Nystatin','Once every 3 years',3);


-- Insert for Disease --
INSERT INTO Disease VALUES ("Rabies", "Flu, weakness, fever, headache");
INSERT INTO Disease VALUES ('Distemper', 'Fever, nasal and eye discharge, lethargy, sneezing, vomiting');
INSERT INTO Disease VALUES ('Feline Viral Rhinotracheitis', 'Nasal congestion, excessive eye blinking and squinting, redness around and in the eye');
INSERT INTO Disease VALUES ('Canine Influenza', 'Loss of appetite, abdominal pain, fever, diarrhea');
INSERT INTO Disease VALUES ('Candida', 'Excessive shaking of the head, skin rashes and infections,  scratching of the ears or other places on the body');
INSERT INTO Disease VALUES ('Feline Leukaemia', 'Fever or chills,  Persistent fatigue, Frequent or severe infections');
INSERT INTO Disease VALUES ('Feline Calicivirus', 'sneezing, nasal congestion, fever');
INSERT INTO Disease VALUES ('Bordetella', 'Cold temperatures, exposure to dust or cigarette smoke, travel-induced stress');
INSERT INTO Disease VALUES ('Leptospirosis', 'Muscle aches, vomiting, jaundice (yellow skin and eyes)');
INSERT INTO Disease VALUES ('polyomavirus', 'anorexia, weight loss, delayed crop emptying, regurgitation, diarrhea, wet droppings');
INSERT INTO Disease VALUES ('Feline Panleucopaenia', 'vomiting, diarrhoea, anorexia');


-- Insert for VacPet --
-- Anna's Pet --
INSERT INTO VacPet VALUES ('0502345645','Max','RABVAC','Rabies',DATE_FORMAT("2021-06-11", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0502345645','Max','DHPP','Distemper',DATE_FORMAT("2020-11-19", "%Y/%m/%d"));
-- Bob's Pet --
INSERT INTO VacPet VALUES ('0508976767','Leo','DHPP','Distemper',DATE_FORMAT("2020-08-21", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0508976767','Leo','DA2PP','Rabies',DATE_FORMAT("2021-09-27", "%Y/%m/%d"));
-- Sandro's Pet
INSERT INTO VacPet VALUES ('0502998765','Abby','FVRCP','Feline Viral Rhinotracheitis',DATE_FORMAT("2022-01-21", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0502998765','Abby','FeLV','Feline Leukaemia',DATE_FORMAT("2022-01-21", "%Y/%m/%d"));

INSERT INTO VacPet VALUES ('0502998765','Koko','FVRCP','Feline Viral Rhinotracheitis',DATE_FORMAT("2021-01-31", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0502998765','Koko','FeLV','Feline Calicivirus',DATE_FORMAT("2020-03-11", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0502998765','Koko','FVRCP','Feline Panleucopaenia',DATE_FORMAT("2021-01-31", "%Y/%m/%d"));

-- Thomas's Pet --
INSERT INTO VacPet VALUES ('0523039378','Luna','DHPP','Bordetella',DATE_FORMAT("2021-01-31", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0523039378','Luna','NOBIVAC','Leptospirosis',DATE_FORMAT("2020-03-11", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0523039378','Luna','NOBIVAC','Canine Influenza',DATE_FORMAT("2021-02-26", "%Y/%m/%d"));

-- Jeremy's Pet --
INSERT INTO VacPet VALUES ('0506543749','Zoe','FVRCP','polyomavirus',DATE_FORMAT("2020-05-31", "%Y/%m/%d"));
INSERT INTO VacPet VALUES ('0506543749','Zoe','Nystatin','candida',DATE_FORMAT("2021-04-30", "%Y/%m/%d"));
-- End Insert for VacPets --


-- Insert for MedInformation --
INSERT INTO MedInformation VALUES ('Anna','Max','Zesty Paws, Probiotic Bites for Dogs','2 per day','Gut Function, Gut Health','y',115);
INSERT INTO MedInformation VALUES ('Jeremy','Zoe','Beaphar Multi-Vit Parrots Healthcare Supplements','2 per day','General health','',115);
INSERT INTO MedInformation VALUES ('Thomas','Luna','Beaphar Fiprotec for Dogs','4 pipettes of 100mg','fleas and ticks','Part the dogs’s fur between the shoulder blades and apply the contents of one pipette to the skin’s surface, ideally split between two areas roughly 2cm apart, one at the base of the head and the second 2-3cm further back. For continuous protection re-apply once every four weeks',95);
INSERT INTO MedInformation VALUES ('Bob','Leo','VetPlus Coatex for Hair and Skin Care for Dogs and Cats in Capsules','1-2 per day','Skin & Coat','Up to 25 lbs, daily amount is 1 Soft Chew, 26-75 lbs, daily amount is 2 Soft Chews, Over 75 lbs, Daily amount is 3 Soft Chews',115);
INSERT INTO MedInformation VALUES ('Sandro','Koko','Beaphar Fiprotec for Cats','Daily dosage of 1 capsule','Hair loss, dry or reddened skin, dandruff, and flaking','Daily dosage of 1 capsule',64);
INSERT INTO MedInformation VALUES ('Sandro','Abby','Pet Naturals of Vermont, Daily Probiotic, For Cats','1 per day','Mucosal lining of the urinary tract','Eat 1 per day',45);


-- Insert for Medicine --
INSERT INTO medicines VALUES ('Beaphar Fiprotec for Dogs','4 pipettes of 100mg');
INSERT INTO medicines VALUES ('Beaphar Fiprotec for Cats','4 pipettes of 50mg');
INSERT INTO medicines VALUES ('Beaphar Multi-Vit Parrots Healthcare Supplements','20 ml');
INSERT INTO medicines VALUES ('VetPlus Coatex for Hair and Skin Care for Dogs and Cats in Capsules','100 grams')


-- Insert for Special Food --
INSERT INTO SpecialFood VALUES ('Zesty Paws, Probiotic Bites for Dogs','90 Soft Chews');
INSERT INTO SpecialFood VALUES ('Pet Naturals of Vermont, Daily Probiotic, For Cats','30 Soft Chews');


-- For testing --
DROP TABLE VacPet;
DROP TABLE Vaccination;
DROP TABLE Disease;
DROP TABLE Legal_Req;
DROP TABLE Pets;
DROP TABLE Customer;
DROP TABLE Appointment;
DROP TABLE MedInformation;
DROP TABLE medicines;
DROP TABLE SpecialFood;

-- TASK 4: Show all the vaccination records for all pets --
select v.VName, v.VacFrequency, v.VacDosage, d.DName, lq.Req, p.CName, p.PName, p.CTPrimary, p.Breed, p.Spcs from Vaccination as v, Disease as D, Legal_Req as lq, Pets as p, VacPet as vp;
