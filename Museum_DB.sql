DROP DATABASE IF EXISTS MUSEUM;
CREATE DATABASE MUSEUM; 
USE MUSEUM;

DROP TABLE IF EXISTS ARTIST;
CREATE TABLE ARTIST
( Namee           VARCHAR(100) NOT NULL,
  EPoch            VARCHAR(20),
  Country          VARCHAR(20) ,
  Main_Style        VARCHAR(20) ,
  Date_born        VARCHAR(100),
  Date_died        VARCHAR(100),
  Descriptionn     VARCHAR(200),

  PRIMARY KEY (Namee));
  
INSERT INTO ARTIST (Namee, Date_born, Date_died, Country, Epoch, Main_Style, Descriptionn)
VALUES
('Pietro Torrigiano','1472','1528','Italy','Renaissance','Realistic','Influential sculptor of the Renaissance, known for his portraits and religious sculptures.'),
('Hans Holbein the Younger','1497','1543','Germany','Renaissance','Realistic','German artist of the Northern Renaissance, renowned for his precise and realistic portraits.'),
('Robert Peake the Elder','1551','1619','England','Renaissance','Realistic','Artist of the Renaissance, excelled in Northern Renaissance realism and portraiture.'),
('Leonardo da Vinci','1447','1542','England','Modern','Abstract', 'Leonardo is identified for genius masterpieces such as the Mona Lisa.'),
('Juan Gris','1887','1927','Spain','Cubism','Synthetic Cubism','Spanish painter and sculptor with an innovative approach to geometric forms and vibrant use of color.'),
('Isidore Leroy','1881','1973', 'France','Post-Renaissance','Abstract','Emphasized color and movement, structuring compositions resembling theater scenes.'),
('Pablo Picasso','1881','1973', 'Spain','Modern','Cubism','Pioneered the Cubist movement with diverse works including Surrealism and Symbolism.');

DROP TABLE IF EXISTS ART_OBJECTS;
CREATE TABLE ART_OBJECTS (
  Id_no           INTEGER               NOT NULL,
  Artist_Name     VARCHAR(100),
  Epoch           VARCHAR(100),
  Country         VARCHAR(100)      	NOT NULL,
  Title           VARCHAR(100)          NOT NULL,
  Year_Created    VARCHAR(100),
  Descriptionn    VARCHAR(200),
  Exhibition_Name VARCHAR(300),
  
  PRIMARY KEY (Id_no));
  
INSERT INTO ART_OBJECTS(Id_no, Artist_Name, Year_Created, Title, Descriptionn, Country, Epoch, Exhibition_Name)
VALUES
('001','Pietro Torrigiano','1520','Sculpted Bust','Realistic bust sculpture.','Italy','Renaissance','The Renaissance Masters: Sculpture and Portraits'),
('002','Hans Holbein the Younger','1532','Portrait of Henry VIII','Realistic portrait of Henry VIII.','Germany','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('003','Robert Peake the Elder','1605','Lady Elizabeth Talbot','Portrait of Lady Elizabeth Talbot.','England','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('004','Leonardo da Vinci','1515','Vitruvian Man','Famous depiction of the proportions of the human body.','England','Modern','Cubism and the Trompe l''Oeil Tradition'),
('005','Juan Gris','1920','Guitar and Fruit Dish','Cubist still life featuring a guitar and fruit.','Spain','Cubism','Cubism and the Trompe l''Oeil Tradition'),
('006','Isidore Leroy','1955','Color Symphony','Abstract composition exploring color and movement.','France','Post-Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('007','Pablo Picasso','1937','Guernica','Iconic anti-war painting.','Spain','Modern','Cubism and the Trompe l''Oeil Tradition'),
('008','Pietro Torrigiano','1518','David','Sculpture of David from the biblical story.','Italy','Renaissance','The Renaissance Masters: Sculpture and Portraits'),
('009','Hans Holbein the Younger','1538','Anne of Cleves','Portrait of Anne of Cleves.','Germany','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('010','Robert Peake the Elder','1610','Queen Elizabeth I','Portrait of Queen Elizabeth I.','England','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('011','Leonardo da Vinci','1498','The Last Supper','Famous mural depicting the last supper of Jesus.','Italy','Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('012','Juan Gris','1921','Violin and Candlestick','Cubist still life featuring a violin and candlestick.','Spain','Cubism','Cubism and the Trompe l''Oeil Tradition'),
('013','Isidore Leroy','1960','Abstract Harmony','Abstract artwork exploring harmony in color.','France','Post-Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('014','Pablo Picasso','1917','Three Musicians','Cubist representation of three musicians.','Spain','Modern','Cubism and the Trompe l''Oeil Tradition'),
('015','Pietro Torrigiano','1525','Pieta','Sculpture depicting the Virgin Mary holding the body of Jesus.','Italy','Renaissance','The Renaissance Masters: Sculpture and Portraits'),
('016','Hans Holbein the Younger','1536','Portrait of Thomas More','Realistic portrait of Sir Thomas More.','Germany','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('017','Robert Peake the Elder','1608','Sir Walter Raleigh','Portrait of Sir Walter Raleigh.','England','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('018','Leonardo da Vinci','1503','Mona Lisa','Iconic portrait of Lisa Gherardini.','Italy','Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('019','Juan Gris','1922','Man in Cafe','Cubist representation of a man in a cafe.','Spain','Cubism','Cubism and the Trompe l''Oeil Tradition'),
('020','Isidore Leroy','1965','Dynamic Rhythm','Abstract artwork exploring dynamic rhythm.','France','Post-Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('021','Pablo Picasso','1935','Weeping Woman','Cubist representation of a weeping woman.','Spain','Modern','Cubism and the Trompe l''Oeil Tradition'),
('022','Pietro Torrigiano','1522','Baptism of Christ','Sculptural representation of the baptism of Christ.','Italy','Renaissance','The Renaissance Masters: Sculpture and Portraits'),
('023','Hans Holbein the Younger','1535','Portrait of Christina of Denmark','Realistic portrait of Christina of Denmark.','Germany','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('024','Robert Peake the Elder','1615','Sir Francis Drake','Portrait of Sir Francis Drake.','England','Renaissance','The Tudors: Art and Majesty in Renaissance England'),
('025','Leonardo da Vinci','1519','St. John the Baptist','Sculptural representation of St. John the Baptist.','Italy','Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('026','Juan Gris','1924','The Sunblind','Cubist representation of a sunblind.','Spain','Cubism','Cubism and the Trompe l''Oeil Tradition'),
('027','Isidore Leroy','1970','Chromatic Composition','Abstract artwork exploring chromatic composition.','France','Post-Renaissance','Cubism and the Trompe l''Oeil Tradition'),
('028','Pablo Picasso','1940','Woman with Yellow Hair','Cubist representation of a woman with yellow hair.','Spain','Modern','Cubism and the Trompe l''Oeil Tradition');

DROP TABLE IF EXISTS EXHIBITION;
CREATE TABLE EXHIBITION
( Namee              VARCHAR(200)        NOT NULL,
  End_date           VARCHAR(20)        NOT NULL,
  Start_date         VARCHAR(20)        NOT NULL,
  
  PRIMARY KEY (Namee));
  
INSERT INTO EXHIBITION (Namee, End_date, Start_date)
VALUES
('The Renaissance Masters: Sculpture and Portraits','15-08-1977','10-08-1977'),
('The Tudors: Art and Majesty in Renaissance England','11-12-1990','08-12-1990'),
('Cubism and the Trompe l''Oeil Tradition','14-08-2000','11-08-2000');
  
DROP TABLE IF EXISTS PAINTING;
CREATE TABLE PAINTING
(
  ID_no  INT  NOT NULL,
  Paint_type VARCHAR(20),
  Style VARCHAR(30),
  Drawn_on VARCHAR(30),
  
  PRIMARY KEY (ID_no),
  FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no));
  
INSERT INTO PAINTING (ID_no, Paint_type, Drawn_on, Style)
VALUES
('002','Oil','Canvas','Realistic'),
('005','Conte',null,'Realistic'),
('008','Watercolor','Paper','Abstract'),
('010','Acrylic','Metal','Abstract'),
('014','Oil','Canvas','Cubist'),
('021','Oil','Canvas','Cubist'),
('027','Oil','Canvas','Abstract'),
('028','Acrylic','Canvas','Cubist');

  
DROP TABLE IF EXISTS SCULPTURE;
CREATE TABLE SCULPTURE
(
  ID_no     INT   NOT NULL,  
  Height    VARCHAR(30),
  Weight    VARCHAR(30),
  Style     VARCHAR(30),
  Material_used  VARCHAR(30),
  
  PRIMARY KEY (ID_no),
  FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no));
  
INSERT INTO SCULPTURE(ID_no, Material_used, Height, Weight, Style)
VALUES
('001','Bronze','283 cm','14.9 kg','Realistic'),
('004','Stoneware','49.8 cm',null,'Realistic'),
('008','Marble','152 cm','30 kg','Cubist'),
('015','Marble','180 cm','40 kg','Realistic'),
('022','Bronze','300 cm','20 kg','Realistic'),
('025','Wood','120 cm','15 kg','Cubist'),
('026','Stone','160 cm','25 kg','Abstract'),
('028','Bronze','200 cm','18 kg','Cubist');
  
DROP TABLE IF EXISTS STATUE;
CREATE TABLE STATUE
(
  ID_no     INT   NOT NULL,  
  Height    VARCHAR(30),
  Weight    VARCHAR(30),
  Style     VARCHAR(30),
  Materialused  VARCHAR(30),
  
  PRIMARY KEY (ID_no),
  FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no));
  
INSERT INTO STATUE(ID_no, Materialused, Height, Weight, Style)
VALUES
('003','Bronze','131 cm','17.9 kg','Abstract'),
('007','Oak Wood','89 cm','12.7 kg','Modern'),
('014','Marble','160 cm','22 kg','Cubist'),
('016','Bronze','140 cm','16.5 kg','Realistic'),
('019','Stone','120 cm','18 kg','Cubist'),
('023','Bronze','170 cm','20 kg','Realistic'),
('024','Marble','150 cm','25 kg','Cubist'),
('028','Bronze','180 cm','21 kg','Cubist');
  
  
DROP TABLE IF EXISTS OTHERSS;
CREATE TABLE OTHERSS
(
  ID_no     INT   NOT NULL,  
  Style     VARCHAR(30),
  Typee     VARCHAR(30),
  
  PRIMARY KEY (ID_no),
  FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no));
  
INSERT INTO OTHERSS (ID_no, Typee, Style)
VALUES
('009','Sketch','Realistic'),
('012','Sketch','Cubist'),
('018','Print','Realistic'),
('020','Print','Cubist'),
('023','Sketch','Realistic'),
('026','Print','Abstract'),
('028','Sketch','Cubist');
  
DROP TABLE IF EXISTS COLLECTIONS;
CREATE TABLE COLLECTIONS
(
  C_Name          VARCHAR(100)      NOT NULL,
  Address        VARCHAR(100),
  Phone          VARCHAR(100),
  Typee          VARCHAR(100),
  Contact        VARCHAR(100),
  Descriptionn   VARCHAR(300),
  
  PRIMARY KEY (C_Name));
  
INSERT INTO COLLECTIONS (C_Name, Typee, Descriptionn, Address, Phone, Contact)
VALUES
('Collection of Renaissance Wonders', 'Museum', 'Home to a diverse array of Renaissance masterpieces.', '789 Art Boulevard, Renaissance City, RG 56789', '123-456-7890', 'Elizabeth'),
('Timeless Art Treasures', 'Gallery', 'Showcasing art that transcends epochs and styles.', '456 Masterpiece Lane, Artville, AV 67890', '987-654-3210', 'Alexander'),
('Sculpture Haven', 'Exhibit', 'Dedicated to the beauty and craftsmanship of sculptures.', '101 Sculptors Square Clayville, CL 12345', '555-123-4567', 'Michelangelo'),
('Portrait Gallery & Beyond', 'Gallery', 'Featuring an extensive collection of portraits and more.', '789 Canvas Street, Portrait City, PC 56789', '321-987-6543', 'Isabella'),
('Eclectic Art Oasis', 'Collection', 'A unique assembly of art objects from various epochs.', '202 Artistic Avenue, Fusionville, FU 67890', '111-222-3333', 'Leonardo');

  
DROP TABLE IF EXISTS PERMANENT_COLLECTION;
CREATE TABLE PERMANENT_COLLECTION
(
  ID_no           INT              NOT NULL, 
  Statuss         VARCHAR(100)     NOT NULL,
  Cost            INT,
  Date_acquired   VARCHAR(100),
 
  PRIMARY KEY (ID_no),
  FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no));
  
INSERT INTO PERMANENT_COLLECTION (ID_no, Statuss, Cost, Date_acquired)
VALUES
('001','On Loan',160,null),
('004','On Display',30,'13-02-2004'),
('005','On Display',90,'16-06-1990'),
('007','On Loan',1000,'03-01-1990'),
('008','Stored',298,null),
('009','On Display',30,'14-08-2000'),
('010','Stored',150,null),
('012','On Loan',200,null),
('013','On Display',50,'10-05-2005'),
('014','On Loan',300,null),
('016','Stored',120,null),
('017','On Display',80,'05-09-1995'),
('018','Stored',200,null),
('019','On Loan',180,null),
('020','On Display',40,'22-03-2008'),
('022','Stored',250,null),
('023','On Loan',220,null),
('025','On Display',60,'18-11-1999'),
('026','Stored',170,null),
('027','On Loan',400,null);
  
DROP TABLE IF EXISTS BORROWED;
CREATE TABLE BORROWED 
(
 ID_no     INT   NOT NULL,
 Collection_Name VARCHAR(100), 
 Date_borrowed INT, 
 Date_returned INT,
 
 PRIMARY KEY (ID_no),
 FOREIGN KEY(ID_no) REFERENCES ART_OBJECTS(Id_no),
 FOREIGN KEY(Collection_Name) REFERENCES COLLECTIONS(C_Name));

INSERT INTO BORROWED (ID_no, Collection_Name, Date_borrowed, Date_returned)
VALUES
('002', 'Collection of Renaissance Wonders', '1950', '1977'),
('003', 'Timeless Art Treasures', '1951', '1990'),
('006', 'Sculpture Haven', '2000', '2001'),
('011', 'Portrait Gallery & Beyond', '1997', '1999'),
('015', 'Eclectic Art Oasis', '2005', '2007'),
('021', 'Collection of Renaissance Wonders', '2015', '2018'),
('024', 'Sculpture Haven', '2012', '2014'),
('028', 'Portrait Gallery & Beyond', '2020', '2022');


DROP ROLE IF EXISTS db_admin@localhost, change_data@localhost, read_access@localhost;
CREATE ROLE db_admin@localhost, change_data@localhost, read_access@localhost;
GRANT ALL PRIVILEGES ON *.* TO db_admin@localhost;
GRANT SELECT, INSERT, UPDATE, DELETE ON *.* TO change_data@localhost;
GRANT Select ON *.* TO read_access@localhost;

DROP USER IF EXISTS museum_admin@localhost, data_entry@localhost, guest@localhost;
CREATE USER museum_admin@localhost IDENTIFIED WITH mysql_native_password BY 'admin';
CREATE USER data_entry@localhost IDENTIFIED WITH mysql_native_password BY 'data';
CREATE USER guest@localhost;
GRANT db_admin@localhost TO museum_admin@localhost;
GRANT change_data@localhost TO data_entry@localhost;
GRANT read_access@localhost TO guest@localhost;
SET DEFAULT ROLE ALL TO museum_admin@localhost;
SET DEFAULT ROLE ALL TO data_entry@localhost;
SET DEFAULT ROLE ALL TO guest@localhost;

GRANT CREATE USER ON *.* TO db_admin@localhost;
GRANT ROLE_ADMIN ON *.* TO db_admin@localhost;
FLUSH PRIVILEGES;

