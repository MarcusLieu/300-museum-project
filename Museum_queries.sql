USE MUSEUM;

/* 1) Show all tables and explain how they are related to one another (keys, triggers, etc.)*/
SHOW TABLES;
DESCRIBE ARTIST;
DESCRIBE ART_OBJECTS;
DESCRIBE EXHIBITION;
DESCRIBE PAINTING;
DESCRIBE SCULPTURE;
DESCRIBE STATUE;
DESCRIBE OTHERSS;
DESCRIBE COLLECTIONS;
DESCRIBE PERMANENT_COLLECTION;
DESCRIBE BORROWED;

/* 2) A basic retrieval query*/
SELECT Id_no, Artist_Name, Title
FROM ART_OBJECTS;

/* 3) A retrieval query with ordered results*/
SELECT Collection_Name, Date_borrowed
FROM BORROWED
ORDER BY Date_borrowed ASC;

/* 4) A nested retrieval query*/
SELECT Artist_Name, COUNT(*) AS Number_of_paintings
FROM ART_OBJECTS 
WHERE Artist_Name = 'Robert Peake the Elder'
HAVING COUNT(*) > 1;

/* 5) A retrieval query using joined tables*/
SELECT Artist_Name
FROM ART_OBJECTS
JOIN PAINTING ON ART_OBJECTS.Id_no = PAINTING.ID_no;

/* 6) An update operation with any necessary triggers*/
UPDATE OTHERSS, ART_OBJECTS
SET Year_Created = "1550"
WHERE OTHERSS.ID_no = ART_OBJECTS.Id_no;
SELECT * FROM ART_OBJECTS;

/* 7) A deletion operation with any necessary triggers*/
DELETE FROM PERMANENT_COLLECTION
WHERE Statuss = 'Stored';
SELECT * FROM PERMANENT_COLLECTION;
