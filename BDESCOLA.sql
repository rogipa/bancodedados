CREATE SCHEMA IF NOT EXISTS BDESCOLA;

USE BDESCOLA;

CREATE TABLE CAMPUS(
	ID_CAMPUS INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NOME_CAMPUS VARCHAR(45) NOT NULL,
    TIPO_CAMPUS VARCHAR(45) NOT NULL
    );
    
    INSERT INTO CAMPUS (NOME_CAMPUS, TIPO_CAMPUS) VALUES ("PAULO AFONSO", "PRINCIPAL");
    
    
    create table Aluno(
	id_Aluno INT NOT NULL auto_increment primary key,
    nome_Aluno varchar(120) NOT NULL,
    rg_Aluno VARCHAR(45) NOT NULL,
    matricula_Aluno varchar(45) NOT NULL,
    rua_Aluno varchar(100) NOT  NULL,
	bairro_Aluno varchar(100) NOT  NULL,
	cidade_Aluno varchar(100) NOT  NULL,
	estado_Aluno varchar(100) NOT  NULL,
    numerocasa_Aluno varchar(10)
);

SELECT A.NOME_ALUNO, COUNT(*) AS QTD_CURSO FROM ALUNO A, CURSOALUNO CA, CURSO C 
WHERE A.ID_ALUNO = CA.ID_ALUNO AND
				CA.ID_CURSO = C.ID_CURSO AND
                A.ID_ALUNO = 13
                GROUP BY A.NOME_ALUNO;
                
 SELECT A.NOME_ALUNO, D.NOME_DISCIPLINA, N.NOTA FROM ALUNO A, NOTAS N, DISCIPLINA D 
 WHERE A.ID_ALUNO = N.ID_ALUNO AND
				N.ID_DISCIPLINA = D.ID_DISCIPLINA AND
                A.ID_ALUNO = 2;


INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Jermaine Stevenson","16131201-0836","1642022291099","P.O. Box 595, 7428 Eu Ave","Ap #766-3676 Orci. Ave","Bayeux","Paraíba",75),("Damon Bruce","16060119-3477","1618080504799","P.O. Box 563, 2803 Aliquam Rd.","7645 Cubilia Road","Ribeirão das Neves","MG",40),("Hoyt Munoz","16950307-5385","1688090376599","P.O. Box 668, 9776 Neque Road","2561 Fusce Av.","Cabo de Santo Agostinho","PE",25),("Len Hubbard","16050105-8622","1631011029499","Ap #957-7287 Nulla Road","P.O. Box 828, 9611 At Road","Campinas","São Paulo",66),("Carter Christensen","16570203-9479","1652021854999","Ap #118-2756 Nec Rd.","7691 Ac Street","São José dos Pinhais","Paraná",3),("Nash Powers","16941223-7183","1634092091999","4371 Mauris. Av.","Ap #946-661 Eleifend Rd.","São João de Meriti","RJ",91),("Nero Maynard","16780128-3099","1669010450399","P.O. Box 615, 952 Eget Rd.","6128 Tincidunt St.","Jundiaí","São Paulo",74),("Macon Newman","16670122-6745","1647052830699","P.O. Box 395, 7431 At Av.","8981 Maecenas Rd.","Abaetetuba","Pará",37),("Keegan Hurley","16730115-1218","1647122687499","630-209 Donec Street","P.O. Box 863, 3225 Felis, Avenue","Mauá","SP",54),("Malachi Henson","16940701-2534","1606082984399","237-8039 Donec St.","P.O. Box 662, 4528 Magnis Rd.","Osasco","São Paulo",43);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Yuli Castro","16260815-4866","1668061455599","P.O. Box 705, 6140 Fringilla Street","899-2570 Lacus. Ave","Mauá","SP",43),("Malik Vaughan","16940927-2979","1625020690999","Ap #387-9174 Nunc Av.","5503 Felis Road","Campina Grande","PB",97),("Rigel Newton","16601115-0601","1673103097499","P.O. Box 319, 8485 Eu St.","3571 Eu Street","Santa Luzia","MG",64),("Upton Stafford","16620720-6829","1692070275299","3903 Consectetuer Road","226-9783 Est Rd.","Cajazeiras","Paraíba",80),("Graham Melton","16541208-7552","1678072510199","869-6096 Risus. St.","111-2410 Donec Road","Jundiaí","SP",17),("Benjamin Haynes","16590610-1703","1649102331899","787-8791 Placerat. Street","Ap #654-2558 Eu Av.","Cajazeiras","PB",18),("Oscar King","16630621-4849","1664052038899","5648 Mauris, Rd.","P.O. Box 309, 8039 Morbi Av.","Gravataí","RS",99),("Hoyt Dunn","16850420-0364","1638050320899","P.O. Box 601, 4852 Eleifend Av.","9720 Blandit. Rd.","Mauá","São Paulo",81),("Nicholas Carver","16880218-0912","1685071748399","Ap #967-9291 Vitae, Rd.","Ap #485-6366 Odio. St.","Chapecó","Santa Catarina",87),("Valentine Madden","16760419-0632","1681122876899","Ap #249-6827 Tincidunt Ave","902-7672 Ac Street","Santa Rita","PB",3);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Jonah Fitzpatrick","16220626-9165","1659021078599","7155 Dictum. St.","287-1319 Ultricies St.","Cajazeiras","PB",30),("Keegan Nolan","16070913-8689","1634041197199","6025 Mi St.","7660 Et Road","Diadema","SP",36),("Jason Sellers","16060201-7410","1662080442699","3335 Arcu. Ave","940-130 Ut Road","Contagem","Minas Gerais",59),("Dominic Hart","16080818-3206","1695072654399","1381 Magna. Street","P.O. Box 526, 5741 Montes, Avenue","Ananindeua","Pará",17),("Ivor Daniel","16710520-5400","1648040264999","Ap #419-4115 Nulla. Av.","P.O. Box 362, 6032 Tellus St.","Guarulhos","SP",28),("Honorato Kelley","16830513-0455","1643122142499","467-2634 Sit Avenue","P.O. Box 123, 4783 Nonummy Avenue","Itabuna","Bahia",92),("Jason Hatfield","16350804-7788","1683041561299","229-5646 Nunc Street","P.O. Box 148, 4905 Mauris. Av.","Imperatriz","Maranhão",7),("Brock Henderson","16360708-2546","1671022796199","719-4165 Tincidunt Avenue","Ap #508-1182 Lorem Road","Campinas","São Paulo",29),("Yasir Harris","16960510-0198","1612111446399","646-5959 Duis Street","Ap #762-7003 Lacus. Av.","Campos dos Goytacazes","RJ",83),("Graham Perez","16360412-7567","1668090343499","Ap #400-1579 Vitae, Road","Ap #808-3606 Magna. Ave","Belo Horizonte","MG",86);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Hakeem Hahn","16070129-2534","1644011167599","P.O. Box 862, 1572 Amet Road","P.O. Box 938, 2591 Fusce Rd.","Petrolina","Pernambuco",67),("Leo Porter","16350422-3797","1655121904599","Ap #483-9988 Aliquam St.","386-9116 Ac Rd.","Goiânia","GO",36),("Ulysses Pacheco","16310307-4831","1669021541799","P.O. Box 157, 6879 Ridiculus Avenue","438-2588 Ac Av.","Londrina","Paraná",65),("Adam Ball","16281214-1832","1666122911599","9907 Egestas Ave","P.O. Box 737, 5269 Pellentesque St.","Mauá","São Paulo",19),("Armando Livingston","16620505-3348","1658060559599","Ap #180-2620 Vehicula St.","P.O. Box 391, 3842 Lobortis Street","São José","SC",34),("Rahim Klein","16971014-7514","1644051445799","P.O. Box 340, 6410 Ante, St.","Ap #658-2698 Sed Street","São José dos Pinhais","Paraná",15),("Ira Fitzgerald","16230206-3850","1647080438799","6290 Vulputate, Rd.","P.O. Box 621, 4749 Integer Rd.","Imperatriz","Maranhão",79),("Kelly Wilkinson","16340703-1289","1623040273899","104-6435 Et Rd.","P.O. Box 259, 3668 Nulla Street","Campinas","SP",43),("Merritt Gates","16100322-2559","1629110997599","855-2981 Eu, Av.","4894 Risus Rd.","Santa Maria","Rio Grande do Sul",15),("Macaulay Steele","16650212-5377","1694080950699","8550 Commodo Rd.","8536 Elit. Rd.","Itabuna","Bahia",67);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Robert Walton","16000805-8927","1665061715599","8958 Feugiat. Rd.","3220 Ut Street","Campinas","SP",7),("Macon Newman","16910913-3901","1686061698799","Ap #516-3017 Adipiscing Rd.","Ap #958-1692 Arcu. Street","Niterói","RJ",82),("Julian Wiley","16940430-4967","1697121627099","P.O. Box 365, 6299 Nulla Av.","4974 Sapien St.","Mogi das Cruzes","SP",55),("Allen Holloway","16270903-1013","1630121343899","8039 Ultrices Rd.","Ap #759-1034 Cras Rd.","Mauá","SP",10),("Dieter Baxter","16450308-7548","1662120186599","P.O. Box 273, 5694 Etiam St.","Ap #312-5839 Mi Road","Mogi das Cruzes","SP",30),("Macaulay Bryan","16610222-5999","1617120849299","356-9891 Neque. Av.","8610 Tellus Avenue","Petrópolis","Rio de Janeiro",26),("Macaulay Cabrera","16010227-6896","1651070491999","P.O. Box 606, 3754 Nam Street","Ap #684-8170 Mollis. Ave","Canoas","RS",19),("Lev Burch","16991024-6843","1659100105099","Ap #498-6019 Praesent Rd.","Ap #313-9975 Nonummy Street","Luziânia","Goiás",35),("Demetrius Salinas","16580908-6365","1684072533999","P.O. Box 239, 3947 Ligula. Street","P.O. Box 884, 7806 Mauris St.","Ipatinga","Minas Gerais",10),("Hayes Cross","16480729-1515","1605032412499","175-7202 Luctus Av.","199-8952 Bibendum Street","Porto Alegre","Rio Grande do Sul",77);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Rigel Crane","16610727-6336","1685020134099","9275 Integer Av.","9045 Tellus Rd.","Niterói","RJ",69),("Adam Berg","16760209-6682","1640090548099","889-302 Rhoncus. Ave","Ap #546-5455 Donec St.","Itabuna","BA",77),("Thor Doyle","16401020-1988","1651030638099","5938 Libero Rd.","P.O. Box 112, 8418 Eu St.","Caxias","MA",52),("Zachary Dorsey","16920815-0111","1631072359799","8263 Sed Rd.","Ap #141-6748 Vestibulum Road","Jundiaí","São Paulo",95),("Merritt Bates","16060508-5372","1660102376399","P.O. Box 186, 1260 Sapien, Rd.","P.O. Box 618, 6816 Vehicula Rd.","Piracicaba","São Paulo",20),("Cody Lawson","16490327-2708","1685102399199","P.O. Box 468, 9308 Neque. Street","P.O. Box 308, 459 Faucibus Street","Guarulhos","São Paulo",6),("Zachery Cochran","16981018-0472","1650050677599","127-9642 Pharetra. Rd.","P.O. Box 134, 898 A St.","Aparecida de Goiânia","GO",88),("Timon Conner","16400724-6160","1659030588799","151-3290 Nulla Ave","P.O. Box 892, 405 Ac, Rd.","Guarapuava","Paraná",22),("Thomas Ballard","16370621-5468","1631010947099","Ap #139-4383 Vehicula Rd.","Ap #910-715 Tristique Av.","Niterói","Rio de Janeiro",48),("Nero Mccormick","16190726-9672","1669091146899","Ap #749-7400 Cras Av.","916-1862 Ac Rd.","Maracanaú","Ceará",92);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Walker Henson","16550721-8567","1676092936799","Ap #712-8297 A, Rd.","Ap #925-4545 Mattis Avenue","Petrópolis","Rio de Janeiro",92),("Dean Burgess","16080819-1225","1684060298799","3298 Aliquam Rd.","6555 Vivamus Rd.","Petrolina","PE",7),("Tanek Frye","16470110-6074","1663051974199","761-6907 Adipiscing. Ave","P.O. Box 530, 946 Tempus Avenue","Petrópolis","Rio de Janeiro",13),("Oren Fitzgerald","16350904-1855","1646061644099","Ap #715-7815 In St.","9197 Erat, Av.","Recife","PE",91),("Tiger Castaneda","16901205-2123","1697111662199","P.O. Box 881, 7047 Pede Rd.","Ap #854-5010 Quis Ave","Campinas","SP",91),("Erich Velazquez","16500123-5893","1643102932299","Ap #865-4840 Ipsum Rd.","P.O. Box 436, 3820 Eu Street","Ipatinga","Minas Gerais",38),("Quentin Rogers","16640618-8893","1691042898099","859-9847 Risus. Ave","411 Metus Road","Juazeiro","BA",19),("Porter Fischer","16951212-3135","1669061226199","593-8625 Tellus. Rd.","702-954 A Ave","Osasco","São Paulo",83),("Herman May","16590624-7274","1640052230399","P.O. Box 938, 7186 Justo Rd.","P.O. Box 953, 507 Curabitur Ave","Camaçari","Bahia",84),("Bert Hancock","16380416-1986","1605040332199","631-8677 Sapien, Ave","P.O. Box 562, 1919 Adipiscing Ave","Belford Roxo","Rio de Janeiro",31);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Benjamin Molina","16630523-9672","1631061828299","P.O. Box 353, 2662 Ac Av.","P.O. Box 535, 4069 Condimentum St.","Juiz de Fora","Minas Gerais",84),("Rudyard Fulton","16180616-8249","1611080429099","943-8941 Velit Ave","P.O. Box 577, 103 Donec St.","Cajazeiras","Paraíba",68),("Lee Walter","16141209-8236","1691121257899","4117 Mattis Av.","6448 Non, Rd.","Mogi das Cruzes","SP",76),("Isaiah Fry","16491207-1216","1612081397799","Ap #273-431 Pellentesque Av.","P.O. Box 105, 5625 Ut Street","Gravataí","Rio Grande do Sul",93),("James Branch","16120620-7142","1684122595099","508-9207 Convallis Road","P.O. Box 775, 8540 Tincidunt Rd.","Ribeirão Preto","SP",43),("Branden Owens","16871012-8854","1612051971399","Ap #331-3129 Ipsum St.","Ap #958-3369 Ut Ave","Guarapuava","PR",56),("Jerome Newman","16920229-1937","1691081636799","228-2589 Nunc Avenue","451-6875 Ipsum Ave","Londrina","PR",57),("Walter Jarvis","16370607-1010","1604072184899","4152 At Road","P.O. Box 409, 3411 At, Ave","Campos dos Goytacazes","RJ",36),("Timothy Kaufman","16920913-3009","1679052964999","1002 Ut, Street","Ap #422-2027 Dolor, Avenue","Ananindeua","PA",44),("Hammett Harper","16320627-2241","1678013052699","P.O. Box 259, 2546 At St.","Ap #640-6949 In Ave","Olinda","Pernambuco",94);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("James Duffy","16961007-5724","1640101815799","1230 Pellentesque. Avenue","Ap #280-6538 Ultrices. Avenue","Diadema","São Paulo",19),("Steven Hutchinson","16111027-0079","1653021666299","P.O. Box 376, 2579 Accumsan Road","Ap #769-3502 At Road","Mauá","São Paulo",9),("Oleg Fleming","16180319-1947","1678061992999","P.O. Box 902, 9972 Etiam Av.","Ap #970-9213 Suspendisse Avenue","Jundiaí","São Paulo",99),("Mufutau Howard","16500306-6700","1622010723199","P.O. Box 668, 7240 Neque St.","7833 Scelerisque, Rd.","Diadema","SP",49),("Jason Ayers","16140928-1365","1658112572299","8516 Imperdiet Rd.","1655 Tellus, St.","São José","Santa Catarina",80),("Sylvester Moses","16930430-8258","1608102188099","382-3253 Eget Rd.","Ap #571-1629 Tellus. St.","Paranaguá","Paraná",13),("Raymond Middleton","16480126-7693","1641111620399","Ap #352-2227 Egestas. St.","5920 Vitae Rd.","Itajaí","Santa Catarina",30),("Rudyard Robbins","16790206-7763","1663072128399","287-3662 Dolor, Rd.","796-7939 Adipiscing Rd.","Osasco","SP",76),("Caesar Willis","16070430-6729","1685051239599","1055 Auctor Street","P.O. Box 729, 9528 Orci. St.","Joinville","Santa Catarina",11),("Nigel Harrell","16820605-2618","1685050189899","669-525 Egestas Road","9540 Dis Rd.","Caruaru","PE",11);
INSERT INTO `Aluno` (`nome_Aluno`,`rg_Aluno`,`matricula_Aluno`,`rua_Aluno`,`bairro_Aluno`,`cidade_Aluno`,`estado_Aluno`,`numerocasa_Aluno`) VALUES ("Maxwell Walton","16440905-7454","1602020468099","8025 Nulla Street","P.O. Box 604, 1711 Lacus St.","Camaçari","BA",52),("Matthew Joyner","16041207-5897","1696040831599","P.O. Box 584, 5171 Nibh. St.","3218 Enim. Av.","Caucaia","Ceará",98),("Vincent Thomas","16330804-9232","1687121541399","Ap #600-4823 Adipiscing St.","182-9589 Conubia Avenue","Carapicuíba","São Paulo",40),("Yardley Palmer","16420229-6085","1660021045399","Ap #370-2959 Gravida. Rd.","P.O. Box 385, 6278 Libero Avenue","Montes Claros","MG",99),("Amir Aguirre","16191213-7153","1616102444299","196-8985 Felis Rd.","5694 Consequat Avenue","Ribeirão das Neves","Minas Gerais",93),("Plato Clements","16700408-2538","1670090317499","648-9887 Lectus Ave","441-9386 Aenean Street","Mogi das Cruzes","São Paulo",40),("Tobias Walton","16781213-9652","1647040344299","P.O. Box 832, 8162 Faucibus Ave","698-7027 Cursus Rd.","Fortaleza","CE",2),("Eaton Bell","16931022-1909","1639060907499","Ap #837-2153 Vulputate Rd.","Ap #908-7040 Magna. Road","Belém","PA",30),("Ignatius Reyes","16100123-9126","1653081179799","P.O. Box 529, 4304 Luctus Ave","Ap #792-6770 Ac Av.","Maranguape","CE",15),("Zane Nash","16040127-1101","1614121964299","Ap #299-1662 Erat. Street","Ap #863-6798 Lobortis St.","Santa Rita","Paraíba",54);

select * from Aluno;



create table Professor(
	id_Professor INT NOT NULL auto_increment primary key,
    nome_Professor VARCHAR(120) NOT NULL,
    cpf_Professor VARCHAR(45) NOT NULL

);

select nome_professor from Professor;

select * from Professor p, Disciplina d where
	p.id_Professor = d.id_Professor;
    
 select * from Professor p left JOIN Disciplina d on
	p.id_Professor = d.id_Professor 
    UNION
 select * from Professor p RIGHT JOIN Disciplina d on
	p.id_Professor = d.id_Professor;    
 
 -- CLÁUSULA JOIN ==========================================
 
 select a.nome_aluno, p.nome_professor, d.nome_disciplina from Aluno a 
 INNER JOIN Notas n on a.id_Aluno = n.id_ALuno 
 INNER JOIN Disciplina d on n.id_Disciplina = d.id_Disciplina 
	INNER JOIN Professor p on d.id_Professor = p.id_Professor and
    a.id_aluno=2;
 
 -- RESOLUÇÃO DO EXERCÍCIO
 
 SELECT D.NOME_DISCIPLINA, P.NOME_PROFESSOR, A.NOME_ALUNO FROM ALUNO A JOIN NOTAS N ON 
  
  A.ID_ALUNO = N.ID_ALUNO JOIN DISCIPLINA D ON
  D.ID_DISCIPLINA = N.ID_DISCIPLINA JOIN PROFESSOR P ON P.ID_PROFESSOR = D.ID_PROFESSOR AND
  D.ID_DISCIPLINA = 1;
  
  
  SELECT P.NOME_PROFESSOR FROM CURSO C JOIN CURSODISCIPLINA CD ON 
  C.ID_CURSO = CD.ID_CURSO JOIN DISCIPLINA D ON 
  D.ID_DISCIPLINA = CD.ID_DISCIPLINA JOIN PROFESSOR P ON
  P.ID_PROFESSOR = D.ID_PROFESSOR AND C.NOME_CURSO = (SELECT F.NOME_CURSO FROM CURSO F WHERE F.ID_CURSO =1) GROUP BY P.NOME_PROFESSOR;
  
  
   SELECT P.NOME_PROFESSOR FROM ALUNO A JOIN NOTAS N ON 
  
  A.ID_ALUNO = N.ID_ALUNO JOIN DISCIPLINA D ON
  D.ID_DISCIPLINA = N.ID_DISCIPLINA JOIN PROFESSOR P ON P.ID_PROFESSOR = D.ID_PROFESSOR AND
  A.ID_ALUNO = 2 GROUP BY P.NOME_PROFESSOR;
 
 SELECT * FROM NOTAS;
 
 SELECT A.NOME_ALUNO, (SELECT N.NOTA FROM NOTAS N WHERE N.ID_ALUNO = A.ID_ALUNO) AS NOTA FROM ALUNO A;
 
 
    
     

INSERT INTO PROFESSOR (NOME_PROFESSOR, CPF_PROFESSOR) VALUES ("SICRANO","111223334455"),("BELTRANO","445566778");

Select p.nome_Professor, COUNT(*) as Quantidade_Disciplina from Professor p, Disciplina d Where 
	p.id_Professor = d.id_Professor
    GROUP BY p.nome_Professor;
    


UPDATE PROFESSOR SET NOME_PROFESSOR="COISINHA" WHERE ID_PROFESSOR=4;

SELECT * FROM PROFESSOR;

create table TELEFONE_PROFESSOR(

	ID_TELEFONE_PROFESSOR INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TELEFONE_PROFESSOR VARCHAR(45),
    ID_PROFESSOR INT NOT NULL,
    CONSTRAINT FK_IDPROFESSOR_TELEFONE_PROFESSOR FOREIGN KEY(ID_PROFESSOR)
    REFERENCES PROFESSOR(ID_PROFESSOR)
    );
    
    insert into TELEFONE_PROFESSOR (TELEFONE_PROFESSOR, ID_PROFESSOR) VALUES ("75988882222",1),("7522223333",1),("7599996666",2),("7533334444",2);
    

    
 CREATE TABLE TELEFONE_ALUNO(
 
	ID_TELEFONE_ALUNO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    TELEFONE_ALUNO VARCHAR(45),
    ID_ALUNO INT NOT NULL,
    CONSTRAINT FK_IDALUNO_TELEFONE_ALUNO FOREIGN KEY(ID_ALUNO)
    REFERENCES ALUNO(ID_ALUNO)
    );
    
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-11-852-0860",5),("55-69-996-0542",5),("55-15-515-6921",6),("55-54-196-2613",17),("55-48-874-8346",92),("55-86-723-2407",50),("55-29-420-8800",18),("55-80-226-5436",16),("55-86-250-7560",36),("55-76-379-5736",66);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-98-119-1702",93),("55-35-671-8273",63),("55-18-449-1753",75),("55-49-554-7415",31),("55-52-725-0823",65),("55-35-124-1344",52),("55-33-807-1689",44),("55-45-887-6788",7),("55-95-504-0060",6),("55-77-925-0888",24);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-66-789-9367",54),("55-73-173-4739",44),("55-14-813-9864",43),("55-71-896-9133",18),("55-32-225-4500",19),("55-85-720-8446",21),("55-16-423-9749",31),("55-28-288-0634",44),("55-16-251-6164",86),("55-80-971-7887",52);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-89-196-6800",46),("55-45-602-5339",87),("55-14-599-7525",71),("55-76-145-3425",49),("55-29-134-3250",5),("55-59-375-3352",23),("55-92-395-2975",7),("55-55-354-3304",93),("55-89-152-8480",46),("55-90-465-8760",43);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-92-493-1187",28),("55-63-645-4572",26),("55-57-679-6924",57),("55-73-154-8263",64),("55-95-763-1074",88),("55-43-616-2180",32),("55-59-493-1237",79),("55-75-169-4418",46),("55-69-757-5045",91),("55-70-419-3664",54);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-98-548-0464",11),("55-97-985-3641",42),("55-14-196-1574",33),("55-87-711-3925",16),("55-11-181-5280",66),("55-86-810-7924",2),("55-90-924-0923",39),("55-25-158-0270",12),("55-16-788-0552",48),("55-84-875-6458",26);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-99-454-9640",48),("55-57-477-8303",91),("55-65-563-9918",73),("55-86-827-0345",39),("55-15-453-2441",1),("55-76-138-3229",19),("55-95-648-7669",22),("55-50-704-4766",91),("55-86-529-0875",79),("55-16-332-3419",12);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-22-238-5020",32),("55-53-839-5689",66),("55-92-552-7082",6),("55-20-229-9647",51),("55-44-278-4323",45),("55-92-937-7345",45),("55-97-888-1815",72),("55-87-109-3747",10),("55-88-581-4580",72),("55-16-257-5788",42);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-77-957-6836",32),("55-64-192-0582",95),("55-88-223-8382",34),("55-18-314-9777",46),("55-78-816-7397",79),("55-54-226-8304",70),("55-32-576-1841",41),("55-39-427-3777",98),("55-29-563-1576",84),("55-86-509-4679",95);
INSERT INTO `TELEFONE_ALUNO` (`TELEFONE_ALUNO`,`ID_ALUNO`) VALUES ("55-46-419-9015",4),("55-45-721-3307",4),("55-70-451-5470",24),("55-39-464-4706",55),("55-35-725-9038",24),("55-76-598-6381",6),("55-34-280-0030",68),("55-58-408-6532",32),("55-88-679-4317",89),("55-14-360-3059",95);

	CREATE TABLE CURSOALUNO(
    
		ID_CURSO INT NOT NULL,
        ID_ALUNO INT NOT NULL,
		CONSTRAINT FK_IDCURSO_CURSOALUNO FOREIGN KEY(ID_CURSO) REFERENCES CURSO(ID_CURSO),	
		CONSTRAINT FK_IDALUNO_CURSOALUNO FOREIGN KEY(ID_ALUNO) REFERENCES ALUNO(ID_ALUNO),
        PRIMARY KEY(ID_CURSO, ID_ALUNO)

    );
    
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (4,8),(2,169),(8,41),(2,133),(6,66),(6,102),(6,112),(2,184),(8,75),(2,147);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (3,102),(1,158),(4,69),(5,13),(8,55),(7,21),(7,131),(8,45),(8,110),(6,163);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (7,30),(4,43),(8,14),(5,169),(7,199),(3,127),(5,12),(10,38),(2,42),(1,121);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (6,188),(5,103),(1,199),(3,31),(4,91),(5,44),(5,29),(2,37),(8,188),(9,110);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (2,105),(7,42),(2,155),(8,94),(4,147),(9,57),(6,80),(10,43),(5,46),(1,183);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (3,162),(9,195),(8,189),(9,175),(9,47),(8,53),(7,74),(3,3),(9,65),(6,72);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (9,175),(7,141),(2,77),(1,68),(10,153),(4,138),(8,188),(4,197),(6,175),(10,140);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (5,75),(6,24),(8,139),(8,44),(9,108),(8,192),(8,136),(7,79),(8,37),(5,110);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (6,17),(3,117),(7,105),(5,94),(6,174),(7,194),(4,13),(8,198),(5,122),(1,97);
INSERT INTO `CURSOALUNO` (`ID_CURSO`,`ID_ALUNO`) VALUES (8,171),(4,132),(5,147),(2,77),(4,11),(7,20),(4,113),(9,108),(4,93),(9,8);

    SELECT * FROM CURSOALUNO;
    
    CREATE TABLE CURSO(
    
		ID_CURSO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        NOME_CURSO VARCHAR(50) NOT NULL,
        DESCRICAO_CURSO VARCHAR(300),
        TIPO_CURSO VARCHAR(50),
        ID_CAMPUS INT NOT NULL,
        CONSTRAINT FK_IDCAMPUS_CURSO FOREIGN KEY(ID_CAMPUS)
        REFERENCES CAMPUS(ID_CAMPUS)
        );
        
        SELECT C.NOME_CURSO FROM CURSO C, CAMPUS CA 
        WHERE C.ID_CAMPUS = CA.ID_CAMPUS AND
					  CA.ID_CAMPUS = 1;
        
        insert into CURSO (NOME_CURSO, DESCRICAO_CURSO, TIPO_CURSO, ID_CAMPUS) VALUES ( "Informática", "Curso Técnico em Informática", "Técnico", 1),("Eletrotécnica","Curso Técnico em Eletrotécnica", "Técnico", 1);
        insert into CURSO (NOME_CURSO, DESCRICAO_CURSO, TIPO_CURSO, ID_CAMPUS) VALUES ( "BioCombustíveis", "Curso Técnico em Biocombustíveis", "Técnico", 1),("Engenharia","Bacharelado em Engenharia Elétrica", "Superior", 1);
 
	select * from Curso;
        
    CREATE TABLE DISCIPLINA(
		ID_DISCIPLINA INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        NOME_DISCIPLINA VARCHAR(50) NOT NULL,
        DESCRICAO_DISCIPLINA VARCHAR(200),
        ID_PROFESSOR INT NOT NULL,
        CONSTRAINT FK_IDPROFESSOR_DISCIPLINA FOREIGN KEY (ID_PROFESSOR)
        REFERENCES PROFESSOR(ID_PROFESSOR)
        );
        
        SELECT D.NOME_DISCIPLINA, P.NOME_PROFESSOR FROM DISCIPLINA D, PROFESSOR P
        WHERE D.ID_PROFESSOR = P.ID_PROFESSOR;
        
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Programação", "Disciplina de programação orientada a objetos", 2);
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Química", "Disciplina de Química", 1);
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("BD", "Disciplina de Banco", 2); 
        INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Física", "Disciplina de Física", 1); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Português", "Disciplina de Protuguês", 3); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Matemática", "Disciplina de Matemática", 4); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Redes", "Disciplina de Redes", 5); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Circuitos", "Disciplina de Circuitos", 6); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Arquitetura", "Disciplina de Arquitetura", 7); 
        INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Arduino", "Disciplina de Arduino", 8); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Biologia", "Disciplina de Biologia", 9); 
		INSERT INTO Disciplina(nome_Disciplina, descricao_Disciplina, id_Professor) values ("Cálculo I", "Disciplina de Cálculo I", 10); 
        
        


		select * from disciplina;

            
		
        CREATE TABLE CURSODISCIPLINA(
    
		ID_CURSO INT NOT NULL,
        ID_DISCIPLINA INT NOT NULL,
        CONSTRAINT FK_IDCURSO_CURSODISCIPLINA FOREIGN KEY(ID_CURSO)
        REFERENCES CURSO(ID_CURSO),
        CONSTRAINT FK_IDDISCIPLINA_CURSODISCIPLINA FOREIGN KEY(ID_DISCIPLINA)
        REFERENCES DISCIPLINA(ID_DISCIPLINA),
        PRIMARY KEY(ID_CURSO, ID_DISCIPLINA)
        );
        
        SELECT D.NOME_DISCIPLINA as DISCIPLINA FROM CURSO C, CURSODISCIPLINA CD, DISCIPLINA D WHERE
        C.ID_CURSO = CD.ID_CURSO AND
        CD.ID_DISCIPLINA = D.ID_DISCIPLINA;
        
	INSERT INTO CursoDisciplina (id_Curso, id_Disciplina) values (1,1),(1,3),(2,2),(2,4);
   
        
		create table Notas(
			id_Aluno INT NOT NULL,
			id_Disciplina INT NOT NULL,
			constraint fk_idAluno_Notas foreign key(id_Aluno) references Aluno(id_Aluno),
			constraint fk_idDisciplina_Notas foreign key(id_Disciplina) references Disciplina(id_Disciplina),
			PRIMARY KEY(id_Aluno, id_Disciplina)
		);
        
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (91,4,1),(45,4,5),(29,1,1),(67,4,7),(52,4,1),(64,4,10),(41,2,9),(6,1,5),(51,4,1),(7,3,2);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (59,4,8),(5,1,9),(91,3,10),(66,1,5),(76,2,3),(61,1,3),(32,4,2),(34,4,10),(6,4,5),(9,3,1);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (91,1,7),(70,3,3),(31,4,2),(100,3,3),(97,3,1),(6,1,3),(32,2,5),(61,4,2),(77,4,6),(46,2,3);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (9,4,8),(64,4,10),(36,3,5),(28,1,4),(3,2,6),(77,2,5),(26,3,4),(36,3,3),(81,1,3),(17,2,1);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (79,2,6),(80,1,4),(57,4,2),(79,3,10),(88,1,2),(38,1,10),(62,4,8),(71,3,10),(77,1,1),(94,4,3);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (83,4,1),(99,3,1),(40,3,9),(18,1,7),(35,2,4),(64,3,4),(19,3,3),(2,2,2),(37,2,1),(63,2,3);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (18,3,4),(53,4,4),(90,1,9),(74,4,2),(28,1,4),(17,1,1),(94,4,10),(24,4,1),(79,1,4),(84,3,10);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (12,3,1),(54,1,9),(93,2,1),(94,3,8),(46,2,7),(18,3,5),(87,2,1),(98,4,8),(79,4,7),(90,3,8);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (25,2,3),(5,3,7),(44,3,1),(13,1,3),(85,1,7),(56,3,2),(80,4,10),(15,2,9),(2,4,4),(10,3,6);
	INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`) VALUES (22,1,3),(60,4,6),(74,1,3),(77,1,1),(62,2,1),(38,2,1),(66,2,7),(91,2,6),(74,1,8),(78,1,5);
    
    INSERT INTO `NOTAS` (`ID_ALUNO`,`ID_DISCIPLINA`,`NOTA`,`datalancamento`) VALUES (22,1,3,'2002-02-14');

        
        ALTER TABLE Notas ADD COLUMN datalancamento date;
        
        
        
        
        
        ALTER TABLE ALUNO DROP INDEX IDX_IDALUNO;
        
        -- INDEXs

			create index idx_idCampus on Campus(id_Campus);
			create index idx_idCurso on Curso(id_Curso);
			create index idx_idAluno on Aluno(id_Aluno);
			create index idx_idProfessor on Professor(id_Professor);
			create index idx_idDisciplina on Disciplina(id_Disciplina);
            
            