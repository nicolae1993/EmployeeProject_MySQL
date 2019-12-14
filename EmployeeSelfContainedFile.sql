-- 2 Realizarea operatiilor LDD
-- - crearea tabelelor: create table (minim 4 tabele

create database if not exists proiect;

USE proiect;

create table job(
id_job int primary key auto_increment not null,
titlu varchar(35) not null);


create table locatie(
id_locatie int primary key auto_increment not null,
strada varchar(35) not null,
oras varchar(35) not null
);


create table departament(
id_departament int primary key auto_increment not null,
nume varchar(35) not null,
locatie_id int,
foreign key (locatie_id) references locatie(id_locatie)
);

create table angajat(
id_angajat int primary key auto_increment not null,
nume varchar(35) not null,
prenume varchar(35) not null,
email varchar(35) unique not null,
salariu decimal(8,2),
data_angajare date,
departament_id int,
foreign key (departament_id) references departament(id_departament),
job_id int,
foreign key (job_id) references job(id_job)
);

--  drop table // se poate decomenta si recreea tabelele dupa drop

 drop table angajat;
 drop table departament;
 drop table locatie;
 drop table job;


-- modificarea structurii tablelor (minin 5)

ALTER TABLE locatie
DROP COLUMN oras;

ALTER TABLE locatie
add COLUMN oras varchar(35) not null;

alter table locatie
rename adresa;

alter table adresa
rename locatie;

ALTER TABLE locatie
MODIFY COLUMN oras varchar(30);

ALTER TABLE locatie ADD INDEX (oras);

describe locatie;

-- ACTUALIZAREA DATELOR 
-- - insert (minim 10 înregistrări în fiecare tabelă)

-- tabela job

INSERT INTO job (id_job,titlu)
VALUES (null,'programator');

INSERT INTO job (id_job,titlu)
VALUES (null,'mecanic');

INSERT INTO job (id_job,titlu)
VALUES (null,'profesor');

INSERT INTO job (id_job,titlu)
VALUES (null,'doctor');

INSERT INTO job (id_job,titlu)
VALUES (null,'avocat');

INSERT INTO job (id_job,titlu)
VALUES (null,'hr');

INSERT INTO job (id_job,titlu)
VALUES (null,'contabil');

INSERT INTO job (id_job,titlu)
VALUES (null,'analist it');

INSERT INTO job (id_job,titlu)
VALUES (null,'paznic');

INSERT INTO job (id_job,titlu)
VALUES (null,'marketing');



-- tabela locatie

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Eminescu','Bucuresti');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Filipescu','Buzau');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Creanga','Iasi');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Slavici','Craiova');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Sperantei','Botosani');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Politehncii','Cluj');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Aviatiei','Constanta');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Muncii','Timisioara');


INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Eminescu','Bucuresti');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Eminescu','Bucuresti');

INSERT INTO locatie (id_locatie,strada,oras)
VALUES (null,'Eminescu','Bucuresti');

-- tabela departament

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'financiar',1);


INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'marketing',2);


INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'hr',3);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'it',4);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'legal',5);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'securitate',6);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'comercial',7);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'training',8);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'contabil',1);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'transport',9);

INSERT INTO departament (id_departament,nume,locatie_id)
VALUES (null,'sanatate',10);

-- inserare in angajat
INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Petcu','Dragos','petcu@yahoo.com',900,'2018-01-01',1,1);

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Lefter','Madalin','madalin@yahoo.com',1000,'2018-02-01',2,2);

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Petcu','Alin','alin@yahoo.com',1900,'2018-03-03',3,3);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Girban','Claudia','girban@yahoo.com',300,'2018-04-04',4,4);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Tache','Dragos','tache@yahoo.com',1500,'2018-04-10',5,5);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Stefan','Daniel','stefan@yahoo.com',2900,'2018-09-10',6,6);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Sinziana','Elena','sanzi@yahoo.com',750,'2018-03-09',7,7);

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Ionascu','Adrian','adita@yahoo.com',1200,'2018-01-01',8,8);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Dragomir','Alexandra','dragomir@yahoo.com',3500,'2018-09-10',9,9);


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'Vasile','Dragos','vas@yahoo.com',1300,'2018-02-09',10,10);


-- - update (minim 3 exemple)

update angajat set nume='Secuiu' where id_angajat=10;
update angajat set email='secuiu@gmail.com' where id_angajat=10;
update angajat set salariu=1900 where id_angajat=10;


-- - delete (minim 3 exemple)
/*
-- se poate verificare oricand /s-au inserat 'dummy tupluri'

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'DELETE','EXAMPLE','vas@yahoo.com',1300,'2018-02-09',10,10);

delete from angajat where id_angajat=11;


-- inserturi pentru a le putea sterge

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'DELETEME','EXAMPLE','vas@yahoo.com',1300,'2018-02-09',10,10);

SET SQL_SAFE_UPDATES = 0;

delete from angajat where nume='DELETEME';


INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'PLEASEDEL','EXAMPLE','vas@yahoo.com',9999,'2018-02-09',10,10);

delete from angajat where salariu=9999;

*/


-- INTEROGARI VARIATE CU SELECT 

-- operatori

select nume, prenume,truncate(salariu,0) as salariu from angajat where salariu between 1000 and 2000;
select nume, prenume, truncate(salariu,0) as salariu from angajat where salariu IN(1000,1500,2000);
select nume, prenume, truncate(salariu,0) as salariu from angajat where salariu not IN(1000,1500,2000);
select nume,prenume,salariu from angajat where prenume like '%os';
select nume,prenume, salariu from angajat where prenume not like 'Dragos';
select nume,prenume, salariu from angajat where salariu<500;

select nume,prenume, salariu from angajat where salariu>1000 order by salariu;

select nume,prenume,salariu from angajat where email is null;

-- functii matematice doar cateva
select floor(salariu) from angajat where id_angajat=1;
select ceil(salariu) from angajat where id_angajat=1;
select truncate(salariu,2) from angajat where id_angajat=1;
select round(salariu) from angajat where id_angajat=1;


-- functii agregata cele 5 de baza
-- folosire min max avg
select min(salariu) as minim,max(salariu) as maxim, truncate(avg(salariu),2) as mediu
from angajat
group by id_angajat;

-- folosire sum si count(*) pentru a lua toate elementele // exista posibiliatea sa fie null pe coloana din avg
-- si se pune * sa se ia toate
select truncate(sum(salariu)/count(*),0) as media_salariu
from angajat;

select sum(salariu) from angajat;

-- folosire de having cu group by

select nume,prenume,min(salariu) as minim,max(salariu) as maxim, truncate(avg(salariu),2) as mediu
from angajat
group by id_angajat
having minim>500
order by minim;


-- joinuri 

-- inner join
select nume,prenume,titlu from 
angajat inner join job 
on angajat.job_id=job.id_job;

-- lef join
-- se iau toate elementele din stanga si ce e la comun dreapta
select strada, oras, departament.nume
from locatie left join departament
on locatie.id_locatie=departament.locatie_id;


-- right join
-- se iau toate elementele din dreapta si ce e la comun stanga
select strada, oras, departament.nume
from locatie right join departament
on locatie.id_locatie=departament.locatie_id;


-- sub-interogări (minim 3 exemple)

--  1.angajati care lucreaza intr-un anume departament
select nume, prenume from angajat where departament_id= 
                                      (select id_departament from departament where nume='financiar');
-- 2.angajati care au un anume job
select nume,prenume from angajat where job_id=(select id_job from job where titlu='mecanic');

-- 3.  al 2lea cel mai mare salariu
select nume,prenume, max(salariu) from angajat where salariu<(select max(salariu) from angajat);

-- 5. View-uri (minim 1 exemplu)

-- VIEW EXEMPLU
create view AngajatiView as 
select * from angajat where salariu >2500;
select * from AngajatiView;

-- VIEW EXEMPLU
create view Joburi as
select nume,prenume,titlu from 
angajat inner join job 
on angajat.job_id=job.id_job
order by salariu desc;
select * from Joburi;


-- 6. Funcţii (minim 3 exemple)

DELIMITER $$
 -- functie pentru afisare maxim salariu
CREATE FUNCTION SalariuMaxim() RETURNS int
BEGIN
   DECLARE lvl int;
    select max(salariu) into lvl 
    from angajat;
   RETURN lvl;
END

delimiter ;

select SalariuMaxim();


-- 2 afisarea angajati dupa id-ul dat ca parametru actual
DELIMITER $$
CREATE FUNCTION GetAngajatById(id int) RETURNS varchar(50)
BEGIN

   
    declare v_nume varchar(35);
    declare v_prenume varchar(35);
    
    select nume,prenume into v_nume,v_prenume 
    from angajat
    where id_angajat=id;
   RETURN concat_ws('/ ',v_nume,v_prenume);
END

delimiter ;
select GetAngajatById(1);
select GetAngajatById(2);
select GetAngajatById(3);



-- 3  afisare Angajat -- Job

DELIMITER $$
CREATE FUNCTION getJobAngajat(id int)  RETURNS VARCHAR(100)
BEGIN

declare v_nume varchar(50);
declare v_prenume varchar(50);
declare v_titlu varchar(50);

select nume,prenume,titlu
into v_nume,v_prenume,v_titlu from
angajat inner join job 
on angajat.job_id=job.id_job
where id_angajat=id;
return concat_ws('/',v_nume,v_prenume,v_titlu);
END

delimiter ;

select getJobAngajat(1);
select getJobAngajat(2);
select getJobAngajat(3);



-- proceduri  

-- 1. aflare nr de angajati angajati
DELIMITER //
CREATE PROCEDURE afla_an_angajare_angajat(IN an_angajare YEAR)
BEGIN
SELECT COUNT(*) FROM angajat 
WHERE YEAR(data_angajare) = an_angajare;
END;
//


delimiter ;

call afla_an_angajare_angajat(2018);


-- aflare informatii angjatat procedura
delimiter $$
CREATE PROCEDURE afla_detalii_angajat(
					IN id TINYINT,
                    OUT nume_angajat VARCHAR(50),
                    OUT prenume_angajat VARCHAR(50))
BEGIN
SELECT nume, prenume
INTO nume_angajat, prenume_angajat
FROM angajat 
WHERE angajat.id_angajat = id;
END;
$$
DELIMITER ;

CALL afla_detalii_angajat(1, @n, @p);
SELECT @n, @p;



-- 

-- procedura 3 aflare oras
DELIMITER //
CREATE PROCEDURE getOras(id int,OUT p_oras varchar(35))
BEGIN
  SELECT oras 
  into p_oras
  FROM locatie
  where id_locatie=id;
END 
//
DELIMITER ;

call getOras(1,@parametru);
Select @parametru;


-- TRIGERI MIINIM 3
-- NOT WORKING

delimiter $$
CREATE PROCEDURE afiseaza_salarii()
BEGIN

DECLARE pnume VARCHAR(50);
DECLARE pprenume VARCHAR(50);
DECLARE psalariu decimal(8,2);

DECLARE eroare TINYINT DEFAULT 0;

DECLARE vsalariu VARCHAR(100);
DECLARE vsalarii VARCHAR(1000);

DECLARE c CURSOR FOR
SELECT nume, prenume, salariu
FROM angajat;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET eroare = 1;

OPEN c;
label: LOOP
FETCH c INTO pnume, pprenume, psalariu;

IF eroare = 0 THEN
		SET vsalariu = concat_ws('- ',pnume, pprenume, psalariu);
		SET vsalarii = concat_ws('/', vsalarii, vsalariu);
 ELSE LEAVE label;
 END IF;
END LOOP;
CLOSE c;
SELECT vsalarii;
END;
//
DELIMITER ;
CALL afiseaza_salarii();




-- trigere minim 3

CREATE TABLE employees_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeeNumber INT NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);

-- trigger de insert

DELIMITER //
CREATE TRIGGER after_insert_angajat AFTER INSERT ON angajat FOR EACH ROW
BEGIN
INSERT INTO employees_audit VALUES(null, NEW.id_angajat, user(), now(), 
CONCAT_WS(' ', 'Angajat nou:', NEW.nume, NEW.prenume));
END;
//
DELIMITER ;

drop trigger after_insert_angajat;

INSERT INTO angajat (id_angajat,nume,prenume,email,salariu,data_angajare,departament_id,job_id)
VALUES (null,'TRIGER','TRIGER','TRIGER@yahoo.com',2900,'2018-09-10',10,10);


-- triger de UPDATE

DELIMITER $$
CREATE TRIGGER before_employee_update 
    BEFORE UPDATE ON angajat
    FOR EACH ROW 
BEGIN
    INSERT INTO employees_audit
    SET action = 'update',
     employeeNumber = OLD.id_angajat,
        lastname = OLD.nume,
        changedat = NOW(); 
END$$
DELIMITER ;

select * from angajat;
update angajat set nume='secuiu' where id_angajat=10;

select * from employees_audit;
