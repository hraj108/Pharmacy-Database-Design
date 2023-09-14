create table Employee( 
Name varchar2(100)not null, 
Employee_ID    varchar2(100), 
constraint pk_Employee primary key (Employee_ID) 
);

Insert into Employee (Name,Employee_ID) values ('Angela Silva','1');

Insert into Employee (Name,Employee_ID) values ('Tammy White','2');

Insert into Employee (Name,Employee_ID) values ('David Tyler','3');

Insert into Employee (Name,Employee_ID) values ('James Pearson','4');

Insert into Employee (Name,Employee_ID) values ('Steven Hoffman','5');

Insert into Employee (Name,Employee_ID) values ('Rhonda Nielsen','6');

Insert into Employee (Name,Employee_ID) values ('Stephanie Cunningham','7');

Insert into Employee (Name,Employee_ID) values ('Alicia Nguyen','8');

Insert into Employee (Name,Employee_ID) values ('Diana Stewart','9');

Insert into Employee (Name,Employee_ID) values ('Lisa Moore','10');

Insert into Employee (Name,Employee_ID) values ('Eric Miller','11');

Insert into Employee (Name,Employee_ID) values ('Joel Kramer','12');

Insert into Employee (Name,Employee_ID) values ('Scott Dean','13');

Insert into Employee (Name,Employee_ID) values ('Teresa Lowe','14');

Insert into Employee (Name,Employee_ID) values ('Kim Stone','15');

Insert into Employee (Name,Employee_ID) values ('Anthony Caldwell','16');

Insert into Employee (Name,Employee_ID) values ('Vanessa Garcia','17');

Insert into Employee (Name,Employee_ID) values ('William Cox','18');

Insert into Employee (Name,Employee_ID) values ('Christian Miller','19');

Insert into Employee (Name,Employee_ID) values ('Parker Todd','20');

create table Pharmacy( 
Name varchar2(100) not null, 
Phar_ID varchar2(100), 
Fax varchar2(100), 
Address varchar2(100) not null, 
constraint pk_Pharmacy primary key (Phar_ID) 
);

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('VALLEY HEALTH CENTER - SUNNYVALE','1015','408-992-4830','660 SOUTH FAIR OAKS AVENUE');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('OMNICARE','1016','530-224-3373','5200 CHURN CREEK ROAD');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('SAFEWAY','1017','925-672-2107','5431 CLAYTON ROAD');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('COMMUNITY PHARMACY','1018','541-388-7731','2500 NORTHEAST NEFF ROAD');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('SAFEWAY','1019','541-389-7184','320 SOUTHWEST CENTURY DRIVE');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('COSTCO','1020','541-383-2199','2500 NORTHEAST HIGHWAY 20');

INSERT INTO Pharmacy(Name,Phar_ID,Fax,Address) values('RITE AID - 5886','1021','408-774-0134','2310 HOMESTEAD ROAD');

create table Work( 
Employee_ID varchar2(100) not null, 
Phar_ID varchar2(100), 
Shift_Start timestamp, 
Shift_End timestamp, 
constraint fk_Employee foreign key (Employee_ID) 
references Employee(Employee_ID), 
constraint fk_Pharmacy foreign key(Phar_ID) 
references Pharmacy(Phar_ID) 
);

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('2','1015',TO_TIMESTAMP('2020-12-13 04:18:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-12-13 04:18:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('5','1016',TO_TIMESTAMP('2020-06-14 01:11:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-06-14 01:11:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('8','1017',TO_TIMESTAMP('2020-01-17 09:52:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-01-17 09:52:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('17','1018',TO_TIMESTAMP('2020-03-16 11:18:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-03-16 11:18:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('8','1019',TO_TIMESTAMP('2020-08-11 03:02:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-08-11 03:02:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('5','1020',TO_TIMESTAMP('2020-10-02 11:44:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-10-02 11:44:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('18','1021',TO_TIMESTAMP('2020-08-26 10:16:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-08-26 10:16:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('1','1017',TO_TIMESTAMP('2020-01-25 16:28:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-01-25 16:28:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('2','1017',TO_TIMESTAMP('2020-10-07 21:33:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-10-07 21:33:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('3','1022',TO_TIMESTAMP('2020-01-25 22:56:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-01-25 22:56:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('4','1015',TO_TIMESTAMP('2020-04-12 10:38:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-04-12 10:38:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('5','1020',TO_TIMESTAMP('2020-10-20 00:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-10-20 00:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('6','1016',TO_TIMESTAMP('2020-07-18 16:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-07-18 16:30:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('7','1020',TO_TIMESTAMP('2020-10-19 17:36:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-10-19 17:36:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('8','1022',TO_TIMESTAMP('2020-11-13 22:21:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-11-13 22:21:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('9','1021',TO_TIMESTAMP('2020-04-04 01:47:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-04-04 01:47:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('10','1016',TO_TIMESTAMP('2020-06-15 12:02:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-06-15 12:02:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('11','1021',TO_TIMESTAMP('2020-10-05 18:35:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-10-05 18:35:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('12','1015',TO_TIMESTAMP('2020-06-16 09:02:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-06-16 09:02:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('13','1019',TO_TIMESTAMP('2020-03-05 12:39:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-03-05 12:39:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('14','1016',TO_TIMESTAMP('2020-07-12 02:00:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-07-12 02:00:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('15','1018',TO_TIMESTAMP('2020-09-09 23:21:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-09-09 23:21:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('16','1020',TO_TIMESTAMP('2020-11-01 03:20:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-11-01 03:20:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('17','1019',TO_TIMESTAMP('2020-11-09 12:29:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-11-09 12:29:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('18','1018',TO_TIMESTAMP('2020-02-08 03:34:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-02-08 03:34:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('19','1015',TO_TIMESTAMP('2020-07-01 14:41:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-07-01 14:41:00', 'YYYY-MM-DD HH24:MI:SS'));

INSERT INTO Work(Employee_ID,Phar_ID,Shift_Start,Shift_End) values('20','1016',TO_TIMESTAMP('2020-02-19 04:38:00', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2020-02-19 04:38:00', 'YYYY-MM-DD HH24:MI:SS'));

create table Drug( 
Name varchar2(100), 
Mfg_Date date not null, 
Exp_Date date not null, 
constraint pk_Drug primary key (Name) 
);

INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Azelastineaeyedrops (Optivar)',TO_DATE('07/06/2021','dd/mm/yyyy'),TO_DATE('13/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Azelastineanasal sprays (Astelin,aAstepro)',TO_DATE('27/06/2021','dd/mm/yyyy'),TO_DATE('15/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Carbinoxaminea(Palgic)',TO_DATE('22/11/2021','dd/mm/yyyy'),TO_DATE('06/09/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Cyproheptadine',TO_DATE('22/02/2021','dd/mm/yyyy'),TO_DATE('16/04/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Desloratadinea(Clarinex)',TO_DATE('12/08/2021','dd/mm/yyyy'),TO_DATE('05/03/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Emedastine eyedrops (Emadine)',TO_DATE('11/04/2021','dd/mm/yyyy'),TO_DATE('14/01/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Hydroxyzinea(Atarax,aVistaril)',TO_DATE('06/05/2021','dd/mm/yyyy'),TO_DATE('13/11/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Levocabastine eyedrops (Livostin)',TO_DATE('16/03/2021','dd/mm/yyyy'),TO_DATE('27/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Levocetirizineaoral (Xyzal)',TO_DATE('22/12/2021','dd/mm/yyyy'),TO_DATE('05/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('amoxicillin',TO_DATE('12/12/2021','dd/mm/yyyy'),TO_DATE('11/08/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('doxycycline',TO_DATE('19/12/2021','dd/mm/yyyy'),TO_DATE('10/04/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('cephalexin',TO_DATE('22/10/2021','dd/mm/yyyy'),TO_DATE('12/09/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('ciprofloxacin',TO_DATE('12/06/2021','dd/mm/yyyy'),TO_DATE('09/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('clindamycin',TO_DATE('18/11/2021','dd/mm/yyyy'),TO_DATE('08/10/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('metronidazole',TO_DATE('06/12/2021','dd/mm/yyyy'),TO_DATE('23/10/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('azithromycin',TO_DATE('15/05/2021','dd/mm/yyyy'),TO_DATE('23/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('sulfamethoxazole and trimethoprim',TO_DATE('25/01/2021','dd/mm/yyyy'),TO_DATE('11/11/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('amoxicillin and clavulanate',TO_DATE('07/05/2021','dd/mm/yyyy'),TO_DATE('06/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('levofloxacin',TO_DATE('11/03/2021','dd/mm/yyyy'),TO_DATE('07/10/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Ibuprofen',TO_DATE('06/07/2021','dd/mm/yyyy'),TO_DATE('21/10/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Celecoxib',TO_DATE('05/10/2021','dd/mm/yyyy'),TO_DATE('19/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Diclofenac',TO_DATE('11/01/2021','dd/mm/yyyy'),TO_DATE('13/09/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Etodolac',TO_DATE('05/12/2021','dd/mm/yyyy'),TO_DATE('16/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Fenoprofen',TO_DATE('22/03/2021','dd/mm/yyyy'),TO_DATE('07/08/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Flurbiprofen',TO_DATE('26/03/2021','dd/mm/yyyy'),TO_DATE('22/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Indomethacin',TO_DATE('20/10/2021','dd/mm/yyyy'),TO_DATE('07/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Ketorolac',TO_DATE('06/01/2021','dd/mm/yyyy'),TO_DATE('11/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Mefenamic acid',TO_DATE('10/06/2021','dd/mm/yyyy'),TO_DATE('18/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Meloxicam',TO_DATE('27/09/2021','dd/mm/yyyy'),TO_DATE('06/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Nabumetone',TO_DATE('02/06/2021','dd/mm/yyyy'),TO_DATE('21/10/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Naproxen',TO_DATE('06/11/2021','dd/mm/yyyy'),TO_DATE('17/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Nimesulide',TO_DATE('24/12/2021','dd/mm/yyyy'),TO_DATE('07/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Oxaprozin',TO_DATE('23/12/2021','dd/mm/yyyy'),TO_DATE('03/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Piroxicam',TO_DATE('23/10/2021','dd/mm/yyyy'),TO_DATE('15/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Sulindac',TO_DATE('04/04/2021','dd/mm/yyyy'),TO_DATE('26/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Tolmetin',TO_DATE('06/02/2021','dd/mm/yyyy'),TO_DATE('24/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Samsca (tolvaptan)',TO_DATE('10/06/2021','dd/mm/yyyy'),TO_DATE('15/06/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Tegretol (carbamazepine)',TO_DATE('11/06/2021','dd/mm/yyyy'),TO_DATE('27/01/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Thorazine (chlorpromazine)',TO_DATE('06/03/2021','dd/mm/yyyy'),TO_DATE('21/11/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Declomycin (demeclocycline)',TO_DATE('03/01/2021','dd/mm/yyyy'),TO_DATE('04/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Lamictal (lamotrigine)',TO_DATE('17/11/2021','dd/mm/yyyy'),TO_DATE('14/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Lithobid (Lithium)',TO_DATE('16/09/2021','dd/mm/yyyy'),TO_DATE('10/04/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Imodium (loperamide',TO_DATE('16/03/2021','dd/mm/yyyy'),TO_DATE('09/03/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Remeron (mirtazapine)',TO_DATE('05/03/2021','dd/mm/yyyy'),TO_DATE('26/05/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Lexapro (escitalopram)',TO_DATE('13/01/2021','dd/mm/yyyy'),TO_DATE('13/04/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Effexor (venlafaxine)',TO_DATE('26/02/2021','dd/mm/yyyy'),TO_DATE('12/07/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values(' Zoloft (sertraline)',TO_DATE('13/07/2021','dd/mm/yyyy'),TO_DATE('09/03/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Celexa (citalopram)',TO_DATE('05/08/2021','dd/mm/yyyy'),TO_DATE('26/12/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Wellbutrin (bupropion)',TO_DATE('28/01/2021','dd/mm/yyyy'),TO_DATE('14/08/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Paxil (paroxetine)',TO_DATE('22/07/2021','dd/mm/yyyy'),TO_DATE('23/06/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Savella (milnacipran)',TO_DATE('08/06/2021','dd/mm/yyyy'),TO_DATE('08/09/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Prozac (fluoxetine)',TO_DATE('28/09/2021','dd/mm/yyyy'),TO_DATE('01/06/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Cymbalta (duloxetine)',TO_DATE('09/11/2021','dd/mm/yyyy'),TO_DATE('05/04/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Luvox (fluvoxamine)',TO_DATE('10/01/2021','dd/mm/yyyy'),TO_DATE('27/06/2023','dd/mm/yyyy'));

 INSERT INTO Drug(Name,Mfg_Date,Exp_Date) values('Vestra (reboxetine)',TO_DATE('14/04/2021','dd/mm/yyyy'),TO_DATE('08/02/2023','dd/mm/yyyy'));

create table Sell( 
Name varchar2(100) not null, 
Phar_ID varchar2(100) not null, 
Selling_Price number not null, 
Quantity_Drug number not null, 
constraint fk_Pharmacy1 foreign key(Phar_ID) 
references Pharmacy (Phar_ID), 
constraint fk_Drug1 foreign key (Name) 
references Drug (Name) 
);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lithobid (Lithium)','1015',547,419);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Imodium (loperamide','1015',471,422);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Remeron (mirtazapine)','1015',507,350);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lexapro (escitalopram)','1015',626,195);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Effexor (venlafaxine)','1015',237,191);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values(' Zoloft (sertraline)','1015',314,123);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Celexa (citalopram)','1015',709,437);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Wellbutrin (bupropion)','1015',591,288);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Paxil (paroxetine)','1015',329,115);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Savella (milnacipran)','1015',130,411);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Prozac (fluoxetine)','1015',288,393);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Cymbalta (duloxetine)','1015',253,392);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Luvox (fluvoxamine)','1015',769,278);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Vestra (reboxetine)','1015',796,169);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('azithromycin','1016',141,172);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('sulfamethoxazole and trimethoprim','1016',455,410);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin and clavulanate','1016',167,363);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('levofloxacin','1016',539,334);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Ibuprofen','1016',917,370);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Celecoxib','1016',872,252);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Diclofenac','1016',788,358);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Etodolac','1016',654,353);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Fenoprofen','1016',825,192);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Flurbiprofen','1016',422,151);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Indomethacin','1016',419,476);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Ketorolac','1016',326,376);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Mefenamic acid','1016',315,127);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Meloxicam','1016',714,217);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Piroxicam','1017',878,386);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Sulindac','1017',432,235);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Tolmetin','1017',140,388);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Samsca (tolvaptan)','1017',473,318);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Tegretol (carbamazepine)','1017',933,116);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Thorazine (chlorpromazine)','1017',223,278);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Declomycin (demeclocycline)','1017',479,351);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lamictal (lamotrigine)','1017',522,410);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lithobid (Lithium)','1017',547,269);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Imodium (loperamide','1017',471,433);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Remeron (mirtazapine)','1017',507,481);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lexapro (escitalopram)','1017',626,124);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Effexor (venlafaxine)','1017',237,410);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values(' Zoloft (sertraline)','1017',314,254);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lamictal (lamotrigine)','1018',522,343);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lithobid (Lithium)','1018',547,459);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Imodium (loperamide','1018',471,195);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Remeron (mirtazapine)','1018',507,385);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Lexapro (escitalopram)','1018',626,177);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Effexor (venlafaxine)','1018',237,200);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values(' Zoloft (sertraline)','1018',314,338);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Celexa (citalopram)','1018',709,485);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Wellbutrin (bupropion)','1018',591,406);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Paxil (paroxetine)','1018',329,401);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Savella (milnacipran)','1018',130,431);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Prozac (fluoxetine)','1018',288,374);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Cymbalta (duloxetine)','1018',253,325);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Luvox (fluvoxamine)','1018',769,315);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin','1019',356,385);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('doxycycline','1019',394,427);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('cephalexin','1019',776,439);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('ciprofloxacin','1019',716,400);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('clindamycin','1019',540,497);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('metronidazole','1019',357,121);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('azithromycin','1019',141,182);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('sulfamethoxazole and trimethoprim','1019',455,199);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin and clavulanate','1019',167,432);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('levofloxacin','1019',539,330);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Ibuprofen','1019',917,463);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Celecoxib','1019',872,319);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Diclofenac','1019',788,184);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Etodolac','1019',654,208);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Emedastine eyedrops (Emadine)','1020',774,234);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('"Hydroxyzinea(Atarax,aVistaril)"','1020',895,242);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Levocabastine eyedrops (Livostin)','1020',215,184);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Levocetirizineaoral (Xyzal)','1020',576,298);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin','1020',356,396);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('doxycycline','1020',394,210);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('cephalexin','1020',776,151);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('ciprofloxacin','1020',716,444);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('clindamycin','1020',540,186);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('metronidazole','1020',357,167);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('azithromycin','1020',141,131);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('sulfamethoxazole and trimethoprim','1020',455,390);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin and clavulanate','1020',167,460);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('levofloxacin','1020',539,293);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Desloratadinea(Clarinex)','1021',695,180);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Emedastine eyedrops (Emadine)','1021',774,119);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Levocabastine eyedrops (Livostin)','1021',215,153);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('Levocetirizineaoral (Xyzal)','1021',576,453);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin','1021',356,183);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('doxycycline','1021',394,182);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('cephalexin','1021',776,219);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('ciprofloxacin','1021',716,287);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('clindamycin','1021',540,263);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('metronidazole','1021',357,375);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('azithromycin','1021',141,457);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('sulfamethoxazole and trimethoprim','1021',455,374);

INSERT INTO Sell(Name,Phar_ID,Selling_Price,Quantity_Drug) values('amoxicillin and clavulanate','1021',167,188);DOCTOR(15 entries) 
;

create table Contract( 
Company_ID  number not null, 
Phar_ID varchar2(100), 
start_date date not null, 
end_date date not null, 
constraint fk_Manufacturer1 foreign key (Company_ID) 
references Manufacturer(Company_ID), 
constraint fk_Pharmacy2 foreign key (Phar_ID) 
references Pharmacy(Phar_ID) 
);

create table Contract( 
Company_ID  number not null, 
Phar_ID varchar2(100), 
start_date date not null, 
end_date date not null, 
constraint fk_Manufacturer1 foreign key (Company_ID) 
references Manufacturer(Company_ID), 
constraint fk_Pharmacy2 foreign key (Phar_ID) 
references Pharmacy(Phar_ID) 
);

create table Manufacturer ( 
Name varchar2(100) not null, 
Company_ID number, 
Address varchar2(100) not null, 
constraint pk_Manufacturer primary key (Company_ID) 
);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Sun pharma','"Goregaon,Mumbai"',102);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Dr. Reddy','Hyderabad',103);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Divis Laboratory','Hyderabad',104);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Cipla','Mumbai',105);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Aurobindo','Hyderabad',106);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Torrent','Ahmedabad',107);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Lupin','Mumbai',108);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Zydus','Ahmedabad',109);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Abbott','Mumbai',110);

INSERT INTO Manufacturer(Name,Address,Company_ID) values('Alkem','Mumbai',111);

create table Patient ( 
PID varchar2 (100) not null, 
Name varchar2(100) not null, 
Sex varchar2 (100) check (Sex='male' or Sex='female' or Sex='others') not null, 
Address varchar2 (100) not null, 
Phone_No number not null, 
constraint pk_Patient primary key (PID) 
);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1001','John Guzman','male','mandhali',918847296030);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1002','Megan Estes','female','phagwara',918917575901);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1003','Melissa Tapia','female','mohali',918847532429);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1004','Michelle Ho','female','patiala',916127975879);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1005','George Gonzalez','male','chandigarh',916669545415);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1006','Laura Gonzalez','female','hisar',916127964439);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1007','Tyler Pope','male','sirsa',918847671624);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1008','Darren Jordan','male','amritsar',918847097336);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1009','Stephanie Gomez DVM','others','hoshiarpur',918917856105);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1010','Patrick Foster','male','khana',918072636722);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1011','Brenda Cooley','female','khanori',916570388330);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1012','Christopher Whitney','male','ludhiana',916719177468);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1013','Jesus Ferrell','others','jalandhar',918079743635);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1014','Christopher Blevins','male','rajpura',916127955247);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1015','Angela Parker','female','sirhind',916127965394);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1016','Joe Brady','others','patran',916129109802);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1017','Ronald Reed','male','narvana',918917814880);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1018','Christopher Andersen','male','uklana',918700660411);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1019','Stephanie Rodriguez','female','bhatinda',916127943088);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1020','Caitlin Bell','others','batala',916197747624);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1021','Philip Hickman','male','tanda',918917439877);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1022','Tammy Williams','male','mukerian',917479131135);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1023','Kenneth Thomas','others','ambala',916127975539);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1024','Jeffrey Garcia','male','banga',916127933627);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1025','Barbara Carter','female','nawanshehr',917440327578);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1026','Henry Becker','others','lucknow',916127949100);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1027','Allen Cooley','female','rishikesh',917887626537);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1028','Tonya Clark','female','shimla',918700867484);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1029','Ruben Allen','male','gurdaspur',917887457780);

Insert into Patient (PID,Name,Sex,Address,Phone_No) values ('1030','Jacob Washington','male','kausauli',916127941953);

create table Doctor ( 
D_Name varchar2 (100) not null, 
Speciality varchar2(100) not null, 
Phys_ID varchar2 (100) not null,  
constraint pk_Doctor primary key (Phys_ID) 
);

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('DR. D IRWIN','Cardiologist','264');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('DR A MCCUTCHEON AND PARTNERS','Dentist','265');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('DR E M CHRISTIE AND PARTNER','Gynaecologist','266');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Browne & Partners','Paediatrician','267');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Wilson','Psychiatrist','268');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Drs Darragh & Coogan','Neurologist','269');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Coulter & Partners','Orthopedic','270');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Gardner & Partners','Cardiologist','271');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Dunlop Halliday & Ross','Dentist','272');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Mercer & Partners','Gynaecologist','273');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Hunter & Partners','Paediatrician','274');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Drs Burke & Holmes','Psychiatrist','275');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Drs Kyle & Courtney','Neurologist','276');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr Bell & Partners','Orthopedic','277');

INSERT INTO Doctor(D_Name,Speciality,Phys_ID) values('Dr H McKee','Cardiologist','278');

create table Contract( 
Company_ID number not null, 
Phar_ID varchar2(100), 
start_date date not null, 
end_date date not null, 
constraint fk_Manufacturer1 foreign key (Company_ID) 
references Manufacturer(Company_ID), 
constraint fk_Pharmacy2 foreign key (Phar_ID) 
references Pharmacy(Phar_ID) 
);

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1015',TO_DATE('07/06/2021','dd/mm/yyyy'),TO_DATE('13/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1016',TO_DATE('27/06/2021','dd/mm/yyyy'),TO_DATE('15/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1017',TO_DATE('22/11/2021','dd/mm/yyyy'),TO_DATE('06/09/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1018',TO_DATE('22/02/2021','dd/mm/yyyy'),TO_DATE('16/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1019',TO_DATE('12/08/2021','dd/mm/yyyy'),TO_DATE('05/03/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1020',TO_DATE('11/04/2021','dd/mm/yyyy'),TO_DATE('14/01/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(102,'1021',TO_DATE('06/05/2021','dd/mm/yyyy'),TO_DATE('13/11/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1015',TO_DATE('16/03/2021','dd/mm/yyyy'),TO_DATE('27/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1016',TO_DATE('22/12/2021','dd/mm/yyyy'),TO_DATE('05/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1017',TO_DATE('12/12/2021','dd/mm/yyyy'),TO_DATE('11/08/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1018',TO_DATE('19/12/2021','dd/mm/yyyy'),TO_DATE('10/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1019',TO_DATE('22/10/2021','dd/mm/yyyy'),TO_DATE('12/09/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1020',TO_DATE('12/06/2021','dd/mm/yyyy'),TO_DATE('09/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(103,'1021',TO_DATE('18/11/2021','dd/mm/yyyy'),TO_DATE('08/10/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1015',TO_DATE('06/12/2021','dd/mm/yyyy'),TO_DATE('23/10/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1016',TO_DATE('15/05/2021','dd/mm/yyyy'),TO_DATE('23/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1017',TO_DATE('25/01/2021','dd/mm/yyyy'),TO_DATE('11/11/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1018',TO_DATE('07/05/2021','dd/mm/yyyy'),TO_DATE('06/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1019',TO_DATE('11/03/2021','dd/mm/yyyy'),TO_DATE('07/10/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1020',TO_DATE('06/07/2021','dd/mm/yyyy'),TO_DATE('21/10/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(104,'1021',TO_DATE('05/10/2021','dd/mm/yyyy'),TO_DATE('19/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1015',TO_DATE('11/01/2021','dd/mm/yyyy'),TO_DATE('13/09/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1016',TO_DATE('05/12/2021','dd/mm/yyyy'),TO_DATE('16/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1017',TO_DATE('22/03/2021','dd/mm/yyyy'),TO_DATE('07/08/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1018',TO_DATE('26/03/2021','dd/mm/yyyy'),TO_DATE('22/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1019',TO_DATE('20/10/2021','dd/mm/yyyy'),TO_DATE('07/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1020',TO_DATE('06/01/2021','dd/mm/yyyy'),TO_DATE('11/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(105,'1021',TO_DATE('10/06/2021','dd/mm/yyyy'),TO_DATE('18/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1015',TO_DATE('27/09/2021','dd/mm/yyyy'),TO_DATE('06/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1016',TO_DATE('02/06/2021','dd/mm/yyyy'),TO_DATE('21/10/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1017',TO_DATE('06/11/2021','dd/mm/yyyy'),TO_DATE('17/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1018',TO_DATE('24/12/2021','dd/mm/yyyy'),TO_DATE('07/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1019',TO_DATE('23/12/2021','dd/mm/yyyy'),TO_DATE('03/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1020',TO_DATE('23/10/2021','dd/mm/yyyy'),TO_DATE('15/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(106,'1021',TO_DATE('04/04/2021','dd/mm/yyyy'),TO_DATE('26/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1015',TO_DATE('06/02/2021','dd/mm/yyyy'),TO_DATE('24/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1016',TO_DATE('10/06/2021','dd/mm/yyyy'),TO_DATE('15/06/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1017',TO_DATE('11/06/2021','dd/mm/yyyy'),TO_DATE('27/01/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1018',TO_DATE('06/03/2021','dd/mm/yyyy'),TO_DATE('21/11/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1019',TO_DATE('03/01/2021','dd/mm/yyyy'),TO_DATE('04/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1020',TO_DATE('17/11/2021','dd/mm/yyyy'),TO_DATE('14/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(107,'1021',TO_DATE('16/09/2021','dd/mm/yyyy'),TO_DATE('10/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1015',TO_DATE('16/03/2021','dd/mm/yyyy'),TO_DATE('09/03/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1016',TO_DATE('05/03/2021','dd/mm/yyyy'),TO_DATE('26/05/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1017',TO_DATE('13/01/2021','dd/mm/yyyy'),TO_DATE('13/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1018',TO_DATE('26/02/2021','dd/mm/yyyy'),TO_DATE('12/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1019',TO_DATE('13/07/2021','dd/mm/yyyy'),TO_DATE('09/03/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1020',TO_DATE('05/08/2021','dd/mm/yyyy'),TO_DATE('26/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(108,'1021',TO_DATE('28/01/2021','dd/mm/yyyy'),TO_DATE('14/08/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1015',TO_DATE('22/07/2021','dd/mm/yyyy'),TO_DATE('23/06/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1016',TO_DATE('08/06/2021','dd/mm/yyyy'),TO_DATE('08/09/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1017',TO_DATE('28/09/2021','dd/mm/yyyy'),TO_DATE('01/06/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1018',TO_DATE('09/11/2021','dd/mm/yyyy'),TO_DATE('05/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1019',TO_DATE('10/01/2021','dd/mm/yyyy'),TO_DATE('27/06/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1020',TO_DATE('14/04/2021','dd/mm/yyyy'),TO_DATE('08/02/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(109,'1021',TO_DATE('27/08/2021','dd/mm/yyyy'),TO_DATE('12/04/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1015',TO_DATE('19/09/2021','dd/mm/yyyy'),TO_DATE('11/01/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1016',TO_DATE('15/01/2021','dd/mm/yyyy'),TO_DATE('22/09/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1017',TO_DATE('10/06/2021','dd/mm/yyyy'),TO_DATE('26/03/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1018',TO_DATE('03/01/2021','dd/mm/yyyy'),TO_DATE('01/07/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1019',TO_DATE('19/03/2021','dd/mm/yyyy'),TO_DATE('06/12/2024','dd/mm/yyyy'));

INSERT INTO Contract(Company_ID,Phar_ID,start_date,end_date) values(110,'1020',TO_DATE('20/03/2021','dd/mm/yyyy'),TO_DATE('13/12/2024','dd/mm/yyyy'));

create table Prescribe( 
Phys_ID varchar2 (100) not null, 
PID varchar2 (100) not null, 
Name varchar2 (100) not null, 
Date_Prescribed date not null, 
Quantity_Prescribed number not null, 
constraint fk_Doctor1 foreign key (Phys_ID) 
references Doctor (Phys_ID), 
constraint fk_Patient1 foreign key (PID) 
references Patient (PID), 
constraint fk_Drug2 foreign key (Name) 
references Drug (Name) 
);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('275','1001','Remeron (mirtazapine)',TO_DATE('13/11/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('268','1002','Vestra (reboxetine)',TO_DATE('27/07/2021','dd/mm/yyyy'),7);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('269','1003','Piroxicam',TO_DATE('28/02/2021','dd/mm/yyyy'),6);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('275','1004','Mefenamic acid',TO_DATE('12/03/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('270','1005','Lexapro (escitalopram)',TO_DATE('14/03/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('271','1006','Emedastine eyedrops (Emadine)',TO_DATE('07/09/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('266','1007','Vestra (reboxetine)',TO_DATE('03/12/2021','dd/mm/yyyy'),8);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('271','1008','Ibuprofen',TO_DATE('12/08/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('272','1009','cephalexin',TO_DATE('10/03/2021','dd/mm/yyyy'),8);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('278','1010','Diclofenac',TO_DATE('02/08/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('266','1011','Samsca (tolvaptan)',TO_DATE('26/11/2021','dd/mm/yyyy'),8);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('268','1012','Remeron (mirtazapine)',TO_DATE('06/10/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('265','1013','cephalexin',TO_DATE('23/03/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('265','1014','Flurbiprofen',TO_DATE('01/03/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('275','1015','Emedastine eyedrops (Emadine)',TO_DATE('10/03/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('269','1016','Vestra (reboxetine)',TO_DATE('06/10/2021','dd/mm/yyyy'),7);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('273','1017','Fenoprofen',TO_DATE('19/01/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('269','1018','Thorazine (chlorpromazine)',TO_DATE('16/09/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('273','1019','azithromycin',TO_DATE('12/03/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('277','1020',' Zoloft (sertraline)',TO_DATE('26/07/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('267','1021','Tolmetin',TO_DATE('07/08/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('264','1022','Piroxicam',TO_DATE('06/03/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('275','1023','amoxicillin and clavulanate',TO_DATE('05/09/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('273','1024','amoxicillin',TO_DATE('02/10/2021','dd/mm/yyyy'),5);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('265','1025','levofloxacin',TO_DATE('17/06/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('266','1026','Fenoprofen',TO_DATE('28/11/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('269','1027','Naproxen',TO_DATE('25/10/2021','dd/mm/yyyy'),9);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('274','1028','Mefenamic acid',TO_DATE('04/12/2021','dd/mm/yyyy'),8);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('271','1029','Fenoprofen',TO_DATE('24/10/2021','dd/mm/yyyy'),10);

INSERT INTO Prescribe(Phys_ID,PID,Name,Date_Prescribed,Quantity_Prescribed) values('278','1030','amoxicillin',TO_DATE('02/03/2021','dd/mm/yyyy'),5);

create table Make ( 
Company_ID number not null, 
Cost_Price number not null, 
Quantity number not null, 
Name varchar2(100) not null, 
constraint fk_Manufacturer foreign key (Company_ID) 
references Manufacturer (Company_ID), 
constraint fk_Drug foreign key (Name) 
references Drug (Name) 
);

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(102,119,3598,'Tolmetin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(104,183,7224,'Levocabastine eyedrops (Livostin)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(105,603,6606,'Celecoxib');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(106,207,4195,'Vestra (reboxetine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(107,493,6342,'clindamycin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(108,236,3311,'Ibuprofen');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(109,89,8198,'Azelastineaeyedrops (Optivar)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(110,82,3578,'doxycycline');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(111,123,7280,'metronidazole');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(110,85,2006,'"Azelastineanasal sprays (Astelin,aAstepro)"');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(114,57,6620,'Carbinoxaminea(Palgic)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(184,89,7038,'Cyproheptadine');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(142,508,3654,'Desloratadinea(Clarinex)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(133,410,2813,'Emedastine eyedrops (Emadine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(118,577,3510,'"Hydroxyzinea(Atarax,aVistaril)"');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(206,371,7270,'Levocetirizineaoral (Xyzal)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(190,100,5644,'amoxicillin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(148,243,1873,'cephalexin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(161,638,3140,'ciprofloxacin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(198,98,4879,'azithromycin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(194,61,1649,'sulfamethoxazole and trimethoprim');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(191,105,4557,'amoxicillin and clavulanate');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(164,435,7387,'levofloxacin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(144,406,3600,'Diclofenac');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(205,391,9867,'Etodolac');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(160,779,5400,'Fenoprofen');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(177,124,8422,'Flurbiprofen');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(127,214,7180,'Indomethacin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(130,251,5423,'Ketorolac');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(209,112,1831,'Mefenamic acid');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(201,655,3154,'Meloxicam');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(131,68,2974,'Nabumetone');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(160,104,2689,'Naproxen');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(207,56,4434,'Nimesulide');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(173,91,1511,'Oxaprozin');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(122,571,4716,'Piroxicam');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(181,401,4422,'Sulindac');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(138,86,8686,'Samsca (tolvaptan)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(211,67,9436,'Tegretol (carbamazepine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(181,142,1193,'Thorazine (chlorpromazine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(209,115,3414,'Declomycin (demeclocycline)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(147,60,7486,'Lamictal (lamotrigine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(127,515,8732,'Lithobid (Lithium)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(143,270,5313,'Imodium (loperamide');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(168,430,4262,'Remeron (mirtazapine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(147,87,5182,'Lexapro (escitalopram)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(134,212,2807,'Effexor (venlafaxine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(147,234,5313,' Zoloft (sertraline)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(153,53,2556,'Celexa (citalopram)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(144,547,1481,'Wellbutrin (bupropion)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(198,186,3220,'Paxil (paroxetine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(173,100,6535,'Savella (milnacipran)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(165,104,2465,'Prozac (fluoxetine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(201,137,9290,'Cymbalta (duloxetine)');

INSERT INTO Make(Company_ID,Cost_Price,Quantity,Name) values(195,341,3022,'Luvox (fluvoxamine)');

select * from Work;

select * from Make;

select * from Prescribe;

select * from Contract;

select D_name from Doctor where Phys_ID in (select Phys_ID from prescribe);

Declare 
    rows number(3); 
Begin 
    update Sell 
    set Selling_Price=Selling_Price+100 where name like 'A%'; 
    IF sql%notfound THEN  
        dbms_output.put_line('no drugs selected');  
    ELSIF sql%found THEN  
        rows:=sql%rowcount; 
        dbms_output.put_line(rows || 'drugs selected'); 
    end if; 
end; 

/

Select * from Work;

Select * from Work;

Declare 
    c_name Doctor.D_name%type; 
    Cursor c is select D_name from Doctor where speciality='Cardiologist'; 
Begin 
    open c; 
    loop 
    fetch c into c_name;  
      exit when c%notfound;  
      dbms_output.put_line(c_name);  
    end loop;  
    close c;  
end; 

/

create or replace trigger t 
before insert or delete or update on Drug 
for each row 
when (new.name is not NULL) 
Declare 
drugcount number(3); 
Begin 
    select count(*) into drugcount from Drug; 
    dbms_output.put_line(drugcount); 
end; 

/

create or replace trigger t1 
after insert or delete or update on Work 
Declare 
TYPE emp_tab IS TABLE OF Work%ROWTYPE INDEX BY PLS_INTEGER; 
  w      emp_tab; 
Begin 
    select * bulk collect into w from Work;  
end; 
 

/

DECLARE 
t  varchar(20); 
r  date; 
BEGIN 
   SELECT PID into t from Patient where PID=1050;  
   select PID into r from Patient; 
exception 
   WHEN no_data_found THEN 
      dbms_output.put_line('ERROR'); 
      dbms_output.put_line('no data found'); 
   WHEN value_error THEN 
        dbms_output.put_line('Error'); 
        dbms_output.put_line('Change data type');  
end; 
 
 

/

create or replace function total 
return number is 
total number(3):=0; 
begin 
select count(*) into total from manufacturer; 
return total; 
end; 
 
 
 

/

declare 
a number(3); 
begin 
a:=total(); 
dbms_output.put_line(a); 
end; 
 

/

create or replace procedure profit(x in Sell.Selling_Price%type,y in Make.Cost_Price%type,z out number) 
is 
begin 
z:=y-x; 
end; 
 
 

/

