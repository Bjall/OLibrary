CREATE DATABASE olibrary;

CREATE TABLE `olibrary`.`publishers` ( `publisher_id` INT(5) NOT NULL AUTO_INCREMENT ,
			 `publisher_name` VARCHAR(100) NOT NULL , 
			 PRIMARY KEY (`publisher_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`authors` ( `author_id` INT(5) NOT NULL AUTO_INCREMENT , 
			  `author_lastname` VARCHAR(100) NOT NULL , 
			  `author_firstname` VARCHAR(100) NULL , 
			  PRIMARY KEY (`author_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`employees` ( `employee_id` INT(5) NOT NULL AUTO_INCREMENT , 
			 `employee_lastname` VARCHAR(100) NOT NULL , 
			 `employee_firstname` VARCHAR(100) NOT NULL , 
			 `employee_login` VARCHAR(20) NOT NULL , 
			 `employee_password` VARCHAR(20) NOT NULL , 
			 `employee_level` INT(1) NOT NULL , 
			 PRIMARY KEY (`employee_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`books` ( `book_id` INT(5) NOT NULL AUTO_INCREMENT , 
			 `book_title` VARCHAR(100) NOT NULL , 
			 `book_subtitle` VARCHAR(100) NULL , 
			 `publisher_id` INT(5) NOT NULL , 
			 `author_id` INT(5) NOT NULL , 
			 `publish_book_date` DATE NOT NULL , 
			 `category_id` INT(5) NOT NULL, `book_cover` VARCHAR(255), `book_summary` TEXT  , 
			 PRIMARY KEY (`book_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`copies` ( `copy_id` INT(5) NOT NULL AUTO_INCREMENT , 
			 `book_id` INT(5) NOT NULL , 
			 PRIMARY KEY (`copy_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`categories` ( `category_id` INT(5) NOT NULL AUTO_INCREMENT , 
			 `category_name` VARCHAR(100) NOT NULL , 
			 PRIMARY KEY (`category_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`reserve_copies` ( `copy_id` INT(5) NOT NULL , `customer_id` INT(5) NOT NULL , 
			 `reservation_start_date` DATE NOT NULL , 
			 `reservation_end_date` DATE NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`borrow_copies` ( `copy_id` INT(5) NOT NULL , `customer_id` INT(5) NOT NULL , 
			 `borrow_date` DATE NOT NULL , 
			 `return_date` DATE NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`reserve_periodicals` ( `periodical_id` INT(5) NOT NULL , 
			 `customer_id` INT(5) NOT NULL , 
			 `reservation_start_date` DATE NOT NULL , 
			 `reservation_end_date` DATE NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`borrow_periodicals` ( `periodical_id` INT(5) NOT NULL ,
			 `customer_id` INT(5) NOT NULL , 
			 `borrow_date` DATE NOT NULL , 
			 `return_date` DATE NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`periodicals` ( `periodical_id` INT(5) NOT NULL AUTO_INCREMENT , 
	`periodical_title` VARCHAR(100) NOT NULL , 
	`periodical_subtitle` VARCHAR(100) NULL , 
	`periodical_date` DATE NOT NULL , 
	`periodical_deletedate` DATE NOT NULL , 
	`category_id` INT(5) NOT NULL , 
	`periodical_cover` VARCHAR(255) NULL,
	PRIMARY KEY (`periodical_id`)) ENGINE = InnoDB;

CREATE TABLE `olibrary`.`customers` ( `customer_id` INT(5) NOT NULL AUTO_INCREMENT , 
			 `customer_lastname` VARCHAR(100) NOT NULL , 
			 `customer_firstname` VARCHAR(100) NOT NULL , 
			 `customer_address` VARCHAR(100) NOT NULL , 
			 `customer_cp` INT(5) NOT NULL , 
			 `customer_city` VARCHAR(100) NOT NULL , 
			 `customer_telephone` INT(20) NOT NULL , 
			 `customer_email` VARCHAR(100) NOT NULL , 
			 `customer_dateofbirth` DATE NOT NULL , 
			 `customer_password` VARCHAR(20) NOT NULL , 
			 `customer_subscriptiondate` DATE NOT NULL , 
			 `contact` INT(5) NOT NULL, PRIMARY KEY (`customer_id`)) ENGINE = InnoDB;








 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Levy', 'Marc');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Rowling', 'Joanne');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Robert', 'Anne Laure');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Tack', 'Karen');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Buck', 'Pearl');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Ruy-Sanchez', 'Alberto');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Perrault', 'Charles');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Sayer', 'Angela');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Holzwarth', 'Werner');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Gomi', 'Taro');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'de Brunhoff', 'Jean');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Spinelli', 'Patricia');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Robert-Ouvray', 'Suzanne');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Mathieu', 'Hélène');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Halmos', 'Claude');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Jünger', 'Ernst');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Platon', ' ');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Rousseau', 'Jean-Jacques');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Voltaire', ' ');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Lieberman', 'Herbert');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Aragon', 'Louis');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Aymé', 'Marcel');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Dumas', 'Alexandre');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Simonin', 'Albert');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Sartre', 'Jean-Paul');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Mallet', 'Jean-François');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Collectif', ' ');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Vidard', 'Estelle');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Maeda', 'Yukari');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Gliori', 'Debi');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Tzvetan', 'Todorov');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Jousselin', 'Charles');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Klein', 'Etienne');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Tolkien', 'John');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Hugo', 'Victor');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Vian', 'Boris');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Camus', 'Albert');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Prévert', 'Jacques');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Baudelaire', 'Charles');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Hergé', NULL);
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Goscinny', 'René');
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Zep', NULL);
 INSERT INTO `olibrary`.`authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES(NULL, 'Alderson', 'Christophe');





 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Martin', 'Robert', '12 rue du Mirail', 33000, 'Bordeaux', '0678894556', 'robert.martin@gmail.com', '1960-08-12', 'robertinoux33', '2017-01-14', 5);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Fakir', 'Alan', '21 rue du Corbeau', 33000, 'Bordeaux', '0665459878', 'alan.fakir@gmail.com', '1982-08-21', 'alanlegrandfakir', '2017-01-14', 5);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Berto', 'Alberte', '52 avenue du Général Leclerc', 33000, 'Bordeaux', '0614253685', 'al.berto@gmail.com', '1951-02-20', 'albertograndspieds', '2017-01-14', 4);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Gentille', 'Salome', '46 boulevard du Général De Gaulle', 33000, 'Bordeaux', '0655224466', 'salome.gentille@gmail.com', '1998-11-14', 'surtoutgentille', '2017-01-15', 3);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Gronais', 'Bruno', '72 impasse du Poteau', 33318, 'Pessac', '0613467982', 'bruno.gronais@gmail.com', '1985-05-05', 'maisauxyeuxbleus', '2017-01-16', 3);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Avaux', 'Marc', '107 avenue du Maréchal Ferrant', 33400, 'Talence', '0619264855', 'avaux.marc@gmail.com', '1975-12-12', 'pretfeugo', '2017-01-15', 2);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Efuzzi', 'Armelle', '23 rue Jacques Chirac', 33290, 'Blanquefort', '0647582536', 'armelle.efuzzi@gmail.com', '1967-07-15', 'laguerrecestmal', '2017-01-15', 4);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Dore', 'Louis', '63 rue des Tournesols', 33610, 'Cestas', '0615591559', 'louis.dore@gmail.com', '1990-09-01', 'jmvoixdchiotte', '2017-01-17', 2);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Jabert', 'Philippe', '69 rue de Tintin', 33610, 'Cestas', '0656594399', 'philippe.jabert@gmail.com', '1992-12-22', 'kamoulox', '2017-01-17', 4);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Doeuf', 'John', '87 rue du Capitaine Haddock', 33000, 'Bordeaux', '0626372811', 'john.doeuf@gmail.com', '1993-08-20', 'vsvoulezunwhisky', '2017-01-18', 6);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Solar', 'Emssi', '63 rue des Paquerettes', 33400, 'Talence', '0629308577', 'emssi.solar@gmail.com', '1980-02-12', 'justeundoigt', '2017-01-18', 6);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Mimati', 'Rémi', '188 chemin de Poudlard', 33610, 'Cestas', '0676153864', 'remi.mimati@gmail.com', '1959-10-13', 'lolmdrptdr', '2017-01-19', 1);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Aire', 'Axelle', '340 autoroute des 2 Roues', 33500, 'Libourne', '0646573594', 'vroum33@gmail.com', '1976-10-13', 'frien', '2017-01-19', 1);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Vita', 'Sébastien', '4 Privet Drive', 33150, 'Cenon', '0972302906', 'sebvita@easylia.com', '1980-07-31', 'alohomora', '2017-01-05', 1);
 INSERT INTO `olibrary`.`customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES(NULL, 'Capot', 'Pauline', '89 avenue des Smiley', 33000, 'Bordeaux', '0788201383', 'pcapot@ynov.com', '1993-01-01', 'alohomora', '2017-01-05', 1);





 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'Richard', 'Jean', 'jrich', 'jaimelirepicsou', 1);
 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'De Briart', 'Alphonse', 'adebr', 'mafamilledabord', 2);
 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'Robert', 'Bernard', 'brobe', 'indiendanslame', 4);
 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'Leblanc', 'Juste', 'jlebl', 'unindiendanslaville', 3);
 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'Carpentier', 'Achille', 'acarp', 'barberoussedu33', 2);
 INSERT INTO `olibrary`.`employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES(NULL, 'Joliveur', 'Hans', 'hjoli', 'mrjeuxdemots', 4);




 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Robert Laffont');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Gallimard');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Geste');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Ada');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'John Day');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Editions du Rocher');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Artémis');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Milan');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Grandir');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Larousse');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Desclée de Brouwer');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Nil');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Librairie générale française');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Flammarion');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Pocket');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Points');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Seghers');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Arléa');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Hachette');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Fleurus');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Gautier Languereau');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Les belles lettres');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Actes suds editions');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Connaissances et savoirs');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Christian Bourgois');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Folio');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Le Livre de Poche');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Librio');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Casterman');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Lucky Comics');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Glénat');
 INSERT INTO `olibrary`.`publishers` (`publisher_id`, `publisher_name`) VALUES(NULL, 'Soleil');




 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Toutes ces choses qu''on ne s''est pas dites', NULL, 1, 1, '2008-08-15', 1, 'images/toutesceschosesquonnesestpasdites.jpg', 'Quelques jours avant son mariage, Julia reçoit un appel téléphonique du secrétaire particulier de son père : comme elle l''avait pressenti, Anthony Walsh, homme d''affaires brillant, mais père distant, ne pourra pas assister à la cérémonie. Mais pour une fois, Julia doit reconnaître qu''il a une excuse irréprochable : il est mort.
Le lendemain de l''enterrement, Julia découvre que son père lui réserve une autre surprise. Le voyage le plus extraordinaire de sa vie... et peut-être l''occasion de se dire, enfin, toutes les choses qu''ils ne se sont pas dites.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Vous revoir', NULL, 1, 1, '2001-11-12', 1, 'images/vousrevoir.jpg', 'Si la vie offrait à Arthur et à Lauren une seconde chance, sauraient-ils prendre tous les risques pour la saisir ? Quatre ans après leur première rencontre, le hasard réunit à nouveau Arthur et Lauren, les deux héros inoubliables de Et si c''était vrai...
Marc Levy retrouve les personnages de son premier roman et nous entraîne dans une nouvelle aventure, faite d''humour et d''imprévus.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Et si c''était vrai', NULL, 1, 1, '2000-07-05', 1, 'images/etsicetaitvrai.jpg', 'Lauren est dans le coma, c''est indéniable. Mais elle est aussi dans le placard d''Arthur, un peu comme un fantôme, cela est tout aussi indéniable... Arthur, en tout cas, est bien obligé de l''admettre : il la voit, l''entend, la comprend et finit même par l''aimer. Mais que peut-on espérer d''un fantôme que l''on est le seul à distinguer ? On ne tombe pas amoureux d''un mirage, on ne force pas son meilleur ami à dérober une ambulance pour kidnapper un corps dans le coma, on ne ment pas à la police pour sauver une ombre, et pourtant...
Marc Lévy signe ici un premier roman particulièrement grisant, qui s''amuse du lecteur et de ses certitudes, toujours avec légèreté : comme Arthur, on se laisse prendre au jeu de Lauren, et comme lui, on finit par se dire, entre deux rebondissements : Et si c''était vrai...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Mes amis Mes amours', NULL, 1, 1, '2006-07-03', 1, 'images/mesamismesamours.jpg', 'Quand deux pères trentenaires réinventent la vie en s''installant sous un même toit, ils s''imposent deux règles, pas de baby-sitter et pas de présence féminine dans la maison... Dans le village français, au cœur de Londres, une histoire d''amitié, des histoires d''amour, les destins croisés des personnages d''une comédie drôle et tendre.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Harry Potter', 'et l''enfant maudit', 2, 2, '2016-06-30', 1, 'images/lenfantmaudit.jpg', 'Être Harry Potter n’a jamais été facile et ne l’est pas davantage depuis qu’il est un employé surmené du Ministère de la Magie, marié et père de trois enfants. Tandis que Harry se débat avec un passé qui refuse de le laisser en paix, son plus jeune fils, Albus, doit lutter avec le poids d’un héritage familial dont il n’a jamais voulu. 
Le destin vient fusionner passé et présent. Père et fils se retrouvent face à une dure vérité : parfois, les ténèbres surviennent des endroits les plus inattendus.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le Berry', NULL, 3, 3, '2015-10-15', 2, 'images/leberry.jpg', 'Si le Berry est un nom familier à toutes les oreilles, bien peu savent le situer au milieu de la carte de France, et encore moins nombreux sont ceux qui peuvent en parler après avoir dit que le Printemps de Bourges doit s y dérouler... Et pourtant quel pays magnifique, héritier de trois mille ans d histoire, fier de ses ancêtres bituriges, les « rois du monde », riche de légendes vivaces tels Gargantua ou les fées et farfadets, creuset de littérature et d industrie. S y rendre, c est prendre le risque de tomber sous le charme des paysages aquatiques de la Brenne, c est mettre ses pas dans ceux des pèlerins et des bateliers, c est découvrir une contrée où danses et musiques animent les plus grandes villes comme les châteaux reculés, c est en fait prendre un grand bol d humanité. C est aussi partir à la rencontre de cette nature encore largement préservée et d hommes et de femmes ouverts, accueillants, que l on soit dans les collines viticoles du Sancerrois ou dans celles boisées du Boischaut, c est découvrir que le c ur de la France n est pas que géographique en Berry, il est aussi dans les valeurs et la dynamique des Berrichons. Bienvenue dans un voyage des plus inattendus.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Cupcakes, tartes et biscuits, oh oui !', NULL, 4, 4, '2013-12-10', 3, 'images/cupcakes.jpg', 'Faites un pas de géant vers la créativité. Les créateurs de « Bonjour, cupcake ! » sont de retour, avec de toutes nouvelles recettes géniales, simples et hilarantes pour le plaisir. Exemple de recettes : Trompe d''éléphant. Oreilles de cochon. Gaufrettes au chocolat. Têtes d''agrumes.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Pivoine', NULL, 5, 5, '1949-04-25', 1, 'images/pivoine.jpg', 'Pivoine, la petite esclave chinoise, est au centre de ce roman qui évoque avec un talent admirable la vie quotidienne d''une famille dans la Chine d''avant Mao. Pivoine possède toutes les qualités des grands livres de Pearl Buck et surtout cette chaleur humaine, cet amour de la vie, ce désir d''un monde meilleur, qui ont fait l''immense succès de la grande romancière américaine.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'La peau de la terre', NULL, 6, 6, '2010-09-01', 1, 'images/lapeaudelaterre.jpg', '" C''était l''heure où à Mogador les amants se réveillent. Ils portent encore leurs rêves pris au filet le long de leurs jambes, sous les paupières, dans les moindres creux de leurs corps. Ils dorment, d''un baiser à l''autre. La mer rugit au soleil et les réveille. C''était l''heure où à Mogador toutes les voix de la mer, du port, des rues, des places, des hammams, des chambres closes, des cimetières et du vent se nouent et content des histoires. " La rencontre d''une femme mystérieuse et d''un homme à qui elle lance un défi : elle fera l''amour avec lui lorsqu''il lui décrira les jardins de la ville. Seulement, il n''y a pas de jardins à Mogador. La Peau de la terre est le troisième volet d''une tétralogie dionysiaque placée sous le signe des quatre éléments, avec une unité de lieu, Mogador.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Contes', 'Editions critiques de Jean-Pierre Collinet', 2, 7, '1981-06-01', 1, 'images/contes.jpg', 'Peau d''Âne, La Belle au bois dormant, Le Petit Chaperon rouge ou encore Cendrillon : qui aurait cru que ces contes de notre enfance, lus et relus, mille fois racontés, cent fois adaptés, ont été composés par un contemporain de Racine, figure éminente des milieux littéraires du siècle de Louis XIV ? C''est la magie des contes de fées : universels et intemporels, ils finissent par n''appartenir à personne et ceux qui les racontent disparaissent finalement sous le poids de la tradition populaire.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''encyclopédie du chat', NULL, 7, 8, '2001-10-01', 4, 'images/lencyclopedieduchat.jpg', 'Toutes les informations utiles sur votre animal préféré. L''histoire et l''évolution du chat domestique, le tour du monde des races et leurs standards, décrypter le comportement du chat, comment choisir un chat ou un chaton ? la santé et les soins, l''élevage et les expositions félines.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'De la petite taupe qui voulait savoir qui lui avait fait sur la tête', NULL, 8, 9, '2005-10-01', 5, 'images/delapetitetaupe.jpg', 'Un grand classique de la littérature jeunesse ! Comme tous les soirs, la petite taupe sort de la terre pour voir si le soleil a disparu. C''est alors qu''on ose lui faire sur la tête ! C''est rond et marron, aussi long qu''une saucisse. Mais qui a bien pu faire ça ?');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'A chacun sa crotte', NULL, 9, 10, '2000-10-01', 5, 'images/achacunsacrotte.jpg', 'La bouse de l''éléphant est maousse costaud... tandis que les crottes de la souris sont riquiqui. Les poissons font caca. Tout comme les oiseaux. Et même les insectes. Des animaux différents font des cacas différents : de différentes formes, de différentes couleurs, de différentes odeurs et dans différents endroits. Au final, on mange tous donc... on fait tous caca ! Dans cet ouvrage, Taro Gomi amène les enfants de manière intelligente à faire le constat le plus simple mais pas forcément le plus évident pour eux : tout le monde fait caca.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Babar', 'En forêt', 10, 11, '1991-10-01', 5, 'images/babar.jpg', 'Dis-moi pourquoi, Babar, Dans la forêt est une encyclopédie inspirée des personnages de Babar. Attention, ce n''est pas une histoire de Babar, mais bien une véritable encyclopédie pour les enfants. Grâce à Babar, les enfants pourront apprendre comment les arbres tiennent debout, où on trouve des champignons, ou encore, s''il y a encore des loups dans la forêt. Toutes les questions que les enfants se posent sur la forêt sont rassemblées dans cette petite encyclopédie claire et instructive. Babar et tout le petit monde de ses amis accompagnent le lecteur pour l''aider à bien comprendre. Dans la même collection : A la maison Chez le docteur La ferme et le jardin La conquête de l''espace Le ciel et les étoiles');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Un aute regard sur l''enfant', 'De la naissance à six ans', 11, 12, '2010-02-01', 6, 'images/unautreregarde.jpg', '" L''adulte est véritablement aveugle à l''enfant ", écrivait Maria Montessori dans les années 1930. Bien avant Françoise Dolto, cette pionnière saluée par les grands esprits de son temps prend le parti de l''enfant et défend une représentation révolutionnaire de son développement. Qu''est-ce qu''un enfant ? Comment se développe-t-il dès la naissance ? Comment se construit en lui la confiance et l''estime de soi ? Comment lui apprendre à être, à penser, à agir, à " faire par lui-même ", pour reprendre sa formule érigée en slogan ? À toutes ces questions, Maria Montessori répond par une démarche propre : apprendre à observer l''enfant dès sa naissance dans les moindres détails, pour être en lien avec lui, pour cultiver cet art de la rencontre. C''est la clé de l''épanouissement de cet être en devenir. Plus que jamais, cette pédagogie reste à découvrir et à interpréter. C''est ce que Patricia Spinelli éclaire ici de manière tout à fait inédite, sous la forme d''un dialogue avec Karen Benchetrit. Une initiation très concrète et accessible à tous les parents et les éducateurs.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Intégration motrice et développement psychique', 'Une théorie de la psychomotricité', 11, 13, '2008-12-19', 6, 'images/integrationmotrice.jpg', 'Bien avant le langage, c''est avec ses tensions et ses détentes, ses pleurs et ses sourires que le bébé manifeste sa vie affective à son entourage. E organisation tonique et motrice du nouveau-né apparaît donc au premier plan du travail de recherche de Suzanne Robert-Ouvray, qui propose ici une véritable théorie interdisciplinaire de la psychomotricité. Les premières images et les premiers fantasmes s''ancrent dans du corporel. La thérapie psychomotrice se présente alors comme un travail d''articulation entre le corps et la psyché. Suzanne Robert-Ouvray répond ainsi à de nombreuses questions sur les liens psychomoteurs et ouvre également des perspectives nouvelles au niveau psychopathologique.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''autorité expliquée aux parents', NULL, 12, 14, '2008-01-019', 6, 'images/lautoriteexpliqueeauxparents.jpg', 'Les parents aujourd''hui ont peur de l''autorité. Parce qu''ils s''imaginent qu''elle ne pourrait être que ce qu''elle fut souvent : un instrument destiné à soumettre l''enfant au pouvoir des adultes. Et susceptible de ce fait de porter atteinte à sa personnalité, à sa liberté, à sa créativité. Ils se refusent donc à la mettre en œuvre et bien des malheurs s''ensuivent, aussi bien dans les familles que dans la société.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Pourquoi l''amour ne suffit pas', 'Aider l''enfant à se construire', 12, 15, '2006-01-19', 6, 'images/pourquoilamournesuffitpas.jpg', 'L''enfant n''est pas "naturellement " apte à vivre avec ses semblables et il ne découvre pas tout seul le mode d''emploi de la vie humaine. Il se construit et a pour ce faire besoin des adultes; l''éducation est le support essentiel de sa construction. Aimer un enfant ne peut donc, comme on le croit trop souvent aujourd''hui, se limiter à éprouver pour lui de l''affection. Claude Halmos, à la lumière de son expérience de psychanalyste, démontre que la vision d''un amour parental réduit aux sentiments a des conséquences graves pour les enfants, pour leurs parents, mais aussi pour toute la société. Elle pose, dans le langage clair qu''on lui connaît, les bases d''une véritable réflexion sur l''amour parental. Et donne ainsi à tous les parents les moyens de comprendre ce qu''aimer un enfant veut dire.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Premier journal parisien', NULL, 13, 16, '1998-12-31', 1, 'images/premierjournalparisien.jpg', 'Hostile à Hitler, le capitaine Jünger passe trois années décisives à l''état-major parisien de la Wehrmacht. Il y adopte sa position préférée en politique, celle de l''observateur proche d''un centre du pouvoir. Il assiste aux luttes d''influence entre l''armée et le Parti et, sans renoncer à sa méfiance envers les attentats, voit naître dans son cercle d''amis le complot qui manquera de peu l''assassinat de Hitler en juillet 1944. Dans un environnement tragique, il fréquente les intellectuels parisiens et partage les derniers divertissements des privilégiés du moment. Une brève mission dans le Caucase où les Allemands battent précipitamment en retraite lui permet de mesurer l''horreur des combats et des exterminations à l''Est. Au coeur de la tourmente, il trouve appui dans sa lecture assidue de la Bible et son empathie avec la nature, qui l''empêchent de désespérer de l''humanité.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Jardins et routes', NULL, 13, 16, '1982-10-01', 1, 'images/jardinsetroutes.jpg', 'Jardins et Routes succède à Feu et Sang. Le héros de la Grande Guerre achève de rédiger Sur les falaises de marbre, parabole sur le triomphe de la barbarie, puis il part pour la "drôle de guerre", où les deux adversaires se figent dans une étonnante immobilité. Lui-même ne s''illustrera qu''en sauvant un blessé. Dans sa hutte de roseaux, de l''autre côté du Rhin, il observe les lignes françaises par un hiver glacial et s''immerge dans les grands rythmes de la nature, en attendant le déclenchement de l''Apocalypse. Ce sera l''offensive foudroyante de juin 1940 ; cheminant à marches forcées derrière les blindés victorieux, il n''en verra rien, sinon les images sinistres qui jalonnent la déroute française. Secourable aux prisonniers encore sous le choc, il s''interroge sur l''esprit du paysage et sur ceux qui lui ont donné forme, ces anciens vainqueurs qu''a balayés "l''étrange défaite".');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Apologie de Socrate', 'Criton', 14, 17, '1999-01-04', 6, 'images/apologiedesocrate.jpg', 'Platon a fait d’un évènement contingent, à savoir le procès puis la mort de Socrate, un mythe fondateur de la philosophie. Ce mythe modèlera fortement la figure du Sage dans la tradition philosophique occidentale. Car Socrate, à l’approche de la mort, est en effet plus philosophe que jamais : seule la pratique de la philosophie rend la vie digne d’être vécue, et en corollaire, permet d’accepter la mort.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les confessions', 'Livres I à IV', 15, 18, '2003-12-01', 1, 'images/lesconfessions.jpg', 'À cinquante ans, pendant la période la plus tourmentée de sa vie, Rousseau entreprend ce livre " sans exemple ", et qui, croyait-il, " n''aurait jamais d''imitateur ". Montrer à ses semblables un homme dans toute sa vérité. Et cet homme, ce serait lui. Grâce à ses Confessions, à leur charme et à leur vitalité inouïs, Rousseau devient Jean-Jacques pour son lecteur. Ses années d''apprentissage sont celles d''un quasi-orphelin malmené, d''un vagabond malheureux, pas toujours honnête, du protégé de Madame de Warens, une aventurière un peu espionne et dévergondée qui lui offre quelques années délicieuses. Le récit de cette initiation intellectuelle et morale donne le vertige. Personne, avant Jean-Jacques, ne s''est confié avec autant de franchise, d''impudeur, de délectation raffinée. Au point de susciter encore, à plus de deux siècles de distance, admiration effarée et intérêt passionné. ');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''ingénu', NULL, 10, 19, '2007-05-01', 1, 'images/lingenu.jpg', 'Un Indien d’Amérique débarque en Bretagne. À travers le regard qu’il porte sur la société, voilà que nous aussi nous commençons à la voir d’un œil neuf. En 1767, L’Ingénu de Voltaire met pour la première fois en œuvre ce procédé satirique qui fit fortune : le bon sauvage plongé dans un monde dit civilisé fait éclater l’artifice des apparences et des préjugés. Et nous prenons peu à peu conscience, à la lecture de ce conte faussement badin, de la cruauté cachée des hommes et de la fragilité des conventions.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'La traque', NULL, 16, 20, '1995-06-16', 1, 'images/latraque.jpg', 'Ancien médecin du Reich, Gregor Grigori – alias l''Ange de la mort d''Auschwitz – s''est réfugié au Paraguay. Alors que tout le monde le croit mort, Asher, un espion juif, retrouve sa trace. Ce " faucon " israélien, animé par un brutal instinct de vengeance, se lance dans une longue traque au cœur de la forêt amazonienne, où l''étrange docteur a établi sa demeure – ainsi qu''une inquiétante clinique...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les yeux d''Elsa', NULL, 17, 21, '1998-12-31', 1, 'images/lesyeuxdelsa.jpg', 'À la gloire de la femme aimée, Aragon, le dernier poète courtois, a composé ses plus merveilleux poèmes." Ma place de l''étoile, à moi, est dans mon cœur, et si vous voulez connaître le nom de l''étoile, mes poèmes suffisamment le livrent. " Pétrarque a chanté Laure, Ronsard Hélène, Lamartine Elvire, c''est à Elsa qu''Aragon donne ses poèmes qui sont au nombre des plus beaux chants d''amour qu''un poète ait écrits.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'La jument verte', NULL, 2, 22, '1933-01-23', 1, 'images/lajumentverte.jpg', 'Au village de Claquebue naquit un jour une jument verte, non pas de ce vert pisseux qui accompagne la décrépitude chez les carnes de poil blanc, mais d''un joli vert de jade. En voyant apparaître la bête, Jules Haudouin n''en croyait pas ses yeux, ni les yeux de sa femme. - Ce n''est pas possible, disait-il, j''aurais trop de chance.Cultivateur et maquignon, Haudouin n''avait jamais été récompensé d''être rusé, menteur et grippe-sou...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le capitaine Pamphile', NULL, 2, 23, '2003-12-11', 1, 'images/lecapitainephampile.jpg', 'Deux histoires parallèles: celle de l''auteur et de ses amis artistes (vie de bohème où les animaux occupent une part importante en tant que membres à part entière de la collectivité) et celle du Capitaine Pamphile (où tout est lié à l''argent, au profit, sans aucun sens moral et où les animaux occupent une place importante en tant que source de profit) Extrait : Notre chasseur se précipita sur le malheureux chien avec les imprécations les plus terribles, le saisit à la gorge et la lui serra avec tant de force, qu''il le força d''ouvrir la gueule, quelque envie qu''il eût de n''en rien faire. Le chasseur y plongea frénétiquement la main jusqu''au gosier, et en tira trois plumes de la queue de l''alouette. Quant au corps, il n''y fallait plus penser. Le propriétaire de l''alouette chercha dans sa poche un couteau pour éventrer Love, et rentrer par ce moyen en possession de son gibier ; mais, malheureusement pour lui, et heureusement pour Love, il avait prêté le sien, la veille au soir, à sa femme pour tailler d''avance les brochettes qui devaient enfiler ses perdrix, et sa femme avait oublié de le lui rendre. Forcé, en conséquence, de recourir à des moyens de punition moins violents, il donna à Love un coup de pied à enfoncer une porte cochère, mit soigneusement dans sa carnassière les trois plumes qu''il avait sauvées...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le savoir-vivre chez les truands', NULL, 18, 24, '2006-05-11', 1, 'images/lesavoirvivre.jpg', '" A l''instar de tout groupe humain organisé, le Mitan se trouve régi par un code de convenances, de bons usages, de coutumes qu''il importe de connaître et de respecter. La gaffe, l''impair, le mot blessant, la médisance, l''indélicatesse, sanctionnés dans le monde des caves par un refroidissement des relations, le sont souvent, dans le monde des truands, par le refroidissement à zéro du gaffeur, du malotru, de l''injurieux, du médisant, de l''indélicat, et le savoir-vivre chez les truands pourrait plus justement se nommer le savoir-survivre. " C''est ainsi qu''Albert Simonin, l''auteur de Touchez pas au grisbi et autres livres culte, le scénariste des inoubliables Tontons flingueurs, nous initie aux " bonnes manières " du Milieu.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Lettre ouverte aux voyous', NULL, 18, 24, '2006-05-11', 1, 'images/lettreouverteauxvoyous.jpg', 'L''auteur de Touchez pas au grisbi, Le Cave se rebiffe et Grisbi or not Grisbi (devenu à l''écran Les Tontons flingueurs) évoque dans cette truculente fantaisie littéraire l''univers des truands, qu''il a toujours dépeint talentueusement. Simonin use à merveille de formules dont Michel Audiard partageait le savoir-dire, prodiguant conseils et recommandations dans un style aussi percutant qu''efficace, employant la langue verte avec une telle aisance que Léo Malet le surnomma " le Chateaubriand de l''argot ".');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Nekrassov', NULL, 2, 25, '1956-01-05', 1, 'images/nekrassov.jpg', 'Encore un mot, Monsieur, un seul, et je m''en vais. Quoi ! vous, Français, fils et petit-fils de paysans français, et moi, l''apatride, l''hôte provisoire de la France ; vous l''honnêteté même, et moi le crime, par-dessus tous les vices et toutes les vertus, nous nous donnons la main, nous condamnons ensemble les juifs, les communistes et les idées subversives ? Il faut que notre accord ait une signification profonde. Cette signification, je la connais, Monsieur, et je vais vous la dire : nous respectons tous deux la propriété privée.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le diable et le bon dieu', NULL, 2, 25, '1995-04-01', 1, 'images/lediableetlebondieu.jpg', 'Cette pièce peut passer pour un complément, une suite aux Mains sales, bien que l''action se situe quatre cents ans auparavant. J''essaie de montrer un personnage aussi étranger aux masses de son époque, qu''Hugo, le jeune bourgeois, héros des Mains sales, l''était, et aussi déchiré. Cette fois, c''est un peu plus gros. Gotz, mon héros, incarné par Pierre Brasseur, est déchiré, parce que, bâtard de noble et de paysan, il est également repoussé des deux côtés. Le problème est de savoir comment il lâchera l''anarchisme de droite pour aller prendre part à la guerre des paysans... J''ai voulu montrer que mon héros, Gotz, qui est un genre de franc-tireur et d''anarchiste du mal, ne détruit rien quand il croit beaucoup détruire. Il détruit des vies humaines, mais ni la société, ni les assises sociales, et tout ce qu''il fait finit par profiter au prince, ce qui l''agace profondément. Quand, dans la deuxième partie, il essaie de faire un bien absolument pur, cela ne signifie rien non plus. Il donne des terres à des paysans, mais ces terres sont reprises à la suite d''une guerre générale, qui d''ailleurs éclate à propos de ce don. Ainsi, en voulant faire l''absolu dans le bien ou dans le mal, il n''arrive qu''à détruire des vies humaines... La pièce traite entièrement des rapports de l''homme à Dieu, ou, si l''on veut, des rapports de l''homme à l''absolu...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Simplissime', 'Le livre de cuisine light le + facile du monde', 19, 26, '2016-04-01', 3, 'images/simplissime.jpg', '200 recettes saines pour rester en forme');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Encyclopédie des animaux', NULL, 2, 26, '2013-09-26', 4, 'images/encyclopediedesanimaux.jpg', 'Tout ce que vous avez voulu savoir sur le monde fascinant et merveilleux des animaux. Plus de 2000 photographies superbes et étonnantes qui révèlent les secrets de la vie sauvage. Près de 600 fiches synthétiques et illustrées détaillent des espèces particulières et renseignent sur le milieu, la taille, le comportement mais aussi sur les menaces qui pèsent sur chacune d''elles. Une mine d''informations inépuisable pour tous les passionnés d''animaux, articulée autour de 6 chapitres : Mammifères, Oiseaux, Reptiles, Amphibiens, Poissons et Invertébrés.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Animaux de la savane', NULL, 20, 27, '2014-09-11', 4, 'images/animauxdelasavane.jpg', 'Nouvelle édition avec de nouveaux dessins et une nouvelle couverture.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'La très grande princesse', NULL, 8, 28, '2014-03-19', 5, 'images/latresgrandeprincesse.jpg', 'Il était une fois un pays. Dans ce pays vivaient un roi et une reine sans enfants... jusqu''au jour où le roi trouva, parmi les fleurs qu''il cultivait dans son jardin, une toute petite princesse. Mais voilà, la toute petite princesse était ensorcelée, elle grandit jour après jour jusqu''à devenir géante, et ce sans jamais s''arrêter ! Tous les savants du royaume cherchèrent à la libérer de son sort, mais aucun n''y parvint. Le roi découvrit un jour une petite graine coincée dans le nombril de la princesse, l''attrapa et sauva ainsi sa fille de la malédiction qui la frappait. Plantée dans le jardin, la graine allait donner un champ de magnifiques tournesols géants.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le tout petit roi', NULL, 8, 28, '2011-09-14', 5, 'images/letoutpetitroi.jpg', 'Il était une fois un tout petit roi qui vivait seul dans son château. Un jour, il épousa une très grande princesse...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Maman est là quoi qu''il arrive', NULL, 21, 29, '2014-07-02', 5, 'images/mamanestla.jpg', 'Dans la douce et profonde nuit, le sommeil a envahi les petits. Maman est là, qui veille sans un bruit. Une petite histoire du soir par Debi Gliori, l’auteur de Je t’aimerai toujours quoiqu’il arrive.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Médecine, santé et sciences humaines', NULL, 22, 30, '2014-07-02', 6, 'images/medecinesante.jpg', 'Cet ouvrage pluridisciplinaire est destiné à accompagner l''enseignement de sciences humaines et sociales au sein de la formation médicale et des formations en santé. Il s''adresse aux étudiants et à tous ceux qui s''engagent dans les métiers du soin ou qui s''intéressent aux questions épistémologiques, éthiques et sociales impliquées par la médecine contemporaine.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''homme de la douleur', NULL, 24, 31, '2016-12-02', 6, 'images/lhommedeladouleur.jpg', 'Rencontrer ''l''homme de la douleur'' soulève de nombreuses questions : qu''est-ce qui différencie la souffrance de la douleur ? Comment évaluer l''expérience douloureuse alors que celle-ci se montre à autrui plus facilement qu''elle ne se raconte ? Comment se fait-il que la douleur puisse saisir l''homme jusqu''à l''entraîner dans une expérience proche de la mort ? A contrario, comment celle-ci peut-elle s''oublier d''un instant à l''autre à la faveur d''un détournement de l''attention ? Bien d''autres questions sont abordées et illustrées ici par deux cliniciens dialoguant au chevet des malades. Chemin faisant, le plus jeune découvre et apprend de son aîné que le savoir et le savoir-faire ne suffisent pas pour approcher ''l''homme de la douleur''. Au cœur de l''humanité, chacun – soigné et soignant – recherche aussi chez l''autre ce qui lui permet d''être reconnu, accueilli et écouté afin de trouver ensemble les traitements les mieux adaptés et par conséquent les plus efficaces : un chemin audacieux au cours duquel celui qui se plaignait de douleur pourra enfin s''apaiser.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le pays qu''habitait Albert Einstein', NULL, 23, 32, '2016-10-19', 6, 'images/lepaysquhabitaitalberteinstein.jpg', 'Albert Einstein (1879-1955), c''est une façon d''être, de penser et de créer sans pareil. Il a mené avec une ardeur et une obstination tranquilles son enquête sur l''Univers, et permis de fonder une véritable cosmologie scientifique. Dans cet ouvrage inclassable - ni livre de vulgarisation ni biographie -, Étienne Klein nous invite à faire quelques pas en compagnie de ce géant de la physique, à la trajectoire atypique, cet humaniste conscient des dangers et des bouleversements qui menacent l''Europe à la veille de la Seconde Guerre mondiale. Ouvrage personnel qui juxtapose, à la manière d''un portrait cubiste, différents points de vue, entrecroise fragments de vie et découvertes scientifiques, et tente de mettre au jour la façon si singulière dont Einstein posait les problèmes.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Petit voyage dans le monde des quanta', NULL, 14, 32, '2016-09-07', 6, 'images/petitvoyage.jpg', 'En 1905 apparaissait une nouvelle physique, qui allait révolutionner la façon de décrire la matière et ses interactions : la physique quantique. Avec elle s''ouvraient les portes d''un monde qui n''obéit pas aux lois de la physique classique : l''infiniment petit, avec ses atomes et ses particules. Elle obligea ses pères fondateurs, Einstein, Bohr, Heisenberg et Schrödinger notamment, à rediscuter le déterminihrödinger notamment, à rediscuter le déterminisme et les critères de réalité de la physique classique, ainsi que la traditionnelle séparation entre observateur et objet observé.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le Seigneur des Anneaux', 'La Communauté de l''Anneau', 15, 33, '2014-10-02', 1, 'images/lacommunautedelanneau.jpg', 'Dans les vertes prairies de la Comté, les Hobbits, ou Semi-hommes, vivaient en paix... Jusqu''au jour fatal où l''un d''entre eux, au cours de ses voyages, entra en possession de l''Anneau Unique aux immenses pouvoirs. Pour le reconquérir, Sauron, le seigneur ténébreux, va déchaîner toutes les forces du Mal... Frodon, le Porteur de l''Anneau, Gandalf, le magicien, et leurs intrépides compagnons réussiront-t-ils à écarter la menace qui pèse sur la Terre du Milieu ?');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le Seigneur des Anneaux', 'Les Deux Tours', 15, 33, '2015-10-22', 1, 'images/lesdeuxtours.jpg', 'Frodon le Hobbit et ses Compagnons se sont engagés, au Grand Conseil d''Elrond, à détruire l''Anneau de Puissance dont Sauron de Mordor cherche à s''emparer pour asservir tous les peuples de la terre habitée : Elfes et Nains, Hommes et Hobbits. Dès les premières étapes de leur audacieuse entreprise, les Compagnons de Frodon vont affronter les forces du Seigneur des Ténèbres et bientôt ils devront se disperser pour survivre. Parviendront-ils à échapper aux Cavaliers de Rohan ? Trouveront-ils asile auprès de Ceux des Arbres, grâce à l''entremise de Sylvebarbe ? Qu''adviendra-t-il de Gandalf le Gris métamorphosé, au-delà de la mort, en Cavalier Blanc ? La trilogie de Tolkien, l''une des créations les plus riches et les plus neuves de notre temps, est aujourd''hui portée à l''écran par Peter Jackson.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Le Seigneur des Anneaux', 'Le Retour du Roi', 15, 33, '2016-10-13', 1, 'images/leretourduroi.jpg', 'Dispersée dans les terres de l''Ouest, la Communauté de l''Anneau affronte les périls de la guerre, tandis que Frodon, accompagné du fidèle Samsagace, poursuit une mission presque désespérée : détruire l''Anneau Unique en le jetant dans les crevasses d''Oradruir, la Montagne du destin. Mais aux frontières du royaume de Mordor, une mystérieuse créature les épie... pour les perdre ou les sauver ?John Ronald Reuel Tolkien est né en 1892 à Bloemfontein, en Afrique du Sud. Il rentre en Angleterre après la mort de son père, en 1896. En 1919, il est diplômé de l''Université d''Oxford et travaille alors au dictionnaire du même nom. Sa carrière universitaire commence par un poste de maître assistant à Leeds (comté de York) puis il revient à Oxford où il occupe une chaire d''anglo-saxon (vieil anglais), de 1925 à 1945, et de langue et de littérature anglaises, de 1945 à 1959.Il meurt en 1973.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Zadig ou la destinée', NULL, 16, 19, '2015-06-15', 1, 'images/zadigouladestinee.jpg', ' ''Qu''il est dangereux de se mettre à la fenêtre et qu''il est difficile d''être heureux dans cette vie ! " Ainsi soupire Zadig, jeune Babylonien, devenu favori du roi et promis à une enviable destinée. Pour être tombé amoureux de la reine Astarté, le voilà obligé de fuir, rendu à la condition d''esclave, victime des brigands, des fanatiques religieux, en butte aux pires catastrophes... Mais à travers ce cheminement capricieux, la Providence veille et l''homme est à sa place. C''est aussi ce que découvre cet habitant de Sirius qui, à l''aide d''un rayon de soleil, parcourt la Voie lactée. Quelle surprise en effet pour Micromégas de voir que l''homme, si petit et si misérable qu''il soit, tient son rôle dans l''univers grâce à son esprit... Désinvoltes et primesautiers, deux contes qui charment et enchantent... ');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Misérables', NULL, 17, 34, '2016-01-28', 1, 'images/lesmiserables.jpg', 'Tant qu''il existera, par le fait des lois et des moeurs, une damnation sociale créant artificiellement, en pleine civilisation, des enfers, et compliquant d''une fatalité humaine la destinée qui est divine; tant que les trois problèmes du siècle, la dégradation de l''homme par le prolétariat, la déchéance de la femme par la faim, l''atrophie de l''enfant par la nuit, ne seront pas résolus ; tant que, dans de certaines régions, l''asphyxie sociale sera possible ; en d''autres termes, et à un point de vue plus étendu encore, tant qu''il y aura sur la terre ignorance et misère, des livres de la nature de celui-ci pourront ne pas être inutiles. Hauteville-House, 1er janvier 1862. Victor Hugo');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''Ecume des Jours', NULL, 17, 35, '2014-06-01', 1, 'images/lecumedesjours.jpg', 'C''est un conte de l''époque du jazz et de la science-fiction, à la fois comique et poignant, heureux et tragique, merveilleux et fantastique, féerique et déchirant. Dans cette oeuvre d''une modernité insolente, l''une des plus célèbres du Xxe siècle et livre-culte depuis plus de trente ans, Duke Ellington croise le dessin animé, Sartre devient une marionnette burlesque, le cauchemar va jusqu''au bout du désespoir. Mais seules deux choses demeurent éternelles et triomphantes : le bonheur ineffable de l''amour absolu et la musique des noirs américains...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'J''irai cracher sur vos tombes', NULL, 17, 35, '1997-03-01', 1, 'images/jiraicrachersurvostombes.jpg', 'Si vous le lisez avec l''espoir de trouver dans J''irai cracher sur vos tombes quelque chose capable de mettre vos sens en feu, vous allez drôlement être déçu. Si vous le lisez pour y retrouver la petite musique de Vian, vous l''y trouverez. Il n''y a pas beaucoup d''écrits de Vian dont il ne suffise de lire trois lignes anonymes pour dire tout de suite : '' Tiens, c''est du Vian ! '' Ils ne sont pas nombreux, les écrivains dont on puisse en dire autant. Ce sont généralement ces écrivains-là qui ont les lecteurs les plus fidèles, les plus passionnés, parce que, en les lisant, on les entend parler. Lire Vian, lire Léautaud, lire la correspondance de Flaubert, c''est vraiment être avec eux. Ils sont tout entiers dans ce qu''ils écrivent.Ca ne se pardonne pas, ça. Vian a été condamné. Flaubert a été condamné... Delfeil de Ton');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Morts ont tous la même peau', NULL, 17, 35, '1997-09-01', 1, 'images/lesmortsonttouslamemepeau.jpg', 'Videur dans une boîte de nuit, Dan ne vit que pour Sheila, sa femme, et l''enfant qu''il a eu avec elle. Un enfant que la société acceptera parce que sa peau est blanche. Dan, lui, est noir, d''origine, sinon de peau... Toute son existence repose sur ce secret. L''irruption de Richard, son frère, qui menace de tout révéler, en même temps que sa subite attirance pour une prostituée noire, vont bouleverser la vie de Dan. Lui qui, non sans remords, a tant voulu être un Blanc, ne serait-il au fond de lui-même qu''un ''nègre'' ? Boris Vian - alias Vernon Sullivan - nous donne ici, à la manière de Chandler ou Hadley Chase, bien plus qu''une dénonciation du racisme. Ces pages qui firent scandale, où la violence et l''érotisme se donnent libre cours, nous conduisent au plus profond de la folie d''un être qui ne se reconnaît plus, que la pression sociale a irrémédiablement dissocié de lui-même. Une sorte d''explosion intérieure qui le poussera au meurtre...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'L''Etranger', NULL, 16, 36, '1971-12-01', 1, 'images/letranger.jpg', 'Quand la sonnerie a encore retenti, que la porte du box s''est ouverte, c''est le silence de la salle qui est monté vers moi, le silence, et cette singulière sensation que j''ai eue lorsque j''ai constaté que le jeune journaliste avait détourné les yeux. Je n''ai pas regardé du côté de Marie. Je n''en ai pas eu le temps parce que le président m''a dit dans une forme bizarre que j''aurais la tête tranchée sur une place publique au nom du peuple français...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Paroles', NULL, 16, 37, '1976-12-01', 7, 'images/paroles.jpg', 'Rappelle-toi Barbara. Il pleuvait sans cesse sur Brest ce jour-là. Et tu marchais souriante. Epanouie ravie ruisselante. Sous la pluie. Rappelle-toi Barbara... Oh Barbara. Quelle connerie la guerre. Qu''es-tu devenue maintenant. Sous cette pluie de fer. De feu d''acier de sang. Et celui qui te serrait dans ses bras. Amoureusement. Est-il mort disparu ou bien encore vivant...');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Fleurs du Mal', NULL, 16, 38, '1976-12-01', 7, 'images/lesfleursdumal.jpg', '''Dans ce livre atroce, j''ai mis tout mon cœur, toute ma tendresse, toute ma religion, toute ma haine. '' Étranger dans un monde qui le refuse, maudit et damné, Baudelaire n''a pas d''autre choix que d’explorer l''enfer et le mal. Puisque la vie n''est qu''extase et horreur, le poète la transfigure dans une contrée imaginaire où le désespoir et la beauté se confondent. Il s''évade dans les paradis artificiels du haschisch, de l''opium et du vin, ceux de la luxure et du vice.Les Fleurs du mal sont le journal intime, le cri de terreur et de jouissance du poète. '' Fleurs maladives '' qui annoncent toute la littérature moderne et dont le parfum et les poisons ne cessent de troubler.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Aventures de Tintin', 'Tintin au pays des Soviets', 18, 39, '1930-05-11', 8, 'images/aupaysdessoviets.jpg', 'Créée en 1929, cette première aventure de Tintin, mise en couleur, surprend par sa lisibilité nouvelle et moderne. Doté déjà d’une énergie enthousiaste, Tintin prend sa personnalité physique quand il bondit dans une puissante voiture décapotable. Soucieux d''exprimer la vitesse, Hergé relève la mèche de son front … pour toujours. Le jeune auteur avait 21 ans et n''avait jamais été initié au dessin. Il ne se doutait pas qu''il venait de créer un héros qui deviendrait universel et mythique au cours de ses vingt-quatre aventures…');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Aventures de Tintin', 'On a marché sur la Lune', 18, 39, '1993-05-04', 8, 'images/onamarchesurlalune.jpg', 'Suite d''''Objectif Lune'', nous retrouvons dans cet album nos héros à bord de la première fusée lunaire. Mais le vol est loin d''être de tout repos : outre la présence involontaire des Dupondt (ce qui limite sérieusement les réserves d''oxygène), des saboteurs sont également à bord. La fusée sera-t-elle de retour sur Terre à temps ?');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Les Aventures de Tintin', 'Tintin au Congo', 18, 39, '1993-05-04', 8, 'tintinaucongo.jpg', 'A peine rentré d''URSS, Tintin repart pour le Congo. Sorcier du royaume des Babaoro''m, en lutte contre une bande de gangsters à la solde d''Al Capone ... Le plus célèbre de nos reporters sortira bien sûr triomphant de toutes ces aventures. Pour notre plus grand plaisir à tous.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Lucky Luke', 'Chasseur de primes', 19, 40, '1958-05-15', 8, 'images/chasseurdeprimes.jpg', 'Ce personnage immortel parcourt depuis 1947 l''histoire de l''ouest américain. Il y a rencontré des personnages célèbres (Jesse James, Calamity Jane, Billy the Kid, Sarah Bernhardt...).');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Titeuf', 'Dieu, le sexe et les bretelles', 20, 41, '2010-08-25', 8, 'images/dieulesexeetlesbretelles.jpg', ''' Si Dieu est parmi nous comme la prof elle a dit, c''est en tout cas pas Hugo, il est trop gros, ni Manu, ni François parce qu''ils ont des binocles... Dimi c’est pas possible, il parle même pas bien français... Il reste que Ludo mais ça veut dire que Dieu sait pas faire pipi debout.'' Titeuf n’est pas le caïd de la cour de récré, mais il est le «sale gosse» préféré des lecteurs et, il y a 17 ans, comme un OVNI dans le paysage éditorial de l''époque, sortait le premier album de Titeuf. 11 albums plus tard, Zep a entraîné des millions de lecteurs du monde entier et créé un phénomène unique. Dieu, le sexe et les bretelles était paru en noir et blanc : Zep a décidé d''y revenir, pour lui donner un net coup de jeune, et confie pour cela la colorisation à Nob.');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Titeuf', 'Le derrière des choses', 20, 41, '1996-06-12', 8, 'images/lederrieredeschoses.jpg', 'Mes parents m''envoient chez le psychologue à cause de mes notes comme si j''étais malade-des-maths. Encore que j''ai du bol, parce que Hugo il est malade-du-français et c''est son père qui le soigne à coups de pied au cul. Ne tournons pas autour du pot, cet album de Titeuf marque une étape décisive dans l''évolution de notre ''grand petit homme''. Inutile de le cacher, cette fois-ci Titeuf devra apprendre à découvrir les miracles de l''anatomie féminine et ses secrets... Résister à la passion déchaînée d''une plus petite que lui, regarder ses parents se débattre avec de drôles de problèmes qui ont pour nom course à l''emploi, stage de réinsertion, bref les aléas de la vie moderne. ');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Titeuf', 'Lâchez-moi le slip !', 20, 41, '2000-08-23', 8, 'images/lachezmoileslip.jpg', 'La mèche en prise directe sur le monde, Titeuf est à la fois héros et témoin de sa génération. Aussi curieux que turbulent, il traîne son cartable dans les cours d''écoles avec une foule de questions sur les réalités de la vie. Mais Titeuf n''oublie jamais que les copains, c''est quand même ce qu''il y a de plus important. Gaffeur et toujours imbattable pour mettre ses parents en rogne, il est le champion de la catégorie turbulent.Avec Titeuf, la vie c''est pô triste ! Chaque gag de Titeuf pose un regard complice sur les problèmes de la vie d''un grand petit enfant qui saute à pieds joints dans le monde avec une énergie débordante... Un feu d''artifices de couleurs, de dialogues et d''imagination qui a propulsé cette série au rang des vedettes de la BD. Le huitième album très attendu d''un petit héros universel ! ');
 INSERT INTO `olibrary`.`books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES(NULL, 'Lanfeust de Troy', 'L''Ivoire du Magohamoth', 21, 42, '2016-06-15', 8, 'images/lanfeustdetroyvol1.jpg', 'Troy est un monde fascinant, où la magie intervient dans le quotidien de tous. Chacun en effet possède un pouvoir, petit ou grand, plus ou moins utile. L''un a le don de figer l''eau en glace, l''autre, le pouvoir d''émettre des pets colorés... Lanfeust, lui, sait fondre le métal d''un seul regard. Dans son village, il est donc tout naturellement devenu apprenti chez le forgeron. Mais le contact d''une épée venue des lointaines Baronnies révèle en lui une puissance exceptionnelle ; il ne dispose plus d''un don unique mais d''un pouvoir absolu et illimité. Accompagné du vieux sage Nicolède et de ses deux filles aux caractères si dissemblables, Lanfeust est emporté dans un tourbillon d''aventures au cours desquelles il croise les plus incongrues, les plus sur surprenantes et les plus dangereuses des créatures.');




 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Que choisir', 'Alimentation la face cachée des recettes traditionnelles', '2017-01-05', '2017-05-05', 9, 'images/quechoisir.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Assistantes Maternelles', 'Coucou le jeu !', '2016-11-09', '2017-03-05', 10, 'images/assmat.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Assistantes Maternelles', 'La sieste : un temps précieux', '2016-08-17', '2016-12-17', 10, 'images/assmat.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Assistantes Maternelles', 'Psychomotricité : la sécurité de base', '2016-09-15', '2017-01-15', 10, 'images/assmat.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Rustica', 'Je réussis mes premiers semis', '2017-01-10', '2017-05-10', 11, 'images/rustica.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Rustica', 'Numéro spécial lune', '2017-01-20', '2017-05-20', 11, 'images/rustica.jpg');
 INSERT INTO `olibrary`.`periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES(NULL, 'Gala', 'Spécial luxe', '2016-10-19', '2017-02-19', 12, 'images/gala.jpg');



 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Littérature');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Voyages');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Cuisine');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Animaux');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Enfance');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Sciences humaines et sociales');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Poésie');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Bande Dessinée');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Pratique');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Professionnel');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'Nature et environnement');
 INSERT INTO `olibrary`.`categories` (`category_id`, `category_name`) VALUES(NULL, 'People');





 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 1);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 1);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 1);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 2);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 2);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 3);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 3);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 3);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 3);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 4);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 5);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 5);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 5);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 5);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 5);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 6);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 6);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 7);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 7);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 7);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 7);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 7);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 8);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 8);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 9);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 9);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 9);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 10);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 10);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 11);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 11);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 11);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 11);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 12);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 13);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 13);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 14);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 15);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 15);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 16);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 16);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 16);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 16);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 16);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 17);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 17);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 17);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 18);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 18);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 18);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 19);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 20);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 21);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 21);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 21);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 22);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 22);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 23);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 23);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 24);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 25);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 25);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 25);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 26);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 26);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 27);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 27);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 27);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 27);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 28);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 28);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 29);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 30);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 30);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 31);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 31);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 32);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 32);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 32);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 33);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 33);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 34);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 34);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 34);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 35);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 36);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 36);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 37);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 38);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 38);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 38);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 38);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 39);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 40);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 40);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 40);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 41);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 41);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 41);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 42);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 42);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 42);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 43);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 43);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 44);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 44);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 44);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 44);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 44);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 45);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 46);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 47);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 47);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 47);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 48);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 49);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 49);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 50);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 50);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 51);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 51);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 51);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 52);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 52);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 52);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 53);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 53);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 53);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 54);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 54);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 54);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 54);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 55);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 55);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 56);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 56);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 57);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 57);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 58);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 58);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 59);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 59);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 60);
 INSERT INTO `olibrary`.`copies` (`copy_id`, `book_id`) VALUES(NULL, 60);




ALTER TABLE `olibrary`.`customers` ADD CONSTRAINT `fk_customers` FOREIGN KEY `fk_customers1`(`contact`) REFERENCES `olibrary`.`employees`(`employee_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`books` ADD CONSTRAINT `fk_books1` FOREIGN KEY `fk_book1`(`publisher_id`) REFERENCES `olibrary`.`publishers`(`publisher_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`books` ADD CONSTRAINT `fk_books2` FOREIGN KEY `fk_book2`(`author_id`) REFERENCES `olibrary`.`authors`(`author_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`books` ADD CONSTRAINT `fk_books3` FOREIGN KEY `fk_book3`(`category_id`) REFERENCES `olibrary`.`categories`(`category_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`copies` ADD CONSTRAINT `fk_copies` FOREIGN KEY `fk_copy1`(`book_id`) REFERENCES `olibrary`.`books`(`book_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`periodicals` ADD CONSTRAINT `fk_periodicals` FOREIGN KEY `fk_periodical1`(`category_id`) REFERENCES `olibrary`.`categories`(`category_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`reserve_copies` ADD CONSTRAINT `fk_reserve_copies1` FOREIGN KEY `fk_reserve_copy1`(`copy_id`) REFERENCES `olibrary`.`copies`(`copy_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`reserve_copies` ADD CONSTRAINT `fk_reserve_copies2` FOREIGN KEY `fk_reserve_copy2`(`customer_id`) REFERENCES `olibrary`.`customers`(`customer_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`borrow_copies` ADD CONSTRAINT `fk_borrow_copies1` FOREIGN KEY `fk_borrow_copy1`(`copy_id`) REFERENCES `olibrary`.`copies`(`copy_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`borrow_copies` ADD CONSTRAINT `fk_borrow_copies2` FOREIGN KEY `fk_borrow_copy2`(`customer_id`) REFERENCES `olibrary`.`customers`(`customer_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`reserve_periodicals` ADD CONSTRAINT `fk_reserve_periodicals1` FOREIGN KEY `fk_reserve_periodical1`(`periodical_id`) REFERENCES `olibrary`.`periodicals`(`periodical_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`reserve_periodicals` ADD CONSTRAINT `fk_reserve_periodicals2` FOREIGN KEY `fk_reserve_periodical2`(`customer_id`) REFERENCES `olibrary`.`customers`(`customer_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`borrow_periodicals` ADD CONSTRAINT `fk_borrow_periodicals1` FOREIGN KEY `fk_borrow_periodical1`(`periodical_id`) REFERENCES `olibrary`.`periodicals`(`periodical_id`) ON DELETE CASCADE;
ALTER TABLE `olibrary`.`borrow_periodicals` ADD CONSTRAINT `fk_borrow_periodicals2` FOREIGN KEY `fk_borrow_periodical2`(`customer_id`) REFERENCES `olibrary`.`customers`(`customer_id`) ON DELETE CASCADE;

