CONNECT / AS SYSDBA;

DROP USER olibrary CASCADE;

CREATE USER olibrary IDENTIFIED BY oracle;

ALTER USER olibrary DEFAULT TABLESPACE users
	QUOTA UNLIMITED ON users;

ALTER USER olibrary TEMPORARY TABLESPACE temp;

GRANT create session,
	create table,
	create procedure,
	create sequence,
	create trigger,
	create view,
	create synonym,
	alter session
TO olibrary;

GRANT execute ON sys.dbms_stats TO olibrary;

CONNECT olibrary/oracle



-- CREATION DES TABLES

CREATE TABLE CUSTOMERS (
	customer_id NUMBER(5) NOT NULL,
	last_name VARCHAR2(100) NOT NULL,
	first_name VARCHAR2(100) NOT NULL,
	address VARCHAR2(100) NOT NULL,
	postal_code NUMBER(5) NOT NULL,
	city VARCHAR2(100) NOT NULL,
	telephone NUMBER(20) NULL,
	email VARCHAR2(100) NULL,
	date_of_birth DATE NOT NULL,
	password VARCHAR2(20) NOT NULL,
	subscription_date DATE NOT NULL,
	contact NUMBER(5) NOT NULL,
	CONSTRAINT PK_CUSTOMERS PRIMARY KEY (customer_id)
);

CREATE TABLE EMPLOYEES (
	employee_id NUMBER(5) NOT NULL,
	last_name VARCHAR2(100) NOT NULL,
	first_name VARCHAR2(100) NOT NULL,
	login VARCHAR2(20) NOT NULL,
	password VARCHAR2(20) NOT NULL,
	niveau NUMBER(1) CONSTRAINT C_EMPLOYEES CHECK(niveau IN(1, 2, 3, 4)) NOT NULL,
	CONSTRAINT PK_EMPLOYEES PRIMARY KEY (employee_id)
);

CREATE TABLE PUBLISHERS (
	publisher_id NUMBER(5) NOT NULL,
	pusblisher_name VARCHAR2(100) NOT NULL,
	CONSTRAINT PK_PUBLISHERS PRIMARY KEY (publisher_id)
);

CREATE TABLE AUTHORS (
	author_id NUMBER(5) NOT NULL,
	last_name VARCHAR2(100) NOT NULL,
	first_name VARCHAR2(100) NULL,
	CONSTRAINT PK_AUTHORS PRIMARY KEY (author_id)
);

CREATE TABLE BOOKS (
	book_id NUMBER(5) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	subtitle VARCHAR2(100) NULL,
	publisher_id NUMBER(5) NOT NULL,
	author_id NUMBER(5) NOT NULL,
	publish_book_date DATE NOT NULL,
	category_id NUMBER(5) NOT NULL,
	book_cover VARCHAR2(255) NULL,
	book_summary TEXT NULL,
	CONSTRAINT PK_BOOKS PRIMARY KEY (book_id)
);

CREATE TABLE COPIES (
	copy_id NUMBER(5) NOT NULL,
	book_id NUMBER(5) NOT NULL,
	CONSTRAINT PK_COPIES PRIMARY KEY (copy_id)
);

CREATE TABLE PERIODICALS (
	periodical_id NUMBER(5) NOT NULL,
	title VARCHAR2(100) NOT NULL,
	subtitle VARCHAR2(100) NULL,
	date_publication DATE NOT NULL,
	delete_date DATE NOT NULL,
	category_id NUMBER(5) NOT NULL,
	periodical_cover VARCHAR2(255) NULL,
	CONSTRAINT PK_PERIODICALS PRIMARY KEY (periodical_id)
);

CREATE TABLE CATEGORIES (
	category_id NUMBER(5) NOT NULL,
	category_name VARCHAR2(100) NOT NULL,
	CONSTRAINT PK_CATEGORIES PRIMARY KEY (category_id)	
);

CREATE TABLE RESERVE_COPIES (
	copy_id NUMBER(5) NOT NULL,
	customer_id NUMBER(5) NOT NULL,
	reservation_start_date DATE NOT NULL,
	reservation_end_date DATE NOT NULL
);

CREATE TABLE BORROW_COPIES (
	copy_id NUMBER(5) NOT NULL,
	customer_id NUMBER(5) NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE NULL
);

CREATE TABLE RESERVE_PERIODICAL (
	periodical_id NUMBER(5) NOT NULL,
	customer_id NUMBER(5) NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE NOT NULL
);

CREATE TABLE BORROW_PERIODICAL (
	periodical_id NUMBER(5) NOT NULL,
	customer_id NUMBER(5) NOT NULL,
	borrow_date DATE NOT NULL,
	return_date DATE NULL
);


-- CREATION DES CLES ETRANGERES

ALTER TABLE CUSTOMERS 
	ADD CONSTRAINT FK_CUSTOMERS
	FOREIGN KEY (contact) REFERENCES EMPLOYEES(employee_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BOOKS
	ADD CONSTRAINT FK_BOOKS1
	FOREIGN KEY (publisher_id) REFERENCES PUBLISHERS(publisher_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BOOKS 
	ADD CONSTRAINT FK_BOOKS2
	FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BOOKS 
	ADD CONSTRAINT FK_BOOKS3
	FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE COPIES 
	ADD CONSTRAINT FK_COPIES
	FOREIGN KEY (book_id) REFERENCES BOOKS(book_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE PERIODICALS
	ADD CONSTRAINT FK_PERIODICALS
	FOREIGN KEY (category_id) REFERENCES CATEGORIES(category_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE RESERVE_COPIES 
	ADD CONSTRAINT FK_RESERVE_COPIES1
	FOREIGN KEY (copy_id) REFERENCES COPIES(copy_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE RESERVE_COPIES
	ADD CONSTRAINT FK_RESERVE_COPIES2
	FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BORROW_COPIES 
	ADD CONSTRAINT FK_BORROW_COPIES1
	FOREIGN KEY (copy_id) REFERENCES COPIES(copy_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BORROW_COPIES
	ADD CONSTRAINT FK_BORROW_COPIES2
	FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE RESERVE_PERIODICAL 
	ADD CONSTRAINT FK_RESERVE_PERIODICAL1
	FOREIGN KEY (periodical_id) REFERENCES PERIODICALS(periodical_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE RESERVE_PERIODICAL
	ADD CONSTRAINT FK_RESERVE_PERIODICAL2
	FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BORROW_PERIODICAL
	ADD CONSTRAINT FK_BORROW_PERIODICAL1
	FOREIGN KEY (periodical_id) REFERENCES PERIODICALS(periodical_id) ON DELETE CASCADE
	DISABLE;

ALTER TABLE BORROW_PERIODICAL
	ADD CONSTRAINT FK_BORROW_PERIODICAL2
	FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) ON DELETE CASCADE
	DISABLE;


-- Création des séquences -- 
CREATE SEQUENCE SEQ_CUSTOMERS;
CREATE SEQUENCE SEQ_EMPLOYEES;
CREATE SEQUENCE SEQ_PUBLISHERS;
CREATE SEQUENCE SEQ_AUTHORS;
CREATE SEQUENCE SEQ_BOOKS;
CREATE SEQUENCE SEQ_COPIES;
CREATE SEQUENCE SEQ_PERIODICALS;
CREATE SEQUENCE SEQ_CATEGORIES;

--Insertion des données

INSERT INTO customers VALUES(seq_customers.nextval, 'Martin', 'Robert', '12 rue du Mirail', 33000, 'Bordeaux', 0678894556, 'robert.martin@gmail.com', TO_DATE('12/08/1960','dd/mm/yyyy'), 'robertinoux33', TO_DATE('14/01/2017','dd/mm/yyyy'), 5);
INSERT INTO customers VALUES(seq_customers.nextval, 'Fakir', 'Alan', '21 rue du Corbeau', 33000, 'Bordeaux', 0665459878, 'alan.fakir@gmail.com', TO_DATE('21/08/1982','dd/mm/yyyy'), 'alanlegrandfakir', TO_DATE('14/01/2017','dd/mm/yyyy'), 5);
INSERT INTO customers VALUES(seq_customers.nextval, 'Berto', 'Alberte', '52 avenue du Général Leclerc', 33000, 'Bordeaux', 0614253685, 'al.berto@gmail.com', TO_DATE('20/02/1951','dd/mm/yyyy'), 'albertograndspieds', TO_DATE('14/01/2017','dd/mm/yyyy'), 4);
INSERT INTO customers VALUES(seq_customers.nextval, 'Gentille', 'Salome', '46 boulevard du Général De Gaulle', 33000, 'Bordeaux', 0655224466, 'salome.gentille@gmail.com', TO_DATE('14/11/1998','dd/mm/yyyy'), 'surtoutgentille', TO_DATE('15/01/2017','dd/mm/yyyy'), 3);
INSERT INTO customers VALUES(seq_customers.nextval, 'Gronais', 'Bruno', '72 impasse du Poteau', 33318, 'Pessac', 0613467982, 'bruno.gronais@gmail.com', TO_DATE('05/05/1985','dd/mm/yyyy'), 'maisauxyeuxbleus', TO_DATE('16/01/2017','dd/mm/yyyy'), 3);
INSERT INTO customers VALUES(seq_customers.nextval, 'Avaux', 'Marc', '107 avenue du Maréchal Ferrant', 33400, 'Talence', 0619264855, 'avaux.marc@gmail.com', TO_DATE('12/12/1975','dd/mm/yyyy'), 'pretfeugo', TO_DATE('15/01/2017','dd/mm/yyyy'), 2);
INSERT INTO customers VALUES(seq_customers.nextval, 'Efuzzi', 'Armelle', '23 rue Jacques Chirac', 33290, 'Blanquefort', 0647582536, 'armelle.efuzzi@gmail.com', TO_DATE('15/07/1967','dd/mm/yyyy'), 'laguerrecestmal', TO_DATE('15/01/2017','dd/mm/yyyy'), 4);
INSERT INTO customers VALUES(seq_customers.nextval, 'Dore', 'Louis', '63 rue des Tournesols', 33610, 'Cestas', 0615591559, 'louis.dore@gmail.com', TO_DATE('01/09/1990','dd/mm/yyyy'), 'jmvoixdchiotte', TO_DATE('17/01/2017','dd/mm/yyyy'), 2);
INSERT INTO customers VALUES(seq_customers.nextval, 'Jabert', 'Philippe', '69 rue de Tintin', 33610, 'Cestas', 0656594399, 'philippe.jabert@gmail.com', TO_DATE('22/12/1992','dd/mm/yyyy'), 'kamoulox', TO_DATE('17/01/2017','dd/mm/yyyy'), 4);
INSERT INTO customers VALUES(seq_customers.nextval, 'Doeuf', 'John', '87 rue du Capitaine Haddock', 33000, 'Bordeaux', 0626372811, 'john.doeuf@gmail.com', TO_DATE('20/08/1993','dd/mm/yyyy'), 'vsvoulezunwhisky', TO_DATE('18/01/2017','dd/mm/yyyy'), 6);
INSERT INTO customers VALUES(seq_customers.nextval, 'Solar', 'Emssi', '63 rue des Paquerettes', 33400, 'Talence', 0629308577, 'emssi.solar@gmail.com', TO_DATE('12/02/1980','dd/mm/yyyy'), 'justeundoigt', TO_DATE('18/01/2017','dd/mm/yyyy'), 6);
INSERT INTO customers VALUES(seq_customers.nextval, 'Mimati', 'Rémi', '188 chemin de Poudlard', 33610, 'Cestas', 0676153864, 'remi.mimati@gmail.com', TO_DATE('13/10/1959','dd/mm/yyyy'), 'lolmdrptdr', TO_DATE('19/01/2017','dd/mm/yyyy'), 1);
INSERT INTO customers VALUES(seq_customers.nextval, 'Aire', 'Axelle', '340 autoroute des 2 Roues', 33500, 'Libourne', 0646573594, 'vroum33@gmail.com', TO_DATE('13/10/1976','dd/mm/yyyy'), 'frien', TO_DATE('19/01/2017','dd/mm/yyyy'), 1);
INSERT INTO customers VALUES(seq_customers.nextval, 'Vita', 'Sébastien', '4 Privet Drive', 33150, 'Cenon', 0972302906, 'sebvita@easylia.com', TO_DATE('31/07/1980','dd/mm/yyyy'), 'alohomora', TO_DATE('05/01/2017','dd/mm/yyyy'), 1);
INSERT INTO customers VALUES(seq_customers.nextval, 'Capot', 'Pauline', '89 avenue des Smiley', 33000, 'Bordeaux', 0788201383, 'pcapot@ynov.com', TO_DATE('01/01/1993','dd/mm/yyyy'), 'alohomora', TO_DATE('05/01/2017','dd/mm/yyyy'), 1);
COMMIT;


INSERT INTO employees VALUES(seq_employees.nextval, 'Richard', 'Jean', 'jrich', 'jaimelirepicsou', 1);
INSERT INTO employees VALUES(seq_employees.nextval, 'De Briart', 'Alphonse', 'adebr', 'mafamilledabord', 2);
INSERT INTO employees VALUES(seq_employees.nextval, 'Robert', 'Bernard', 'brobe', 'indiendanslame', 4);
INSERT INTO employees VALUES(seq_employees.nextval, 'Leblanc', 'Juste', 'jlebl', 'unindiendanslaville', 3);
INSERT INTO employees VALUES(seq_employees.nextval, 'Carpentier', 'Achille', 'acarp', 'barberoussedu33', 2);
INSERT INTO employees VALUES(seq_employees.nextval, 'Joliveur', 'Hans', 'hjoli', 'mrjeuxdemots', 4);
COMMIT;


INSERT INTO publishers VALUES(seq_publishers.nextval, 'Robert Laffont');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Gallimard');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Geste');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Ada');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'John Day');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Editions du Rocher');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Artémis');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Milan');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Grandir');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Larousse');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Desclée de Brouwer');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Nil');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Librairie générale française');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Flammarion');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Pocket');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Points');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Seghers');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Arléa');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Hachette');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Fleurus');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Gautier Languereau');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Les belles lettres');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Actes suds editions');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Connaissances et savoirs');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Christian Bourgois');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Folio');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Le Livre de Poche');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Librio');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Casterman');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Lucky Comics');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Glénat');
INSERT INTO publishers VALUES(seq_publishers.nextval, 'Soleil');
COMMIT;


INSERT INTO authors VALUES(seq_authors.nextval, 'Levy', 'Marc');
INSERT INTO authors VALUES(seq_authors.nextval, 'Rowling', 'Joanne');
INSERT INTO authors VALUES(seq_authors.nextval, 'Robert', 'Anne Laure');
INSERT INTO authors VALUES(seq_authors.nextval, 'Tack', 'Karen');
INSERT INTO authors VALUES(seq_authors.nextval, 'Buck', 'Pearl');
INSERT INTO authors VALUES(seq_authors.nextval, 'Ruy-Sanchez', 'Alberto');
INSERT INTO authors VALUES(seq_authors.nextval, 'Perrault', 'Charles');
INSERT INTO authors VALUES(seq_authors.nextval, 'Sayer', 'Angela');
INSERT INTO authors VALUES(seq_authors.nextval, 'Holzwarth', 'Werner');
INSERT INTO authors VALUES(seq_authors.nextval, 'Gomi', 'Taro');
INSERT INTO authors VALUES(seq_authors.nextval, 'de Brunhoff', 'Jean');
INSERT INTO authors VALUES(seq_authors.nextval, 'Spinelli', 'Patricia');
INSERT INTO authors VALUES(seq_authors.nextval, 'Robert-Ouvray', 'Suzanne');
INSERT INTO authors VALUES(seq_authors.nextval, 'Mathieu', 'Hélène');
INSERT INTO authors VALUES(seq_authors.nextval, 'Halmos', 'Claude');
INSERT INTO authors VALUES(seq_authors.nextval, 'Jünger', 'Ernst');
INSERT INTO authors VALUES(seq_authors.nextval, 'Platon', ' ');
INSERT INTO authors VALUES(seq_authors.nextval, 'Rousseau', 'Jean-Jacques');
INSERT INTO authors VALUES(seq_authors.nextval, 'Voltaire', ' ');
INSERT INTO authors VALUES(seq_authors.nextval, 'Lieberman', 'Herbert');
INSERT INTO authors VALUES(seq_authors.nextval, 'Aragon', 'Louis');
INSERT INTO authors VALUES(seq_authors.nextval, 'Aymé', 'Marcel');
INSERT INTO authors VALUES(seq_authors.nextval, 'Dumas', 'Alexandre');
INSERT INTO authors VALUES(seq_authors.nextval, 'Simonin', 'Albert');
INSERT INTO authors VALUES(seq_authors.nextval, 'Sartre', 'Jean-Paul');
INSERT INTO authors VALUES(seq_authors.nextval, 'Mallet', 'Jean-François');
INSERT INTO authors VALUES(seq_authors.nextval, 'Collectif', ' ');
INSERT INTO authors VALUES(seq_authors.nextval, 'Vidard', 'Estelle');
INSERT INTO authors VALUES(seq_authors.nextval, 'Maeda', 'Yukari');
INSERT INTO authors VALUES(seq_authors.nextval, 'Gliori', 'Debi');
INSERT INTO authors VALUES(seq_authors.nextval, 'Tzvetan', 'Todorov');
INSERT INTO authors VALUES(seq_authors.nextval, 'Jousselin', 'Charles');
INSERT INTO authors VALUES(seq_authors.nextval, 'Klein', 'Etienne');
INSERT INTO authors VALUES(seq_authors.nextval, 'Tolkien', 'John');
INSERT INTO authors VALUES(seq_authors.nextval, 'Hugo', 'Victor');
INSERT INTO authors VALUES(seq_authors.nextval, 'Vian', 'Boris');
INSERT INTO authors VALUES(seq_authors.nextval, 'Camus', 'Albert');
INSERT INTO authors VALUES(seq_authors.nextval, 'Prévert', 'Jacques');
INSERT INTO authors VALUES(seq_authors.nextval, 'Baudelaire', 'Charles');
INSERT INTO authors VALUES(seq_authors.nextval, 'Hergé', NULL);
INSERT INTO authors VALUES(seq_authors.nextval, 'Goscinny', 'René');
INSERT INTO authors VALUES(seq_authors.nextval, 'Zep', NULL);
INSERT INTO authors VALUES(seq_authors.nextval, 'Alderson', 'Christophe');
COMMIT;


INSERT INTO books VALUES(seq_books.nextval, 'Toutes ces choses qu''on ne s''est pas dites', NULL, 1, 1, TO_DATE('15/08/2008', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Vous revoir', NULL, 1, 1, TO_DATE('12/11/2001', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Et si c''était vrai', NULL, 1, 1, TO_DATE('05/07/2000', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Mes amis Mes amours', NULL, 1, 1, TO_DATE('03/07/2006', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Harry Potter', 'et l''enfant maudit', 2, 2, TO_DATE('30/06/2016', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le Berry', NULL, 3, 3, TO_DATE('15/10/2015', 'dd/mm/yyyy'), 2);
INSERT INTO books VALUES(seq_books.nextval, 'Cupcakes, tartes et biscuits, oh oui !', NULL, 4, 4, TO_DATE('10/12/2013', 'dd/mm/yyyy'), 3);
INSERT INTO books VALUES(seq_books.nextval, 'Pivoine', NULL, 5, 5, TO_DATE('25/04/1949', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'La peau de la terre', NULL, 6, 6, TO_DATE('01/09/2010', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Contes', 'Editions critiques de Jean-Pierre Collinet', 2, 7, TO_DATE('01/06/1981', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'L''encyclopédie du chat', NULL, 7, 8, TO_DATE('01/01/2001', 'dd/mm/yyyy'), 4);
INSERT INTO books VALUES(seq_books.nextval, 'De la petite taupe qui voulait savoir qui lui avait fait sur la tête', NULL, 8, 9, TO_DATE('01/10/2005', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'A chacun sa crotte', NULL, 9, 10, TO_DATE('01/10/2000', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'Babar', 'En forêt', 10, 11, TO_DATE('01/10/1990', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'Un aute regard sur l''enfant', 'De la naissance à six ans', 11, 12, TO_DATE('01/02/2010', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Intégration motrice et développement psychique', 'Une théorie de la psychomotricité', 11, 13, TO_DATE('19/12/2008', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'L''autorité expliquée aux parents', NULL, 12, 14, TO_DATE('19/01/2008', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Pourquoi l''amour ne suffit pas', 'Aider l''enfant à se construire', 12, 15, TO_DATE('19/01/2006', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Premier journal parisien', NULL, 13, 16, TO_DATE('31/12/1998', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Jardins et routes', NULL, 13, 16, TO_DATE('01/01/1982', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Apologie de Socrate', 'Criton', 14, 17, TO_DATE('04/01/1999', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Les confessions', 'Livres I à IV', 15, 18, TO_DATE('01/01/2003', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'L''ingénu', NULL, 13, 19, TO_DATE('01/01/2007', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'La traque', NULL, 16, 20, TO_DATE('16/06/1995', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Les yeux d''Elsa', NULL, 17, 21, TO_DATE('31/12/1998', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'La jument verte', NULL, 2, 22, TO_DATE('01/01/1933', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le capitaine Pamphile', NULL, 2, 23, TO_DATE('11/12/2003', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le savoir-vivre chez les truands', NULL, 18, 24, TO_DATE('11/05/2006', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Lettre ouverte aux voyous.', NULL, 18, 24, TO_DATE('11/05/2006', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Nekrassov', NULL, 2, 25, TO_DATE('01/01/1956', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le diable et le bon dieu', NULL, 2, 25, TO_DATE('01/01/1951', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Simplissime', 'Le livre de cuisine light le + facile du monde', 19, 26, TO_DATE('01/04/2016', 'dd/mm/yyyy'), 3);
INSERT INTO books VALUES(seq_books.nextval, 'Encyclopédie des animaux', NULL, 2, 26, TO_DATE('26/09/2013', 'dd/mm/yyyy'), 4);
INSERT INTO books VALUES(seq_books.nextval, 'Animaux de la savane', NULL, 20, 27, TO_DATE('11/09/2014', 'dd/mm/yyyy'), 4);
INSERT INTO books VALUES(seq_books.nextval, 'La très grande princesse', NULL, 8, 28, TO_DATE('19/03/2014', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'Le tout petit roi', NULL, 8, 28, TO_DATE('14/09/2011', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'Maman est là quoi qu''il arrive', NULL, 21, 29, TO_DATE('02/07/2014', 'dd/mm/yyyy'), 5);
INSERT INTO books VALUES(seq_books.nextval, 'Médecine, santé et sciences humaines', 'Manuel', 22, 30, TO_DATE('02/07/2014', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'L''homme de la douleur', NULL, 24, 31, TO_DATE('02/12/2016', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Le pays qu''habitait Albert Einstein', NULL, 23, 32, TO_DATE('19/10/2016', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Petit voyage dans le monde des quanta', NULL, 14, 32, TO_DATE('07/09/2016', 'dd/mm/yyyy'), 6);
INSERT INTO books VALUES(seq_books.nextval, 'Le Seigneur des Anneaux', 'La Communauté de l''Anneau', 15, 33, TO_DATE('02/10/2014', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le Seigneur des Anneaux', 'Les Deux Tours', 15, 33, TO_DATE('22/10/2015', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Le Seigneur des Anneaux', 'Le Retour du Roi', 15, 33, TO_DATE('13/10/2016', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Zadig ou la destinée', NULL, 16, 19, TO_DATE('05/06/2015', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Les Misérables', NULL, 17, 34, TO_DATE('01/01/2016', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'L''Ecume des Jours', NULL, 17, 35, TO_DATE('01/06/2014', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'J''irai cracher sur vos tombes', NULL, 17, 35, TO_DATE('01/03/1997', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Les Morts ont tous la même peau', NULL, 17, 35, TO_DATE('01/09/1997', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'L''Etranger', NULL, 16, 36, TO_DATE('01/12/1971', 'dd/mm/yyyy'), 1);
INSERT INTO books VALUES(seq_books.nextval, 'Paroles', NULL, 16, 37, TO_DATE('01/12/1976', 'dd/mm/yyyy'), 7);
INSERT INTO books VALUES(seq_books.nextval, 'Les Fleurs du Mal', NULL, 16, 38, TO_DATE('01/12/1976', 'dd/mm/yyyy'), 7);
INSERT INTO books VALUES(seq_books.nextval, 'Les Aventures de Tintin', 'Tintin au pays des Soviets', 18, 39, TO_DATE('01/01/2017', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Les Aventures de Tintin', 'On a marché sur la Lune', 18, 39, TO_DATE('04/05/1993', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Les Aventures de Tintin', 'Tintin au Congo', 18, 39, TO_DATE('04/05/1993', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Lucky Luke', 'Chasseur de primes', 19, 40, TO_DATE('04/01/2017', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Titeuf', 'Dieu, le sexe et les bretelles', 20, 41, TO_DATE('25/08/2010', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Titeuf', 'Le derrière des choses', 20, 41, TO_DATE('12/06/1996', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Titeuf', 'Lâchez-moi le slip !', 20, 41, TO_DATE('23/08/2000', 'dd/mm/yyyy'), 8);
INSERT INTO books VALUES(seq_books.nextval, 'Lanfeust de Troy', 'L''Ivoire du Magohamoth', 21, 42, TO_DATE('15/06/2016', 'dd/mm/yyyy'), 8);
COMMIT;


INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Que choisir', 'Alimentation la face cachée des recettes traditionnelles', TO_DATE('05/01/2017', 'dd/mm/yyyy'), TO_DATE('05/05/2017', 'dd/mm/yyyy'), 9);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Assistantes Maternelles', 'Coucou le jeu !', TO_DATE('09/11/2016', 'dd/mm/yyyy'), TO_DATE('05/03/2017', 'dd/mm/yyyy'), 10);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Assistantes Maternelles', 'La sieste : un temps précieux', TO_DATE('17/08/2016', 'dd/mm/yyyy'), TO_DATE('17/12/2016', 'dd/mm/yyyy'), 10);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Assistantes Maternelles', 'Psychomotricité : la sécurité de base', TO_DATE('15/09/2016', 'dd/mm/yyyy'), TO_DATE('15/01/2017', 'dd/mm/yyyy'), 10);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Rustica', 'Je réussis mes premiers semis', TO_DATE('10/01/2017', 'dd/mm/yyyy'), TO_DATE('10/05/2017', 'dd/mm/yyyy'), 11);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Rustica', 'Numéro spécial lune', TO_DATE('20/01/2017', 'dd/mm/yyyy'), TO_DATE('20/05/2017', 'dd/mm/yyyy'), 11);
INSERT INTO periodicals VALUES(seq_periodicals.nextval, 'Gala', 'Spécial luxe', TO_DATE('19/10/2016', 'dd/mm/yyyy'), TO_DATE('19/02/2017', 'dd/mm/yyyy'), 12);
COMMIT;


INSERT INTO categories VALUES(seq_categories.nextval, 'Littérature');
INSERT INTO categories VALUES(seq_categories.nextval, 'Voyages');
INSERT INTO categories VALUES(seq_categories.nextval, 'Cuisine');
INSERT INTO categories VALUES(seq_categories.nextval, 'Animaux');
INSERT INTO categories VALUES(seq_categories.nextval, 'Enfance');
INSERT INTO categories VALUES(seq_categories.nextval, 'Sciences humaines et sociales');
INSERT INTO categories VALUES(seq_categories.nextval, 'Poésie');
INSERT INTO categories VALUES(seq_categories.nextval, 'Bande Dessinée');
INSERT INTO categories VALUES(seq_categories.nextval, 'Pratique');
INSERT INTO categories VALUES(seq_categories.nextval, 'Professionnel');
INSERT INTO categories VALUES(seq_categories.nextval, 'Nature et environnement');
INSERT INTO categories VALUES(seq_categories.nextval, 'People');
COMMIT;


INSERT INTO copies VALUES(seq_copies.nextval, 1);
INSERT INTO copies VALUES(seq_copies.nextval, 1);
INSERT INTO copies VALUES(seq_copies.nextval, 1);
INSERT INTO copies VALUES(seq_copies.nextval, 2);
INSERT INTO copies VALUES(seq_copies.nextval, 2);
INSERT INTO copies VALUES(seq_copies.nextval, 3);
INSERT INTO copies VALUES(seq_copies.nextval, 3);
INSERT INTO copies VALUES(seq_copies.nextval, 3);
INSERT INTO copies VALUES(seq_copies.nextval, 3);
INSERT INTO copies VALUES(seq_copies.nextval, 4);
INSERT INTO copies VALUES(seq_copies.nextval, 5);
INSERT INTO copies VALUES(seq_copies.nextval, 5);
INSERT INTO copies VALUES(seq_copies.nextval, 5);
INSERT INTO copies VALUES(seq_copies.nextval, 5);
INSERT INTO copies VALUES(seq_copies.nextval, 5);
INSERT INTO copies VALUES(seq_copies.nextval, 6);
INSERT INTO copies VALUES(seq_copies.nextval, 6);
INSERT INTO copies VALUES(seq_copies.nextval, 7);
INSERT INTO copies VALUES(seq_copies.nextval, 7);
INSERT INTO copies VALUES(seq_copies.nextval, 7);
INSERT INTO copies VALUES(seq_copies.nextval, 7);
INSERT INTO copies VALUES(seq_copies.nextval, 7);
INSERT INTO copies VALUES(seq_copies.nextval, 8);
INSERT INTO copies VALUES(seq_copies.nextval, 8);
INSERT INTO copies VALUES(seq_copies.nextval, 9);
INSERT INTO copies VALUES(seq_copies.nextval, 9);
INSERT INTO copies VALUES(seq_copies.nextval, 9);
INSERT INTO copies VALUES(seq_copies.nextval, 10);
INSERT INTO copies VALUES(seq_copies.nextval, 10);
INSERT INTO copies VALUES(seq_copies.nextval, 11);
INSERT INTO copies VALUES(seq_copies.nextval, 11);
INSERT INTO copies VALUES(seq_copies.nextval, 11);
INSERT INTO copies VALUES(seq_copies.nextval, 11);
INSERT INTO copies VALUES(seq_copies.nextval, 12);
INSERT INTO copies VALUES(seq_copies.nextval, 13);
INSERT INTO copies VALUES(seq_copies.nextval, 13);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 14);
INSERT INTO copies VALUES(seq_copies.nextval, 15);
INSERT INTO copies VALUES(seq_copies.nextval, 15);
INSERT INTO copies VALUES(seq_copies.nextval, 16);
INSERT INTO copies VALUES(seq_copies.nextval, 16);
INSERT INTO copies VALUES(seq_copies.nextval, 16);
INSERT INTO copies VALUES(seq_copies.nextval, 16);
INSERT INTO copies VALUES(seq_copies.nextval, 16);
INSERT INTO copies VALUES(seq_copies.nextval, 17);
INSERT INTO copies VALUES(seq_copies.nextval, 17);
INSERT INTO copies VALUES(seq_copies.nextval, 17);
INSERT INTO copies VALUES(seq_copies.nextval, 18);
INSERT INTO copies VALUES(seq_copies.nextval, 18);
INSERT INTO copies VALUES(seq_copies.nextval, 18);
INSERT INTO copies VALUES(seq_copies.nextval, 19);
INSERT INTO copies VALUES(seq_copies.nextval, 20);
INSERT INTO copies VALUES(seq_copies.nextval, 21);
INSERT INTO copies VALUES(seq_copies.nextval, 21);
INSERT INTO copies VALUES(seq_copies.nextval, 21);
INSERT INTO copies VALUES(seq_copies.nextval, 22);
INSERT INTO copies VALUES(seq_copies.nextval, 22);
INSERT INTO copies VALUES(seq_copies.nextval, 23);
INSERT INTO copies VALUES(seq_copies.nextval, 23);
INSERT INTO copies VALUES(seq_copies.nextval, 24);
INSERT INTO copies VALUES(seq_copies.nextval, 25);
INSERT INTO copies VALUES(seq_copies.nextval, 25);
INSERT INTO copies VALUES(seq_copies.nextval, 25);
INSERT INTO copies VALUES(seq_copies.nextval, 26);
INSERT INTO copies VALUES(seq_copies.nextval, 26);
INSERT INTO copies VALUES(seq_copies.nextval, 27);
INSERT INTO copies VALUES(seq_copies.nextval, 27);
INSERT INTO copies VALUES(seq_copies.nextval, 27);
INSERT INTO copies VALUES(seq_copies.nextval, 27);
INSERT INTO copies VALUES(seq_copies.nextval, 28);
INSERT INTO copies VALUES(seq_copies.nextval, 28);
INSERT INTO copies VALUES(seq_copies.nextval, 29);
INSERT INTO copies VALUES(seq_copies.nextval, 30);
INSERT INTO copies VALUES(seq_copies.nextval, 30);
INSERT INTO copies VALUES(seq_copies.nextval, 31);
INSERT INTO copies VALUES(seq_copies.nextval, 31);
INSERT INTO copies VALUES(seq_copies.nextval, 32);
INSERT INTO copies VALUES(seq_copies.nextval, 32);
INSERT INTO copies VALUES(seq_copies.nextval, 32);
INSERT INTO copies VALUES(seq_copies.nextval, 33);
INSERT INTO copies VALUES(seq_copies.nextval, 33);
INSERT INTO copies VALUES(seq_copies.nextval, 34);
INSERT INTO copies VALUES(seq_copies.nextval, 34);
INSERT INTO copies VALUES(seq_copies.nextval, 34);
INSERT INTO copies VALUES(seq_copies.nextval, 35);
INSERT INTO copies VALUES(seq_copies.nextval, 36);
INSERT INTO copies VALUES(seq_copies.nextval, 36);
INSERT INTO copies VALUES(seq_copies.nextval, 37);
INSERT INTO copies VALUES(seq_copies.nextval, 38);
INSERT INTO copies VALUES(seq_copies.nextval, 38);
INSERT INTO copies VALUES(seq_copies.nextval, 38);
INSERT INTO copies VALUES(seq_copies.nextval, 38);
INSERT INTO copies VALUES(seq_copies.nextval, 39);
INSERT INTO copies VALUES(seq_copies.nextval, 40);
INSERT INTO copies VALUES(seq_copies.nextval, 40);
INSERT INTO copies VALUES(seq_copies.nextval, 40);
INSERT INTO copies VALUES(seq_copies.nextval, 41);
INSERT INTO copies VALUES(seq_copies.nextval, 41);
INSERT INTO copies VALUES(seq_copies.nextval, 41);
INSERT INTO copies VALUES(seq_copies.nextval, 42);
INSERT INTO copies VALUES(seq_copies.nextval, 42);
INSERT INTO copies VALUES(seq_copies.nextval, 42);
INSERT INTO copies VALUES(seq_copies.nextval, 43);
INSERT INTO copies VALUES(seq_copies.nextval, 43);
INSERT INTO copies VALUES(seq_copies.nextval, 44);
INSERT INTO copies VALUES(seq_copies.nextval, 44);
INSERT INTO copies VALUES(seq_copies.nextval, 44);
INSERT INTO copies VALUES(seq_copies.nextval, 44);
INSERT INTO copies VALUES(seq_copies.nextval, 44);
INSERT INTO copies VALUES(seq_copies.nextval, 45);
INSERT INTO copies VALUES(seq_copies.nextval, 46);
INSERT INTO copies VALUES(seq_copies.nextval, 47);
INSERT INTO copies VALUES(seq_copies.nextval, 47);
INSERT INTO copies VALUES(seq_copies.nextval, 47);
INSERT INTO copies VALUES(seq_copies.nextval, 48);
INSERT INTO copies VALUES(seq_copies.nextval, 49);
INSERT INTO copies VALUES(seq_copies.nextval, 49);
INSERT INTO copies VALUES(seq_copies.nextval, 50);
INSERT INTO copies VALUES(seq_copies.nextval, 50);
INSERT INTO copies VALUES(seq_copies.nextval, 51);
INSERT INTO copies VALUES(seq_copies.nextval, 51);
INSERT INTO copies VALUES(seq_copies.nextval, 51);
INSERT INTO copies VALUES(seq_copies.nextval, 52);
INSERT INTO copies VALUES(seq_copies.nextval, 52);
INSERT INTO copies VALUES(seq_copies.nextval, 52);
INSERT INTO copies VALUES(seq_copies.nextval, 53);
INSERT INTO copies VALUES(seq_copies.nextval, 53);
INSERT INTO copies VALUES(seq_copies.nextval, 53);
INSERT INTO copies VALUES(seq_copies.nextval, 54);
INSERT INTO copies VALUES(seq_copies.nextval, 54);
INSERT INTO copies VALUES(seq_copies.nextval, 54);
INSERT INTO copies VALUES(seq_copies.nextval, 54);
INSERT INTO copies VALUES(seq_copies.nextval, 55);
INSERT INTO copies VALUES(seq_copies.nextval, 55);
INSERT INTO copies VALUES(seq_copies.nextval, 56);
INSERT INTO copies VALUES(seq_copies.nextval, 56);
INSERT INTO copies VALUES(seq_copies.nextval, 57);
INSERT INTO copies VALUES(seq_copies.nextval, 57);
INSERT INTO copies VALUES(seq_copies.nextval, 58);
INSERT INTO copies VALUES(seq_copies.nextval, 58);
INSERT INTO copies VALUES(seq_copies.nextval, 59);
INSERT INTO copies VALUES(seq_copies.nextval, 59);
INSERT INTO copies VALUES(seq_copies.nextval, 60);
INSERT INTO copies VALUES(seq_copies.nextval, 60);
COMMIT;

-- Activation des contraintes
ALTER TABLE CUSTOMERS
	ENABLE CONSTRAINT PK_CUSTOMERS;

ALTER TABLE CUSTOMERS
	ENABLE CONSTRAINT FK_CUSTOMERS;

ALTER TABLE EMPLOYEES
	ENABLE CONSTRAINT PK_EMPLOYEES;

ALTER TABLE EMPLOYEES
	ENABLE CONSTRAINT C_EMPLOYEES;

ALTER TABLE PUBLISHERS
	ENABLE CONSTRAINT PK_PUBLISHERS;

ALTER TABLE AUTHORS
	ENABLE CONSTRAINT PK_AUTHORS;

ALTER TABLE BOOKS
	ENABLE CONSTRAINT PK_BOOKS;

ALTER TABLE BOOKS
	ENABLE CONSTRAINT FK_BOOKS1;

ALTER TABLE BOOKS
	ENABLE CONSTRAINT FK_BOOKS2;

ALTER TABLE BOOKS
	ENABLE CONSTRAINT FK_BOOKS3;

ALTER TABLE COPIES
	ENABLE CONSTRAINT PK_COPIES;

ALTER TABLE COPIES
	ENABLE CONSTRAINT FK_COPIES;

ALTER TABLE PERIODICALS
	ENABLE CONSTRAINT PK_PERIODICALS;

ALTER TABLE PERIODICALS
	ENABLE CONSTRAINT FK_PERIODICALS;

ALTER TABLE CATEGORIES
	ENABLE CONSTRAINT PK_CATEGORIES;

ALTER TABLE RESERVE_COPIES
	ENABLE CONSTRAINT FK_RESERVE_COPIES1;

ALTER TABLE RESERVE_COPIES
	ENABLE CONSTRAINT FK_RESERVE_COPIES2;

ALTER TABLE BORROW_COPIES
	ENABLE CONSTRAINT FK_BORROW_COPIES1;

ALTER TABLE BORROW_COPIES
	ENABLE CONSTRAINT FK_BORROW_COPIES2;

ALTER TABLE RESERVE_PERIODICAL
	ENABLE CONSTRAINT FK_RESERVE_PERIODICAL1;

ALTER TABLE RESERVE_PERIODICAL
	ENABLE CONSTRAINT FK_RESERVE_PERIODICAL2;

ALTER TABLE BORROW_PERIODICAL
	ENABLE CONSTRAINT FK_BORROW_PERIODICAL1;

ALTER TABLE BORROW_PERIODICAL
	ENABLE CONSTRAINT FK_BORROW_PERIODICAL2;
