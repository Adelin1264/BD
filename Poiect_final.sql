CREATE SEQUENCE CAMPIONAT_SEQ START WITH 1; 
CREATE SEQUENCE JUCATOR_SEQ START WITH 1; 
CREATE SEQUENCE MECI_SEQ START WITH 1;
CREATE SEQUENCE ECHIPA_SEQ START WITH 1; 
CREATE SEQUENCE ANTRENOR_SEQ START WITH 1; 
CREATE SEQUENCE SPONSOR_SEQ START WITH 1; 
CREATE SEQUENCE STADION_SEQ START WITH 1; 
CREATE SEQUENCE ECHIPA_ARBITRAJ_SEQ START WITH 1;
CREATE SEQUENCE ARBITRU_SEQ START WITH 1;

CREATE TABLE CAMPIONAT (
    id_campionat INT PRIMARY KEY,
    nume_campionat VARCHAR2(30),
    sezon VARCHAR2(30),
    locatie_campionat VARCHAR2(30)
);

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Premier League', '2023/2024', 'Anglia');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Champions League', '2023/2024', 'Europa');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'La Liga', '2023/2024', 'Spania');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Bundesliga', '2023/2024', 'Germania');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Serie A', '2023/2024', 'Italia');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Ligue 1', '2023/2024', 'Franta');

INSERT INTO CAMPIONAT (id_campionat, nume_campionat, sezon, locatie_campionat)
VALUES (CAMPIONAT_SEQ.NEXTVAL, 'Superliga', '2023/2024', 'Romania');

SELECT * FROM CAMPIONAT;


CREATE TABLE ECHIPA (
    id_echipa INT PRIMARY KEY,
    nume_echipa VARCHAR2(30),
    nr_puncte INT,
    golaveraj INT
);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Manchester City', 91, 62);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Manchester United', 60, -1);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Chelsea', 63, 14);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Liverpool', 82, 45);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Arsenal', 89, 62);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Tottenham', 66, 13);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Real Madrid', 95, 61);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Barcelona', 85, 35);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Atletico Madrid', 76, 27);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Bayern Munchen', 72, 49);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Borussia Dortmund', 63, 25);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Inter Milano', 94, 67);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'AC Milan', 75, 27);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Juventus', 71, 23);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Napoli', 53, 7);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'PSG', 76, 48);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'FCSB', 49, 1);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'CFR Cluj', 46, 5);

INSERT INTO ECHIPA (id_echipa, nume_echipa, nr_puncte, golaveraj)
VALUES (ECHIPA_SEQ.NEXTVAL, 'Farul Constanta', 36, -1);

SELECT * FROM ECHIPA;

CREATE TABLE JUCATOR (
    id_jucator INT PRIMARY KEY,
    id_echipa INT,
    nume_jucator VARCHAR2(30),
    pozitii VARCHAR2(30),
    nationalitate_jucator VARCHAR2(30),
    varsta INT,
    goluri INT,
    pase_decisive INT,
    FOREIGN KEY (id_echipa) REFERENCES ECHIPA(id_echipa)
);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 1, 'Kevin De Bruyne', 'Mijlocas', 'Belgian', 32, 5, 12);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 1, 'Erling Haaland', 'Atacant', 'Norvegian', 23, 24, 3);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 2, 'Bruno Fernandes', 'Mijlocas', 'Portughez', 29, 10, 9);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 2, 'Marcus Rashford', 'Atacant', 'Englez', 26, 14, 6);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 4, 'Mohamed Salah', 'Atacant', 'Egiptean', 31, 20, 8);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 4, 'Virgil van Dijk', 'Fundas', 'Olandez', 32, 3, 1);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 4, 'Alisson Becker', 'Portar', 'Brazilian', 33, 0, 1);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 6, 'Harry Kane', 'Atacant', 'Englez', 30, 21, 4);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 6, 'Heung-Min Son', 'Atacant', 'Coreean', 31, 17, 7);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 6, 'Radu Dragusin', 'Fundas', 'Roman', 23, 1, 1);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 5, 'Bukayo Saka', 'Mijlocas', 'Englez', 22, 12, 10);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 5, 'Gabriel Jesus', 'Atacant', 'Brazilian', 27, 9, 5);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 3, 'Mason Mount', 'Mijlocas', 'Englez', 25, 8, 11);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 3, 'NGolo Kante', 'Mijlocas', 'Francez', 33, 2, 3);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 7, 'Karim Benzema', 'Atacant', 'Francez', 36, 19, 6);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 7, 'Luka Modric', 'Mijlocas', 'Croat', 38, 4, 10);


INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 8, 'Lionel Messi', 'Atacant', 'Argentinian', 37, 18, 12);

INSERT INTO JUCATOR (id_jucator, id_echipa, nume_jucator, pozitii, nationalitate_jucator, varsta, goluri, pase_decisive)
VALUES (JUCATOR_SEQ.NEXTVAL, 8, 'Frenkie de Jong', 'Mijlocas', 'Olandez', 27, 5, 8);

SELECT * FROM JUCATOR;


CREATE TABLE ANTRENOR (
    id_antrenor INT PRIMARY KEY,
    id_echipa INT,
    nume_antrenor VARCHAR2(30),
    nationalitate_antrenor VARCHAR2(30),
    experienta_antrenor INT,
    FOREIGN KEY (id_echipa) REFERENCES ECHIPA(id_echipa)
);


INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 1, 'Pep Guardiola', 'Spaniol', 15);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 5, 'Mikel Arteta', 'Spaniol', 4);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 2, 'Erik ten Hag', 'Olandez', 10);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 6, 'Ange Postecoglou', 'Australian', 24);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 3, 'Mauricio Pochettino', 'Argentinian', 14);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 4, 'Jurgen Klopp', 'German', 23);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 7, 'Carlo Ancelotti', 'Italian', 28);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 8, 'Xavi', 'Spaniol', 3);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 9, 'Diego Simeone', 'Argentinian', 19);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 16, 'Luis Enrique', 'Spaniol', 12);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 10, 'Thomas Tuchel', 'German', 13);

INSERT INTO ANTRENOR (id_antrenor, id_echipa, nume_antrenor, nationalitate_antrenor, experienta_antrenor)
VALUES (ANTRENOR_SEQ.NEXTVAL, 11, 'Edin Terziæ', 'German', 3);

SELECT * FROM ANTRENOR;


CREATE TABLE STADION (
    id_stadion INT PRIMARY KEY,
    id_echipa INT,
    nume_stadion VARCHAR2(30),
    capacitate INT,
    oras VARCHAR2(30),
    FOREIGN KEY (id_echipa) REFERENCES ECHIPA(id_echipa)
);

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 1, 'Etihad Stadium', 55017, 'Manchester');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 2, 'Old Trafford', 74879, 'Manchester');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 4, 'Anfield', 54074, 'Liverpool');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 5, 'Emirates Stadium', 60260, 'Londra');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 6, 'Tottenham Hotspur Stadium', 62850, 'Londra');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 3, 'Stamford Bridge', 41837, 'Londra');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 7, 'Santiago Bernabeu Stadium', 81044, 'Madrid');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 9, 'Wanda Metropolitano', 68456, 'Madrid');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 8, 'Camp Nou', 99354, 'Barcelona');

INSERT INTO STADION (id_stadion, id_echipa, nume_stadion, capacitate, oras)
VALUES (STADION_SEQ.NEXTVAL, 10, 'Allianz Arena', 75000, 'Munchen');

SELECT * FROM STADION;


CREATE TABLE SPONSOR (
    id_sponsor INT PRIMARY KEY,
    nume_sponsor VARCHAR2(30),
    industrie VARCHAR2(30),
    tara VARCHAR2(30)
);


INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Etihad Airways', 'Aviatie', 'EAU');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'TeamViewer', 'Software', 'Germania');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Standard Chartered', 'Banking', 'UK');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Emirates', 'Aviatie', 'EAU');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'AIA', 'Asigurari', 'Hong Kong');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Three', 'Telecomunicatii', 'UK');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Emirates', 'Aviatie', 'UAE');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Plus500', 'Finante', 'Israel');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Rakuten', 'E-commerce', 'Japonia');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Deutsche Telekom', 'Telecomunicatii', 'Germania');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'HP', 'Tehnologie', 'SUA');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Adidas', 'Imbracaminte sportiva', 'Germania');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Nike', 'Imbracaminte sportiva', 'SUA');

INSERT INTO SPONSOR (id_sponsor, nume_sponsor, industrie, tara)
VALUES (SPONSOR_SEQ.NEXTVAL, 'Puma', 'Imbracaminte sportiva', 'Germania');

SELECT * FROM SPONSOR;

CREATE TABLE ECHIPA_ARBITRAJ (
    id_echipa_arbitraj INT PRIMARY KEY,
    nationalitate_arbitraj VARCHAR2(30)
);

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Italia');

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Spania');

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Germania');

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Anglia');

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Franta');

INSERT INTO ECHIPA_ARBITRAJ (id_echipa_arbitraj, nationalitate_arbitraj)
VALUES (ECHIPA_ARBITRAJ_SEQ.NEXTVAL, 'Olanda');

SELECT * FROM ECHIPA_ARBITRAJ;


CREATE TABLE ARBITRU (
    id_arbitru INT PRIMARY KEY,
    id_echipa_arbitraj INT,
    nume_arbitru VARCHAR2(30),
    experienta_arbitru INT,
    FOREIGN KEY (id_echipa_arbitraj) REFERENCES ECHIPA_ARBITRAJ(id_echipa_arbitraj)
);


INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 1, 'Nicola Rizzoli', 20);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 1, 'Daniele Orsato', 18);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 1, 'Gianluca Rocchi', 17);

INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 2, 'Antonio Mateu Lahoz', 16);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 2, 'Carlos Del Cerro Grande', 15);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 2, 'Alejandro Hernandez Hernandez', 12);

INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 3, 'Felix Brych', 20);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 3, 'Deniz Aytekin', 15);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 3, 'Daniel Siebert', 12);

INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 4, 'Michael Oliver', 16);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 4, 'Anthony Taylor', 14);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 4, 'Martin Atkinson', 20);

INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 5, 'Clement Turpin', 14);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 5, 'Ruddy Buquet', 16);
INSERT INTO ARBITRU (id_arbitru, id_echipa_arbitraj, nume_arbitru, experienta_arbitru)
VALUES (ARBITRU_SEQ.NEXTVAL, 5, 'Benoit Bastien', 10);

SELECT * FROM ARBITRU;

CREATE TABLE MECI (
    id_meci INT PRIMARY KEY,
    id_echipa_gazda INT,
    id_echipa_oaspete INT,
    id_echipa_arbitraj INT,
    id_stadion INT,
    data DATE,
    scor VARCHAR2(30),
    FOREIGN KEY (id_echipa_gazda) REFERENCES ECHIPA(id_echipa),
    FOREIGN KEY (id_echipa_oaspete) REFERENCES ECHIPA(id_echipa),
    FOREIGN KEY (id_echipa_arbitraj) REFERENCES ECHIPA_ARBITRAJ(id_echipa_arbitraj),
    FOREIGN KEY (id_stadion) REFERENCES STADION(id_stadion)
);


INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 1, 2, 4, 1, TO_DATE('2024-05-10', 'YYYY-MM-DD'), '2-1');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 3, 4, 4, 6, TO_DATE('2024-05-12', 'YYYY-MM-DD'), '1-1');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 5, 6, 4, 4, TO_DATE('2024-05-14', 'YYYY-MM-DD'), '3-2');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 7, 8, 2, 7, TO_DATE('2024-05-16', 'YYYY-MM-DD'), '1-0');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 9, 8, 2, 8, TO_DATE('2024-05-18', 'YYYY-MM-DD'), '2-2');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 10, 7, 5, 10, TO_DATE('2024-04-30', 'YYYY-MM-DD'), '2-2');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 8, 3, 1, 9, TO_DATE('2024-06-03', 'YYYY-MM-DD'), '1-0');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 4, 9, 5, 3, TO_DATE('2024-06-05', 'YYYY-MM-DD'), '2-1');

INSERT INTO MECI (id_meci, id_echipa_gazda, id_echipa_oaspete, id_echipa_arbitraj, id_stadion, data, scor)
VALUES (MECI_SEQ.NEXTVAL, 5, 10, 2, 4, TO_DATE('2024-06-07', 'YYYY-MM-DD'), '0-1');


SELECT * FROM MECI;


CREATE TABLE CAMPIONAT_ECHIPA (
    id_campionat INT,
    id_echipa INT,
    PRIMARY KEY (id_campionat, id_echipa),
    FOREIGN KEY (id_campionat) REFERENCES CAMPIONAT(id_campionat),
    FOREIGN KEY (id_echipa) REFERENCES ECHIPA(id_echipa)
);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 1);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 2);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 3);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 4);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 5);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (1, 6);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 1);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 2);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 3);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 4);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 5);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 7);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 8);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 9);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 10);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (2, 11);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (3, 7);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (3, 8);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (3, 9);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (4, 10);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (4, 11);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (5, 12);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (5, 13);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (5, 14);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (5, 15);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (6, 16);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (7, 17);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (7, 18);

INSERT INTO CAMPIONAT_ECHIPA (id_campionat, id_echipa)
VALUES (7, 19);

SELECT * FROM CAMPIONAT_ECHIPA;


CREATE TABLE JUCATOR_MECI (
    id_jucator INT,
    id_meci INT,
    PRIMARY KEY (id_jucator, id_meci),
    FOREIGN KEY (id_jucator) REFERENCES JUCATOR(id_jucator),
    FOREIGN KEY (id_meci) REFERENCES MECI(id_meci)
);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (1, 1);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (2, 1);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (3, 1);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (4, 1);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (13, 2);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (14, 2);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (5, 2);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (6, 2);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (7, 2);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (11, 3);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (12, 3);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (8, 3);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (9, 3);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (10, 3);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (15, 4);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (16, 4);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (17, 4);

INSERT INTO JUCATOR_MECI (id_jucator, id_meci)
VALUES (18, 4);

SELECT * FROM JUCATOR_MECI;


CREATE TABLE SPONSORIZARE (
    id_echipa INT,
    id_meci INT,
    id_sponsor INT,
    PRIMARY KEY (id_echipa, id_meci, id_sponsor),
    FOREIGN KEY (id_echipa) REFERENCES ECHIPA(id_echipa),
    FOREIGN KEY (id_meci) REFERENCES MECI(id_meci),
    FOREIGN KEY (id_sponsor) REFERENCES SPONSOR(id_sponsor)
);


INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (1, 1, 1);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (2, 1, 2);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (1, 1, 14);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (2, 1, 12);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (3, 2, 6);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (4, 2, 3);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (5, 3, 4);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (6, 3, 5);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (7, 4, 7);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (8, 4, 9);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (7, 4, 12);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (8, 4, 13);

INSERT INTO SPONSORIZARE (id_echipa, id_meci, id_sponsor)
VALUES (7, 4, 11);

SELECT * FROM SPONSORIZARE;


--CERERE AFISARE GOLGHETER PENTRU FIECARE CAMPIONAT 
--Sã se afi?eze pentru fiecare campionat id-ul, numele, golgheterii ?i numãrul de goluri înscrise de ace?tia. Un golgheter al unui campionat este un jucãtor care joacã la o echipã din acel campionat ?i are cel mai mare numãr de goluri. Dacã nu existã înregistrãri astfel încât sã se determine golgheterul, se va afi?a ‘N/A’.
SELECT 
    CONCAT2.id_campionat,
    CONCAT2.nume_campionat,
    NVL(CONCAT3.nume_jucator, 'N/A') nume_jucator,
    NVL(CONCAT3.goluri, 0) goluri
FROM(
    SELECT
        C.id_campionat,
        C.nume_campionat,
        CONCAT.max_gol_camp MAX_GOLURI
    FROM (
        SELECT 
            CE.id_campionat,
            MAX(max_gol_ech) max_gol_camp
        FROM (
            SELECT 
                E.id_echipa,
                MAX(J.goluri) max_gol_ech
            FROM JUCATOR J
            RIGHT JOIN ECHIPA E ON E.id_echipa = J.id_echipa
            GROUP BY E.id_echipa
            ) JE
        RIGHT JOIN CAMPIONAT_ECHIPA CE ON JE.id_echipa = CE.id_echipa
        GROUP BY CE.id_campionat
        ) CONCAT
    RIGHT JOIN CAMPIONAT C ON C.id_campionat = CONCAT.id_campionat
    ) CONCAT2
    LEFT JOIN 
    (
    SELECT 
        J2.id_jucator,
        J2.nume_jucator,
        J2.goluri,
        E2.nume_echipa,
        CE2.id_campionat
    FROM JUCATOR J2 
    RIGHT JOIN ECHIPA E2 ON J2.id_echipa = E2.id_echipa 
    RIGHT JOIN CAMPIONAT_ECHIPA CE2 ON E2.id_echipa = CE2.id_echipa
    )CONCAT3
    ON CONCAT2.id_campionat = CONCAT3.id_campionat AND CONCAT3.goluri = CONCAT2.MAX_GOLURI;
    
    
--CERERE 2
--Sã se determine, pentru fiecare meci, arbitrul central, acesta fiind arbitrul cu id-ul cel mai mic dintr-o echipã de arbitraj, apoi sã se afi?eze pentru fiecare meci id-ul acestuia, echipele care joaca sub forma ‘Ech1 vs Ech2’, numele arbitrului central, antrenorilor, data când este introdus scorul (prima luni de la data când s-a jucat meciul) în formatul ‘DD-MM-YYYY’ ?i scorul meciului. 
SELECT * FROM ARBITRU;

SELECT 
    EA.id_echipa_arbitraj,
    EA.nationalitate_arbitraj,
    (
        SELECT 
            A2.nume_arbitru
        FROM(
            SELECT
                *
            FROM ARBITRU A
            WHERE A.id_echipa_arbitraj = EA.id_echipa_arbitraj
            ORDER BY A.id_arbitru
            ) A2
        WHERE ROWNUM = 1
    ) arbitru_central
FROM ECHIPA_ARBITRAJ EA;



SELECT 
    M.id_meci,
    CONCAT(CONCAT(
    (
        SELECT
            E.nume_echipa
        FROM ECHIPA E
        WHERE M.id_echipa_gazda = E.id_echipa
    ),
    ' vs '),
    (
        SELECT
            E2.nume_echipa
        FROM ECHIPA E2
        WHERE M.id_echipa_oaspete = E2.id_echipa
    )
    )adversare,
    CONCAT1.arbitru_central,
    (
        SELECT 
            ANTR.nume_antrenor
        FROM ECHIPA E3
        JOIN ANTRENOR ANTR ON E3.id_echipa = ANTR.id_echipa
        WHERE M.id_echipa_gazda = ANTR.id_echipa
    )antrenor_gazde,
    (
        SELECT 
            ANTR2.nume_antrenor
        FROM ECHIPA E4
        JOIN ANTRENOR ANTR2 ON E4.id_echipa = ANTR2.id_echipa
        WHERE M.id_echipa_oaspete = ANTR2.id_echipa
    )antrenor_oaspeti,
    TO_CHAR(NEXT_DAY(M.data, 'Monday'),'DD-MM-YYYY') data_inregistare_scor,
    M.scor
FROM MECI M
JOIN (
        SELECT 
        EA.id_echipa_arbitraj,
        EA.nationalitate_arbitraj,
        (
            SELECT 
                A2.nume_arbitru
            FROM(
                SELECT
                    *
                FROM ARBITRU A
                WHERE A.id_echipa_arbitraj = EA.id_echipa_arbitraj
                ORDER BY A.id_arbitru
                ) A2
                WHERE ROWNUM = 1
                 ) arbitru_central
        FROM ECHIPA_ARBITRAJ EA
    )CONCAT1 ON M.id_echipa_arbitraj = CONCAT1.id_echipa_arbitraj;
    

--CERERE 3
--Sã se afi?eze id-ul ?i experien?a medie a fiecãrei echipe de arbitraj care are o medie mai mare de experien?ã decât media de experien?ã a antrenorilor echipelor care au jucat în meciurile arbitrate de ei.
SELECT 
    A.id_echipa_arbitraj,
    ROUND(AVG(A.experienta_arbitru), 2) exp_medie_arbitraj
FROM ARBITRU A
GROUP BY A.id_echipa_arbitraj
HAVING AVG(A.experienta_arbitru)>(
        SELECT 
            CONCAT2.experienta_medie_antr
        FROM(   
            SELECT 
                CONCAT1.id_echipa_arbitraj,
                AVG(ANTR.experienta_antrenor) experienta_medie_antr
            FROM ( 
                    SELECT 
                        A2.id_echipa_arbitraj, AVG(A2.experienta_arbitru)
                    FROM ARBITRU A2
                    GROUP BY A2.id_echipa_arbitraj
                ) CONCAT1
            JOIN ECHIPA_ARBITRAJ EA2 ON EA2.id_echipa_arbitraj = CONCAT1.id_echipa_arbitraj
            JOIN MECI M ON EA2.id_echipa_arbitraj = M.id_echipa_arbitraj
            JOIN ECHIPA E ON M.id_echipa_gazda = E.id_echipa OR M.id_echipa_oaspete = E.id_echipa
            JOIN ANTRENOR ANTR ON E.id_echipa = ANTR.id_echipa
            GROUP BY CONCAT1.id_echipa_arbitraj
            ) CONCAT2
            WHERE CONCAT2.id_echipa_arbitraj = A.id_echipa_arbitraj
            );


--CERERE 4
--Sã se afi?eze rezultatele echipei Barcelona, anume sã se afi?eze id-ul ?i data meciurilor, numele echipelor adverse, rezultatul în sine (înfrângere, egal, victorie) ?i scorul.
WITH T AS(
    SELECT 
        E1.id_echipa
    FROM ECHIPA E1
    WHERE E1.nume_echipa = 'Barcelona'
    )
SELECT
    M3.id_meci,
    M3.data,
    (
        SELECT
            E2.nume_echipa
        FROM ECHIPA E2
        WHERE M3.adversara = E2.id_echipa
    ) echipa_adversa,
    
    CASE
        WHEN M3.goluri_barca < M3.goluri_adversar THEN 'infrangere'
        WHEN M3.goluri_barca > M3.goluri_adversar THEN 'victorie'
        ELSE 'egal'
    END rezultat,
    
    TO_CHAR(M3.goluri_barca) || '-' || TO_CHAR(M3.goluri_adversar) scor
FROM (
        SELECT
            M2.id_meci,
            M2.data,
            DECODE(M2.id_echipa_gazda, (SELECT * FROM T), M2.id_echipa_oaspete, M2.id_echipa_gazda) adversara,
            DECODE(M2.id_echipa_gazda, (SELECT * FROM T), M2.nr1, M2.nr2) goluri_barca,
            DECODE(M2.id_echipa_gazda, (SELECT * FROM T), M2.nr2, M2.nr1) goluri_adversar
        FROM(
            SELECT 
                M.id_meci,
                M.data,
                M.id_echipa_gazda,
                M.id_echipa_oaspete,
                TO_NUMBER(SUBSTR(M.scor, 1, 1)) nr1,
                TO_NUMBER(SUBSTR(M.scor, 3, 1)) nr2
            FROM MECI M
            WHERE M.id_echipa_gazda = (SELECT * FROM T) OR M.id_echipa_oaspete = (SELECT * FROM T)
        )M2
    )M3;

--CERERE 5
--Sã se afi?eze informa?ii despre sponsorii care au sponsorizat o echipã într-un meci jucat pe un stadion din Londra sau Madrid. 
SELECT * FROM SPONSOR;
SELECT * FROM SPONSORIZARE;
SELECT * FROM STADION;

WITH T AS(
        SELECT
            S.id_echipa
        FROM STADION S
        WHERE S.oras = 'Londra' OR S.oras = 'Madrid'
        )
SELECT
    SPONS.id_sponsor,
    SPONS.nume_sponsor,
    SPONS.industrie,
    SPONS.tara
FROM
    (
    SELECT 
        *
    FROM MECI M 
    JOIN SPONSORIZARE SPONZ ON SPONZ.id_meci = M.id_meci
    WHERE M.id_echipa_gazda IN (SELECT * FROM T)
    )CONCAT1
JOIN SPONSOR SPONS ON SPONS.id_sponsor = CONCAT1.id_sponsor;

--13
--OPERATIE 1
--Actualizarea coloanei “capacitate” din tabela STADION pentru stadioanele a cãror echipã a ob?inut mai mult de 80 de puncte prin cresterea valorii ini?iale cu 2000.
SELECT * FROM ECHIPA;
SELECT * FROM STADION;

UPDATE STADION
SET capacitate = capacitate + 2000
WHERE id_echipa IN (
        SELECT 
            E.id_echipa
        FROM ECHIPA E
        WHERE E.nr_puncte > 80
        );
        
SELECT * FROM STADION;

--OPERATIA 2
--?tergerea antrenorilor din tabela ANTRENOR care apar?ine de o echipã cu stadion în ora?ul Liverpool.
SELECT * FROM ANTRENOR;

DELETE FROM ANTRENOR
WHERE id_echipa IN(
                    SELECT 
                        S.id_echipa
                    FROM STADION S
                    WHERE S.oras = 'Liverpool'
            )
            
--OPERATIA 3
--Cre?terea cu 2 ani a experien?ei arbitrilor din Italia, din tabela ARBITRU.
SELECT * FROM ARBITRU;

UPDATE ARBITRU
SET experienta_arbitru = experienta_arbitru + 2
WHERE id_echipa_arbitraj IN (
        SELECT 
            E.id_echipa_arbitraj
        FROM ECHIPA_ARBITRAJ E
        WHERE E.nationalitate_arbitraj = 'Italia'
        );
        
--EX 14
--Crearea vizualizãrii “VIZ_ANTRENOR” cu informa?ii despre antrenorii care apar?in de o echipã din Premier League, specificând ?i echipa la care sunt.
CREATE OR REPLACE VIEW VIZ_ANTRENOR AS
    SELECT 
        A.id_antrenor,
        A.nume_antrenor,
        A.experienta_antrenor, 
        E.id_echipa, 
        E.nume_echipa
    FROM ANTRENOR A
    JOIN ECHIPA E ON E.id_echipa = A.id_echipa
    JOIN CAMPIONAT_ECHIPA CE ON E.id_echipa = CE.id_echipa
    JOIN CAMPIONAT C ON C.id_campionat = CE.id_campionat AND C.nume_campionat = 'Premier League'
   
SELECT * FROM VIZ_ANTRENOR;

UPDATE VIZ_ANTRENOR
SET experienta_antrenor = experienta_antrenor + 1
WHERE nume_echipa LIKE 'A%';

UPDATE VIZ_ANTRENOR
SET id_echipa = id_echipa + 1
WHERE id_echipa IN (
            SELECT 
                CE.id_echipa
            FROM CAMPIONAT_ECHIPA CE
            JOIN CAMPIONAT C ON C.id_campionat = CE.id_campionat AND C.nume_campionat = 'Champions League'
            );

--EX 15
--CERERE 3
--Sã se determine top 3 campionate care au un golaveraj mediu (media golaverajelor echipelor ce participã in acel campionat) peste 35 ?i sã se afi?eze id-ul, numele campionatului ?i golaverajul mediu sub formã de clasament. 
SELECT
    *
FROM (
    SELECT
        C.id_campionat,
        C.nume_campionat,
        CONCAT1.golaveraj_mediu
    FROM(
        SELECT 
            CE.id_campionat,
            ROUND(AVG(E.golaveraj), 2) golaveraj_mediu
        FROM CAMPIONAT_ECHIPA CE
        JOIN ECHIPA E ON E.id_echipa = CE.id_echipa
        GROUP BY CE.id_campionat 
        HAVING AVG(E.golaveraj) > 35
        )CONCAT1
    JOIN CAMPIONAT C ON C.id_campionat = CONCAT1.id_campionat
    ORDER BY CONCAT1.golaveraj_mediu DESC
    )
WHERE ROWNUM <= 3;


--CERERE 1
--Se cere afi?area informa?iilor despre campionatele înregistrate în baza de date, anume id-ul, numele, loca?ia ?i capacitatea totalã a stadioanelor echipelor care participã la el, în ordinea descrescãtoare a sumei totalã de locuri. Pentru campionatele pentru care nu existã înregistrãri suma totalã va fi 0.
SELECT
    *
FROM (
    SELECT 
        C.id_campionat,
        C.nume_campionat,
        C.locatie_campionat,
        NVL(CONCAT1.capacitate_campionat, 0) capacitate_stadioane
    FROM (
            SELECT 
                CE.id_campionat,
                SUM(S.capacitate) capacitate_campionat
            FROM CAMPIONAT_ECHIPA CE
            LEFT OUTER JOIN ECHIPA E ON CE.id_echipa = E.id_echipa
            LEFT OUTER JOIN STADION S ON E.id_echipa = S.id_echipa
            GROUP BY CE.id_campionat
        )CONCAT1
    FULL OUTER JOIN CAMPIONAT C ON C.id_campionat = CONCAT1.id_campionat
    )
ORDER BY capacitate_stadioane DESC;

--CERERE 2
--Sã se determine antrenorii pentru toate echipele care au un numãr de puncte egal cu 95.
SELECT 
    A.id_antrenor,
    A.nume_antrenor
FROM ANTRENOR A
WHERE NOT EXISTS (
                SELECT 1
                FROM ECHIPA E
                WHERE E.nr_puncte = 95
                AND NOT EXISTS (
                    SELECT 1
                    FROM ANTRENOR A2
                    WHERE A2.id_antrenor = A.id_antrenor
                    AND A2.id_echipa = E.id_echipa
                )
                );


SELECT 
    C.id_campionat,
    COUNT(CONCAT1.id_echipa) numar_echipe
FROM(
    SELECT
        E.nume_echipa,
        CE.id_campionat,
        E.id_echipa
    FROM ECHIPA E
    JOIN CAMPIONAT_ECHIPA CE ON CE.id_echipa = E.id_echipa
    )CONCAT1
JOIN CAMPIONAT C ON C.id_campionat = CONCAT1.id_campionat
GROUP BY C.id_campionat
