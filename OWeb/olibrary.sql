-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 09 Mai 2017 à 20:05
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `olibrary`
--

-- --------------------------------------------------------

--
-- Structure de la table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(5) NOT NULL,
  `author_lastname` varchar(100) NOT NULL,
  `author_firstname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `authors`
--

INSERT INTO `authors` (`author_id`, `author_lastname`, `author_firstname`) VALUES
(1, 'Levy', 'Marc'),
(2, 'Rowling', 'Joanne'),
(3, 'Robert', 'Anne Laure'),
(4, 'Tack', 'Karen'),
(5, 'Buck', 'Pearl'),
(6, 'Ruy-Sanchez', 'Alberto'),
(7, 'Perrault', 'Charles'),
(8, 'Sayer', 'Angela'),
(9, 'Holzwarth', 'Werner'),
(10, 'Gomi', 'Taro'),
(11, 'de Brunhoff', 'Jean'),
(12, 'Spinelli', 'Patricia'),
(13, 'Robert-Ouvray', 'Suzanne'),
(14, 'Mathieu', 'Hélène'),
(15, 'Halmos', 'Claude'),
(16, 'Jünger', 'Ernst'),
(17, 'Platon', ' '),
(18, 'Rousseau', 'Jean-Jacques'),
(19, 'Voltaire', ' '),
(20, 'Lieberman', 'Herbert'),
(21, 'Aragon', 'Louis'),
(22, 'Aymé', 'Marcel'),
(23, 'Dumas', 'Alexandre'),
(24, 'Simonin', 'Albert'),
(25, 'Sartre', 'Jean-Paul'),
(26, 'Mallet', 'Jean-François'),
(27, 'Collectif', ' '),
(28, 'Vidard', 'Estelle'),
(29, 'Maeda', 'Yukari'),
(30, 'Gliori', 'Debi'),
(31, 'Tzvetan', 'Todorov'),
(32, 'Jousselin', 'Charles'),
(33, 'Klein', 'Etienne'),
(34, 'Tolkien', 'John'),
(35, 'Hugo', 'Victor'),
(36, 'Vian', 'Boris'),
(37, 'Camus', 'Albert'),
(38, 'Prévert', 'Jacques'),
(39, 'Baudelaire', 'Charles'),
(40, 'Hergé', NULL),
(41, 'Goscinny', 'René'),
(42, 'Zep', NULL),
(43, 'Alderson', 'Christophe');

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `book_id` int(5) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_subtitle` varchar(100) DEFAULT NULL,
  `publisher_id` int(5) NOT NULL,
  `author_id` int(5) NOT NULL,
  `publish_book_date` date NOT NULL,
  `category_id` int(5) NOT NULL,
  `book_cover` varchar(255) DEFAULT NULL,
  `book_summary` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `books`
--

INSERT INTO `books` (`book_id`, `book_title`, `book_subtitle`, `publisher_id`, `author_id`, `publish_book_date`, `category_id`, `book_cover`, `book_summary`) VALUES
(1, 'Toutes ces choses qu\'on ne s\'est pas dites', NULL, 1, 1, '2008-08-15', 1, 'images/toutesceschosesquonnesestpasdites.jpg', 'Quelques jours avant son mariage, Julia reçoit un appel téléphonique du secrétaire particulier de son père : comme elle l\'avait pressenti, Anthony Walsh, homme d\'affaires brillant, mais père distant, ne pourra pas assister à la cérémonie. Mais pour une fois, Julia doit reconnaître qu\'il a une excuse irréprochable : il est mort.\r\nLe lendemain de l\'enterrement, Julia découvre que son père lui réserve une autre surprise. Le voyage le plus extraordinaire de sa vie... et peut-être l\'occasion de se dire, enfin, toutes les choses qu\'ils ne se sont pas dites.'),
(2, 'Vous revoir', NULL, 1, 1, '2001-11-12', 1, 'images/vousrevoir.jpg', 'Si la vie offrait à Arthur et à Lauren une seconde chance, sauraient-ils prendre tous les risques pour la saisir ? Quatre ans après leur première rencontre, le hasard réunit à nouveau Arthur et Lauren, les deux héros inoubliables de Et si c\'était vrai...\r\nMarc Levy retrouve les personnages de son premier roman et nous entraîne dans une nouvelle aventure, faite d\'humour et d\'imprévus.'),
(3, 'Et si c\'était vrai', NULL, 1, 1, '2000-07-05', 1, 'images/etsicetaitvrai.jpg', 'Lauren est dans le coma, c\'est indéniable. Mais elle est aussi dans le placard d\'Arthur, un peu comme un fantôme, cela est tout aussi indéniable... Arthur, en tout cas, est bien obligé de l\'admettre : il la voit, l\'entend, la comprend et finit même par l\'aimer. Mais que peut-on espérer d\'un fantôme que l\'on est le seul à distinguer ? On ne tombe pas amoureux d\'un mirage, on ne force pas son meilleur ami à dérober une ambulance pour kidnapper un corps dans le coma, on ne ment pas à la police pour sauver une ombre, et pourtant...\r\nMarc Lévy signe ici un premier roman particulièrement grisant, qui s\'amuse du lecteur et de ses certitudes, toujours avec légèreté : comme Arthur, on se laisse prendre au jeu de Lauren, et comme lui, on finit par se dire, entre deux rebondissements : Et si c\'était vrai...'),
(4, 'Mes amis Mes amours', NULL, 1, 1, '2006-07-03', 1, 'images/mesamismesamours.jpg', 'Quand deux pères trentenaires réinventent la vie en s\'installant sous un même toit, ils s\'imposent deux règles, pas de baby-sitter et pas de présence féminine dans la maison... Dans le village français, au cœur de Londres, une histoire d\'amitié, des histoires d\'amour, les destins croisés des personnages d\'une comédie drôle et tendre.'),
(5, 'Harry Potter', 'et l\'enfant maudit', 2, 2, '2016-06-30', 1, 'images/lenfantmaudit.jpg', 'Être Harry Potter n’a jamais été facile et ne l’est pas davantage depuis qu’il est un employé surmené du Ministère de la Magie, marié et père de trois enfants. Tandis que Harry se débat avec un passé qui refuse de le laisser en paix, son plus jeune fils, Albus, doit lutter avec le poids d’un héritage familial dont il n’a jamais voulu. \r\nLe destin vient fusionner passé et présent. Père et fils se retrouvent face à une dure vérité : parfois, les ténèbres surviennent des endroits les plus inattendus.'),
(6, 'Le Berry', NULL, 3, 3, '2015-10-15', 2, 'images/leberry.jpg', 'Si le Berry est un nom familier à toutes les oreilles, bien peu savent le situer au milieu de la carte de France, et encore moins nombreux sont ceux qui peuvent en parler après avoir dit que le Printemps de Bourges doit s y dérouler... Et pourtant quel pays magnifique, héritier de trois mille ans d histoire, fier de ses ancêtres bituriges, les « rois du monde », riche de légendes vivaces tels Gargantua ou les fées et farfadets, creuset de littérature et d industrie. S y rendre, c est prendre le risque de tomber sous le charme des paysages aquatiques de la Brenne, c est mettre ses pas dans ceux des pèlerins et des bateliers, c est découvrir une contrée où danses et musiques animent les plus grandes villes comme les châteaux reculés, c est en fait prendre un grand bol d humanité. C est aussi partir à la rencontre de cette nature encore largement préservée et d hommes et de femmes ouverts, accueillants, que l on soit dans les collines viticoles du Sancerrois ou dans celles boisées du Boischaut, c est découvrir que le c ur de la France n est pas que géographique en Berry, il est aussi dans les valeurs et la dynamique des Berrichons. Bienvenue dans un voyage des plus inattendus.'),
(7, 'Cupcakes, tartes et biscuits, oh oui !', NULL, 4, 4, '2013-12-10', 3, 'images/cupcakes.jpg', 'Faites un pas de géant vers la créativité. Les créateurs de « Bonjour, cupcake ! » sont de retour, avec de toutes nouvelles recettes géniales, simples et hilarantes pour le plaisir. Exemple de recettes : Trompe d\'éléphant. Oreilles de cochon. Gaufrettes au chocolat. Têtes d\'agrumes.'),
(8, 'Pivoine', NULL, 5, 5, '1949-04-25', 1, 'images/pivoine.jpg', 'Pivoine, la petite esclave chinoise, est au centre de ce roman qui évoque avec un talent admirable la vie quotidienne d\'une famille dans la Chine d\'avant Mao. Pivoine possède toutes les qualités des grands livres de Pearl Buck et surtout cette chaleur humaine, cet amour de la vie, ce désir d\'un monde meilleur, qui ont fait l\'immense succès de la grande romancière américaine.'),
(9, 'La peau de la terre', NULL, 6, 6, '2010-09-01', 1, 'images/lapeaudelaterre.jpg', '" C\'était l\'heure où à Mogador les amants se réveillent. Ils portent encore leurs rêves pris au filet le long de leurs jambes, sous les paupières, dans les moindres creux de leurs corps. Ils dorment, d\'un baiser à l\'autre. La mer rugit au soleil et les réveille. C\'était l\'heure où à Mogador toutes les voix de la mer, du port, des rues, des places, des hammams, des chambres closes, des cimetières et du vent se nouent et content des histoires. " La rencontre d\'une femme mystérieuse et d\'un homme à qui elle lance un défi : elle fera l\'amour avec lui lorsqu\'il lui décrira les jardins de la ville. Seulement, il n\'y a pas de jardins à Mogador. La Peau de la terre est le troisième volet d\'une tétralogie dionysiaque placée sous le signe des quatre éléments, avec une unité de lieu, Mogador.'),
(10, 'Contes', 'Editions critiques de Jean-Pierre Collinet', 2, 7, '1981-06-01', 1, 'images/contes.jpg', 'Peau d\'Âne, La Belle au bois dormant, Le Petit Chaperon rouge ou encore Cendrillon : qui aurait cru que ces contes de notre enfance, lus et relus, mille fois racontés, cent fois adaptés, ont été composés par un contemporain de Racine, figure éminente des milieux littéraires du siècle de Louis XIV ? C\'est la magie des contes de fées : universels et intemporels, ils finissent par n\'appartenir à personne et ceux qui les racontent disparaissent finalement sous le poids de la tradition populaire.'),
(11, 'L\'encyclopédie du chat', NULL, 7, 8, '2001-10-01', 4, 'images/lencyclopedieduchat.jpg', 'Toutes les informations utiles sur votre animal préféré. L\'histoire et l\'évolution du chat domestique, le tour du monde des races et leurs standards, décrypter le comportement du chat, comment choisir un chat ou un chaton ? la santé et les soins, l\'élevage et les expositions félines.'),
(12, 'De la petite taupe qui voulait savoir qui lui avait fait sur la tête', NULL, 8, 9, '2005-10-01', 5, 'images/delapetitetaupe.jpg', 'Un grand classique de la littérature jeunesse ! Comme tous les soirs, la petite taupe sort de la terre pour voir si le soleil a disparu. C\'est alors qu\'on ose lui faire sur la tête ! C\'est rond et marron, aussi long qu\'une saucisse. Mais qui a bien pu faire ça ?'),
(13, 'A chacun sa crotte', NULL, 9, 10, '2000-10-01', 5, 'images/achacunsacrotte.jpg', 'La bouse de l\'éléphant est maousse costaud... tandis que les crottes de la souris sont riquiqui. Les poissons font caca. Tout comme les oiseaux. Et même les insectes. Des animaux différents font des cacas différents : de différentes formes, de différentes couleurs, de différentes odeurs et dans différents endroits. Au final, on mange tous donc... on fait tous caca ! Dans cet ouvrage, Taro Gomi amène les enfants de manière intelligente à faire le constat le plus simple mais pas forcément le plus évident pour eux : tout le monde fait caca.'),
(14, 'Babar', 'En forêt', 10, 11, '1991-10-01', 5, 'images/babar.jpg', 'Dis-moi pourquoi, Babar, Dans la forêt est une encyclopédie inspirée des personnages de Babar. Attention, ce n\'est pas une histoire de Babar, mais bien une véritable encyclopédie pour les enfants. Grâce à Babar, les enfants pourront apprendre comment les arbres tiennent debout, où on trouve des champignons, ou encore, s\'il y a encore des loups dans la forêt. Toutes les questions que les enfants se posent sur la forêt sont rassemblées dans cette petite encyclopédie claire et instructive. Babar et tout le petit monde de ses amis accompagnent le lecteur pour l\'aider à bien comprendre. Dans la même collection : A la maison Chez le docteur La ferme et le jardin La conquête de l\'espace Le ciel et les étoiles'),
(15, 'Un aute regard sur l\'enfant', 'De la naissance à six ans', 11, 12, '2010-02-01', 6, 'images/unautreregarde.jpg', '" L\'adulte est véritablement aveugle à l\'enfant ", écrivait Maria Montessori dans les années 1930. Bien avant Françoise Dolto, cette pionnière saluée par les grands esprits de son temps prend le parti de l\'enfant et défend une représentation révolutionnaire de son développement. Qu\'est-ce qu\'un enfant ? Comment se développe-t-il dès la naissance ? Comment se construit en lui la confiance et l\'estime de soi ? Comment lui apprendre à être, à penser, à agir, à " faire par lui-même ", pour reprendre sa formule érigée en slogan ? À toutes ces questions, Maria Montessori répond par une démarche propre : apprendre à observer l\'enfant dès sa naissance dans les moindres détails, pour être en lien avec lui, pour cultiver cet art de la rencontre. C\'est la clé de l\'épanouissement de cet être en devenir. Plus que jamais, cette pédagogie reste à découvrir et à interpréter. C\'est ce que Patricia Spinelli éclaire ici de manière tout à fait inédite, sous la forme d\'un dialogue avec Karen Benchetrit. Une initiation très concrète et accessible à tous les parents et les éducateurs.'),
(16, 'Intégration motrice et développement psychique', 'Une théorie de la psychomotricité', 11, 13, '2008-12-19', 6, 'images/integrationmotrice.jpg', 'Bien avant le langage, c\'est avec ses tensions et ses détentes, ses pleurs et ses sourires que le bébé manifeste sa vie affective à son entourage. E organisation tonique et motrice du nouveau-né apparaît donc au premier plan du travail de recherche de Suzanne Robert-Ouvray, qui propose ici une véritable théorie interdisciplinaire de la psychomotricité. Les premières images et les premiers fantasmes s\'ancrent dans du corporel. La thérapie psychomotrice se présente alors comme un travail d\'articulation entre le corps et la psyché. Suzanne Robert-Ouvray répond ainsi à de nombreuses questions sur les liens psychomoteurs et ouvre également des perspectives nouvelles au niveau psychopathologique.'),
(17, 'L\'autorité expliquée aux parents', NULL, 12, 14, '2008-01-19', 6, 'images/lautoriteexpliqueeauxparents.jpg', 'Les parents aujourd\'hui ont peur de l\'autorité. Parce qu\'ils s\'imaginent qu\'elle ne pourrait être que ce qu\'elle fut souvent : un instrument destiné à soumettre l\'enfant au pouvoir des adultes. Et susceptible de ce fait de porter atteinte à sa personnalité, à sa liberté, à sa créativité. Ils se refusent donc à la mettre en œuvre et bien des malheurs s\'ensuivent, aussi bien dans les familles que dans la société.'),
(18, 'Pourquoi l\'amour ne suffit pas', 'Aider l\'enfant à se construire', 12, 15, '2006-01-19', 6, 'images/pourquoilamournesuffitpas.jpg', 'L\'enfant n\'est pas "naturellement " apte à vivre avec ses semblables et il ne découvre pas tout seul le mode d\'emploi de la vie humaine. Il se construit et a pour ce faire besoin des adultes; l\'éducation est le support essentiel de sa construction. Aimer un enfant ne peut donc, comme on le croit trop souvent aujourd\'hui, se limiter à éprouver pour lui de l\'affection. Claude Halmos, à la lumière de son expérience de psychanalyste, démontre que la vision d\'un amour parental réduit aux sentiments a des conséquences graves pour les enfants, pour leurs parents, mais aussi pour toute la société. Elle pose, dans le langage clair qu\'on lui connaît, les bases d\'une véritable réflexion sur l\'amour parental. Et donne ainsi à tous les parents les moyens de comprendre ce qu\'aimer un enfant veut dire.'),
(19, 'Premier journal parisien', NULL, 13, 16, '1998-12-31', 1, 'images/premierjournalparisien.jpg', 'Hostile à Hitler, le capitaine Jünger passe trois années décisives à l\'état-major parisien de la Wehrmacht. Il y adopte sa position préférée en politique, celle de l\'observateur proche d\'un centre du pouvoir. Il assiste aux luttes d\'influence entre l\'armée et le Parti et, sans renoncer à sa méfiance envers les attentats, voit naître dans son cercle d\'amis le complot qui manquera de peu l\'assassinat de Hitler en juillet 1944. Dans un environnement tragique, il fréquente les intellectuels parisiens et partage les derniers divertissements des privilégiés du moment. Une brève mission dans le Caucase où les Allemands battent précipitamment en retraite lui permet de mesurer l\'horreur des combats et des exterminations à l\'Est. Au coeur de la tourmente, il trouve appui dans sa lecture assidue de la Bible et son empathie avec la nature, qui l\'empêchent de désespérer de l\'humanité.'),
(20, 'Jardins et routes', NULL, 13, 16, '1982-10-01', 1, 'images/jardinsetroutes.jpg', 'Jardins et Routes succède à Feu et Sang. Le héros de la Grande Guerre achève de rédiger Sur les falaises de marbre, parabole sur le triomphe de la barbarie, puis il part pour la "drôle de guerre", où les deux adversaires se figent dans une étonnante immobilité. Lui-même ne s\'illustrera qu\'en sauvant un blessé. Dans sa hutte de roseaux, de l\'autre côté du Rhin, il observe les lignes françaises par un hiver glacial et s\'immerge dans les grands rythmes de la nature, en attendant le déclenchement de l\'Apocalypse. Ce sera l\'offensive foudroyante de juin 1940 ; cheminant à marches forcées derrière les blindés victorieux, il n\'en verra rien, sinon les images sinistres qui jalonnent la déroute française. Secourable aux prisonniers encore sous le choc, il s\'interroge sur l\'esprit du paysage et sur ceux qui lui ont donné forme, ces anciens vainqueurs qu\'a balayés "l\'étrange défaite".'),
(21, 'Apologie de Socrate', 'Criton', 14, 17, '1999-01-04', 6, 'images/apologiedesocrate.jpg', 'Platon a fait d’un évènement contingent, à savoir le procès puis la mort de Socrate, un mythe fondateur de la philosophie. Ce mythe modèlera fortement la figure du Sage dans la tradition philosophique occidentale. Car Socrate, à l’approche de la mort, est en effet plus philosophe que jamais : seule la pratique de la philosophie rend la vie digne d’être vécue, et en corollaire, permet d’accepter la mort.'),
(22, 'Les confessions', 'Livres I à IV', 15, 18, '2003-12-01', 1, 'images/lesconfessions.jpg', 'À cinquante ans, pendant la période la plus tourmentée de sa vie, Rousseau entreprend ce livre " sans exemple ", et qui, croyait-il, " n\'aurait jamais d\'imitateur ". Montrer à ses semblables un homme dans toute sa vérité. Et cet homme, ce serait lui. Grâce à ses Confessions, à leur charme et à leur vitalité inouïs, Rousseau devient Jean-Jacques pour son lecteur. Ses années d\'apprentissage sont celles d\'un quasi-orphelin malmené, d\'un vagabond malheureux, pas toujours honnête, du protégé de Madame de Warens, une aventurière un peu espionne et dévergondée qui lui offre quelques années délicieuses. Le récit de cette initiation intellectuelle et morale donne le vertige. Personne, avant Jean-Jacques, ne s\'est confié avec autant de franchise, d\'impudeur, de délectation raffinée. Au point de susciter encore, à plus de deux siècles de distance, admiration effarée et intérêt passionné. '),
(23, 'L\'ingénu', NULL, 10, 19, '2007-05-01', 1, 'images/lingenu.jpg', 'Un Indien d’Amérique débarque en Bretagne. À travers le regard qu’il porte sur la société, voilà que nous aussi nous commençons à la voir d’un œil neuf. En 1767, L’Ingénu de Voltaire met pour la première fois en œuvre ce procédé satirique qui fit fortune : le bon sauvage plongé dans un monde dit civilisé fait éclater l’artifice des apparences et des préjugés. Et nous prenons peu à peu conscience, à la lecture de ce conte faussement badin, de la cruauté cachée des hommes et de la fragilité des conventions.'),
(24, 'La traque', NULL, 16, 20, '1995-06-16', 1, 'images/latraque.jpg', 'Ancien médecin du Reich, Gregor Grigori – alias l\'Ange de la mort d\'Auschwitz – s\'est réfugié au Paraguay. Alors que tout le monde le croit mort, Asher, un espion juif, retrouve sa trace. Ce " faucon " israélien, animé par un brutal instinct de vengeance, se lance dans une longue traque au cœur de la forêt amazonienne, où l\'étrange docteur a établi sa demeure – ainsi qu\'une inquiétante clinique...'),
(25, 'Les yeux d\'Elsa', NULL, 17, 21, '1998-12-31', 1, 'images/lesyeuxdelsa.jpg', 'À la gloire de la femme aimée, Aragon, le dernier poète courtois, a composé ses plus merveilleux poèmes." Ma place de l\'étoile, à moi, est dans mon cœur, et si vous voulez connaître le nom de l\'étoile, mes poèmes suffisamment le livrent. " Pétrarque a chanté Laure, Ronsard Hélène, Lamartine Elvire, c\'est à Elsa qu\'Aragon donne ses poèmes qui sont au nombre des plus beaux chants d\'amour qu\'un poète ait écrits.'),
(26, 'La jument verte', NULL, 2, 22, '1933-01-23', 1, 'images/lajumentverte.jpg', 'Au village de Claquebue naquit un jour une jument verte, non pas de ce vert pisseux qui accompagne la décrépitude chez les carnes de poil blanc, mais d\'un joli vert de jade. En voyant apparaître la bête, Jules Haudouin n\'en croyait pas ses yeux, ni les yeux de sa femme. - Ce n\'est pas possible, disait-il, j\'aurais trop de chance.Cultivateur et maquignon, Haudouin n\'avait jamais été récompensé d\'être rusé, menteur et grippe-sou...'),
(27, 'Le capitaine Pamphile', NULL, 2, 23, '2003-12-11', 1, 'images/lecapitainephampile.jpg', 'Deux histoires parallèles: celle de l\'auteur et de ses amis artistes (vie de bohème où les animaux occupent une part importante en tant que membres à part entière de la collectivité) et celle du Capitaine Pamphile (où tout est lié à l\'argent, au profit, sans aucun sens moral et où les animaux occupent une place importante en tant que source de profit) Extrait : Notre chasseur se précipita sur le malheureux chien avec les imprécations les plus terribles, le saisit à la gorge et la lui serra avec tant de force, qu\'il le força d\'ouvrir la gueule, quelque envie qu\'il eût de n\'en rien faire. Le chasseur y plongea frénétiquement la main jusqu\'au gosier, et en tira trois plumes de la queue de l\'alouette. Quant au corps, il n\'y fallait plus penser. Le propriétaire de l\'alouette chercha dans sa poche un couteau pour éventrer Love, et rentrer par ce moyen en possession de son gibier ; mais, malheureusement pour lui, et heureusement pour Love, il avait prêté le sien, la veille au soir, à sa femme pour tailler d\'avance les brochettes qui devaient enfiler ses perdrix, et sa femme avait oublié de le lui rendre. Forcé, en conséquence, de recourir à des moyens de punition moins violents, il donna à Love un coup de pied à enfoncer une porte cochère, mit soigneusement dans sa carnassière les trois plumes qu\'il avait sauvées...'),
(28, 'Le savoir-vivre chez les truands', NULL, 18, 24, '2006-05-11', 1, 'images/lesavoirvivre.jpg', '" A l\'instar de tout groupe humain organisé, le Mitan se trouve régi par un code de convenances, de bons usages, de coutumes qu\'il importe de connaître et de respecter. La gaffe, l\'impair, le mot blessant, la médisance, l\'indélicatesse, sanctionnés dans le monde des caves par un refroidissement des relations, le sont souvent, dans le monde des truands, par le refroidissement à zéro du gaffeur, du malotru, de l\'injurieux, du médisant, de l\'indélicat, et le savoir-vivre chez les truands pourrait plus justement se nommer le savoir-survivre. " C\'est ainsi qu\'Albert Simonin, l\'auteur de Touchez pas au grisbi et autres livres culte, le scénariste des inoubliables Tontons flingueurs, nous initie aux " bonnes manières " du Milieu.'),
(29, 'Lettre ouverte aux voyous', NULL, 18, 24, '2006-05-11', 1, 'images/lettreouverteauxvoyous.jpg', 'L\'auteur de Touchez pas au grisbi, Le Cave se rebiffe et Grisbi or not Grisbi (devenu à l\'écran Les Tontons flingueurs) évoque dans cette truculente fantaisie littéraire l\'univers des truands, qu\'il a toujours dépeint talentueusement. Simonin use à merveille de formules dont Michel Audiard partageait le savoir-dire, prodiguant conseils et recommandations dans un style aussi percutant qu\'efficace, employant la langue verte avec une telle aisance que Léo Malet le surnomma " le Chateaubriand de l\'argot ".'),
(30, 'Nekrassov', NULL, 2, 25, '1956-01-05', 1, 'images/nekrassov.jpg', 'Encore un mot, Monsieur, un seul, et je m\'en vais. Quoi ! vous, Français, fils et petit-fils de paysans français, et moi, l\'apatride, l\'hôte provisoire de la France ; vous l\'honnêteté même, et moi le crime, par-dessus tous les vices et toutes les vertus, nous nous donnons la main, nous condamnons ensemble les juifs, les communistes et les idées subversives ? Il faut que notre accord ait une signification profonde. Cette signification, je la connais, Monsieur, et je vais vous la dire : nous respectons tous deux la propriété privée.'),
(31, 'Le diable et le bon dieu', NULL, 2, 25, '1995-04-01', 1, 'images/lediableetlebondieu.jpg', 'Cette pièce peut passer pour un complément, une suite aux Mains sales, bien que l\'action se situe quatre cents ans auparavant. J\'essaie de montrer un personnage aussi étranger aux masses de son époque, qu\'Hugo, le jeune bourgeois, héros des Mains sales, l\'était, et aussi déchiré. Cette fois, c\'est un peu plus gros. Gotz, mon héros, incarné par Pierre Brasseur, est déchiré, parce que, bâtard de noble et de paysan, il est également repoussé des deux côtés. Le problème est de savoir comment il lâchera l\'anarchisme de droite pour aller prendre part à la guerre des paysans... J\'ai voulu montrer que mon héros, Gotz, qui est un genre de franc-tireur et d\'anarchiste du mal, ne détruit rien quand il croit beaucoup détruire. Il détruit des vies humaines, mais ni la société, ni les assises sociales, et tout ce qu\'il fait finit par profiter au prince, ce qui l\'agace profondément. Quand, dans la deuxième partie, il essaie de faire un bien absolument pur, cela ne signifie rien non plus. Il donne des terres à des paysans, mais ces terres sont reprises à la suite d\'une guerre générale, qui d\'ailleurs éclate à propos de ce don. Ainsi, en voulant faire l\'absolu dans le bien ou dans le mal, il n\'arrive qu\'à détruire des vies humaines... La pièce traite entièrement des rapports de l\'homme à Dieu, ou, si l\'on veut, des rapports de l\'homme à l\'absolu...'),
(32, 'Simplissime', 'Le livre de cuisine light le + facile du monde', 19, 26, '2016-04-01', 3, 'images/simplissime.jpg', '200 recettes saines pour rester en forme'),
(33, 'Encyclopédie des animaux', NULL, 2, 26, '2013-09-26', 4, 'images/encyclopediedesanimaux.jpg', 'Tout ce que vous avez voulu savoir sur le monde fascinant et merveilleux des animaux. Plus de 2000 photographies superbes et étonnantes qui révèlent les secrets de la vie sauvage. Près de 600 fiches synthétiques et illustrées détaillent des espèces particulières et renseignent sur le milieu, la taille, le comportement mais aussi sur les menaces qui pèsent sur chacune d\'elles. Une mine d\'informations inépuisable pour tous les passionnés d\'animaux, articulée autour de 6 chapitres : Mammifères, Oiseaux, Reptiles, Amphibiens, Poissons et Invertébrés.'),
(34, 'Animaux de la savane', NULL, 20, 27, '2014-09-11', 4, 'images/animauxdelasavane.jpg', 'Nouvelle édition avec de nouveaux dessins et une nouvelle couverture.'),
(35, 'La très grande princesse', NULL, 8, 28, '2014-03-19', 5, 'images/latresgrandeprincesse.jpg', 'Il était une fois un pays. Dans ce pays vivaient un roi et une reine sans enfants... jusqu\'au jour où le roi trouva, parmi les fleurs qu\'il cultivait dans son jardin, une toute petite princesse. Mais voilà, la toute petite princesse était ensorcelée, elle grandit jour après jour jusqu\'à devenir géante, et ce sans jamais s\'arrêter ! Tous les savants du royaume cherchèrent à la libérer de son sort, mais aucun n\'y parvint. Le roi découvrit un jour une petite graine coincée dans le nombril de la princesse, l\'attrapa et sauva ainsi sa fille de la malédiction qui la frappait. Plantée dans le jardin, la graine allait donner un champ de magnifiques tournesols géants.'),
(36, 'Le tout petit roi', NULL, 8, 28, '2011-09-14', 5, 'images/letoutpetitroi.jpg', 'Il était une fois un tout petit roi qui vivait seul dans son château. Un jour, il épousa une très grande princesse...'),
(37, 'Maman est là quoi qu\'il arrive', NULL, 21, 29, '2014-07-02', 5, 'images/mamanestla.jpg', 'Dans la douce et profonde nuit, le sommeil a envahi les petits. Maman est là, qui veille sans un bruit. Une petite histoire du soir par Debi Gliori, l’auteur de Je t’aimerai toujours quoiqu’il arrive.'),
(38, 'Médecine, santé et sciences humaines', NULL, 22, 30, '2014-07-02', 6, 'images/medecinesante.jpg', 'Cet ouvrage pluridisciplinaire est destiné à accompagner l\'enseignement de sciences humaines et sociales au sein de la formation médicale et des formations en santé. Il s\'adresse aux étudiants et à tous ceux qui s\'engagent dans les métiers du soin ou qui s\'intéressent aux questions épistémologiques, éthiques et sociales impliquées par la médecine contemporaine.'),
(39, 'L\'homme de la douleur', NULL, 24, 31, '2016-12-02', 6, 'images/lhommedeladouleur.jpg', 'Rencontrer \'l\'homme de la douleur\' soulève de nombreuses questions : qu\'est-ce qui différencie la souffrance de la douleur ? Comment évaluer l\'expérience douloureuse alors que celle-ci se montre à autrui plus facilement qu\'elle ne se raconte ? Comment se fait-il que la douleur puisse saisir l\'homme jusqu\'à l\'entraîner dans une expérience proche de la mort ? A contrario, comment celle-ci peut-elle s\'oublier d\'un instant à l\'autre à la faveur d\'un détournement de l\'attention ? Bien d\'autres questions sont abordées et illustrées ici par deux cliniciens dialoguant au chevet des malades. Chemin faisant, le plus jeune découvre et apprend de son aîné que le savoir et le savoir-faire ne suffisent pas pour approcher \'l\'homme de la douleur\'. Au cœur de l\'humanité, chacun – soigné et soignant – recherche aussi chez l\'autre ce qui lui permet d\'être reconnu, accueilli et écouté afin de trouver ensemble les traitements les mieux adaptés et par conséquent les plus efficaces : un chemin audacieux au cours duquel celui qui se plaignait de douleur pourra enfin s\'apaiser.'),
(40, 'Le pays qu\'habitait Albert Einstein', NULL, 23, 32, '2016-10-19', 6, 'images/lepaysquhabitaitalberteinstein.jpg', 'Albert Einstein (1879-1955), c\'est une façon d\'être, de penser et de créer sans pareil. Il a mené avec une ardeur et une obstination tranquilles son enquête sur l\'Univers, et permis de fonder une véritable cosmologie scientifique. Dans cet ouvrage inclassable - ni livre de vulgarisation ni biographie -, Étienne Klein nous invite à faire quelques pas en compagnie de ce géant de la physique, à la trajectoire atypique, cet humaniste conscient des dangers et des bouleversements qui menacent l\'Europe à la veille de la Seconde Guerre mondiale. Ouvrage personnel qui juxtapose, à la manière d\'un portrait cubiste, différents points de vue, entrecroise fragments de vie et découvertes scientifiques, et tente de mettre au jour la façon si singulière dont Einstein posait les problèmes.'),
(41, 'Petit voyage dans le monde des quanta', NULL, 14, 32, '2016-09-07', 6, 'images/petitvoyage.jpg', 'En 1905 apparaissait une nouvelle physique, qui allait révolutionner la façon de décrire la matière et ses interactions : la physique quantique. Avec elle s\'ouvraient les portes d\'un monde qui n\'obéit pas aux lois de la physique classique : l\'infiniment petit, avec ses atomes et ses particules. Elle obligea ses pères fondateurs, Einstein, Bohr, Heisenberg et Schrödinger notamment, à rediscuter le déterminihrödinger notamment, à rediscuter le déterminisme et les critères de réalité de la physique classique, ainsi que la traditionnelle séparation entre observateur et objet observé.'),
(42, 'Le Seigneur des Anneaux', 'La Communauté de l\'Anneau', 15, 33, '2014-10-02', 1, 'images/lacommunautedelanneau.jpg', 'Dans les vertes prairies de la Comté, les Hobbits, ou Semi-hommes, vivaient en paix... Jusqu\'au jour fatal où l\'un d\'entre eux, au cours de ses voyages, entra en possession de l\'Anneau Unique aux immenses pouvoirs. Pour le reconquérir, Sauron, le seigneur ténébreux, va déchaîner toutes les forces du Mal... Frodon, le Porteur de l\'Anneau, Gandalf, le magicien, et leurs intrépides compagnons réussiront-t-ils à écarter la menace qui pèse sur la Terre du Milieu ?'),
(43, 'Le Seigneur des Anneaux', 'Les Deux Tours', 15, 33, '2015-10-22', 1, 'images/lesdeuxtours.jpg', 'Frodon le Hobbit et ses Compagnons se sont engagés, au Grand Conseil d\'Elrond, à détruire l\'Anneau de Puissance dont Sauron de Mordor cherche à s\'emparer pour asservir tous les peuples de la terre habitée : Elfes et Nains, Hommes et Hobbits. Dès les premières étapes de leur audacieuse entreprise, les Compagnons de Frodon vont affronter les forces du Seigneur des Ténèbres et bientôt ils devront se disperser pour survivre. Parviendront-ils à échapper aux Cavaliers de Rohan ? Trouveront-ils asile auprès de Ceux des Arbres, grâce à l\'entremise de Sylvebarbe ? Qu\'adviendra-t-il de Gandalf le Gris métamorphosé, au-delà de la mort, en Cavalier Blanc ? La trilogie de Tolkien, l\'une des créations les plus riches et les plus neuves de notre temps, est aujourd\'hui portée à l\'écran par Peter Jackson.'),
(44, 'Le Seigneur des Anneaux', 'Le Retour du Roi', 15, 33, '2016-10-13', 1, 'images/leretourduroi.jpg', 'Dispersée dans les terres de l\'Ouest, la Communauté de l\'Anneau affronte les périls de la guerre, tandis que Frodon, accompagné du fidèle Samsagace, poursuit une mission presque désespérée : détruire l\'Anneau Unique en le jetant dans les crevasses d\'Oradruir, la Montagne du destin. Mais aux frontières du royaume de Mordor, une mystérieuse créature les épie... pour les perdre ou les sauver ?John Ronald Reuel Tolkien est né en 1892 à Bloemfontein, en Afrique du Sud. Il rentre en Angleterre après la mort de son père, en 1896. En 1919, il est diplômé de l\'Université d\'Oxford et travaille alors au dictionnaire du même nom. Sa carrière universitaire commence par un poste de maître assistant à Leeds (comté de York) puis il revient à Oxford où il occupe une chaire d\'anglo-saxon (vieil anglais), de 1925 à 1945, et de langue et de littérature anglaises, de 1945 à 1959.Il meurt en 1973.'),
(45, 'Zadig ou la destinée', NULL, 16, 19, '2015-06-15', 1, 'images/zadigouladestinee.jpg', ' \'Qu\'il est dangereux de se mettre à la fenêtre et qu\'il est difficile d\'être heureux dans cette vie ! " Ainsi soupire Zadig, jeune Babylonien, devenu favori du roi et promis à une enviable destinée. Pour être tombé amoureux de la reine Astarté, le voilà obligé de fuir, rendu à la condition d\'esclave, victime des brigands, des fanatiques religieux, en butte aux pires catastrophes... Mais à travers ce cheminement capricieux, la Providence veille et l\'homme est à sa place. C\'est aussi ce que découvre cet habitant de Sirius qui, à l\'aide d\'un rayon de soleil, parcourt la Voie lactée. Quelle surprise en effet pour Micromégas de voir que l\'homme, si petit et si misérable qu\'il soit, tient son rôle dans l\'univers grâce à son esprit... Désinvoltes et primesautiers, deux contes qui charment et enchantent... '),
(46, 'Les Misérables', NULL, 17, 34, '2016-01-28', 1, 'images/lesmiserables.jpg', 'Tant qu\'il existera, par le fait des lois et des moeurs, une damnation sociale créant artificiellement, en pleine civilisation, des enfers, et compliquant d\'une fatalité humaine la destinée qui est divine; tant que les trois problèmes du siècle, la dégradation de l\'homme par le prolétariat, la déchéance de la femme par la faim, l\'atrophie de l\'enfant par la nuit, ne seront pas résolus ; tant que, dans de certaines régions, l\'asphyxie sociale sera possible ; en d\'autres termes, et à un point de vue plus étendu encore, tant qu\'il y aura sur la terre ignorance et misère, des livres de la nature de celui-ci pourront ne pas être inutiles. Hauteville-House, 1er janvier 1862. Victor Hugo'),
(47, 'L\'Ecume des Jours', NULL, 17, 35, '2014-06-01', 1, 'images/lecumedesjours.jpg', 'C\'est un conte de l\'époque du jazz et de la science-fiction, à la fois comique et poignant, heureux et tragique, merveilleux et fantastique, féerique et déchirant. Dans cette oeuvre d\'une modernité insolente, l\'une des plus célèbres du Xxe siècle et livre-culte depuis plus de trente ans, Duke Ellington croise le dessin animé, Sartre devient une marionnette burlesque, le cauchemar va jusqu\'au bout du désespoir. Mais seules deux choses demeurent éternelles et triomphantes : le bonheur ineffable de l\'amour absolu et la musique des noirs américains...'),
(48, 'J\'irai cracher sur vos tombes', NULL, 17, 35, '1997-03-01', 1, 'images/jiraicrachersurvostombes.jpg', 'Si vous le lisez avec l\'espoir de trouver dans J\'irai cracher sur vos tombes quelque chose capable de mettre vos sens en feu, vous allez drôlement être déçu. Si vous le lisez pour y retrouver la petite musique de Vian, vous l\'y trouverez. Il n\'y a pas beaucoup d\'écrits de Vian dont il ne suffise de lire trois lignes anonymes pour dire tout de suite : \' Tiens, c\'est du Vian ! \' Ils ne sont pas nombreux, les écrivains dont on puisse en dire autant. Ce sont généralement ces écrivains-là qui ont les lecteurs les plus fidèles, les plus passionnés, parce que, en les lisant, on les entend parler. Lire Vian, lire Léautaud, lire la correspondance de Flaubert, c\'est vraiment être avec eux. Ils sont tout entiers dans ce qu\'ils écrivent.Ca ne se pardonne pas, ça. Vian a été condamné. Flaubert a été condamné... Delfeil de Ton'),
(49, 'Les Morts ont tous la même peau', NULL, 17, 35, '1997-09-01', 1, 'images/lesmortsonttouslamemepeau.jpg', 'Videur dans une boîte de nuit, Dan ne vit que pour Sheila, sa femme, et l\'enfant qu\'il a eu avec elle. Un enfant que la société acceptera parce que sa peau est blanche. Dan, lui, est noir, d\'origine, sinon de peau... Toute son existence repose sur ce secret. L\'irruption de Richard, son frère, qui menace de tout révéler, en même temps que sa subite attirance pour une prostituée noire, vont bouleverser la vie de Dan. Lui qui, non sans remords, a tant voulu être un Blanc, ne serait-il au fond de lui-même qu\'un \'nègre\' ? Boris Vian - alias Vernon Sullivan - nous donne ici, à la manière de Chandler ou Hadley Chase, bien plus qu\'une dénonciation du racisme. Ces pages qui firent scandale, où la violence et l\'érotisme se donnent libre cours, nous conduisent au plus profond de la folie d\'un être qui ne se reconnaît plus, que la pression sociale a irrémédiablement dissocié de lui-même. Une sorte d\'explosion intérieure qui le poussera au meurtre...'),
(50, 'L\'Etranger', NULL, 16, 36, '1971-12-01', 1, 'images/letranger.jpg', 'Quand la sonnerie a encore retenti, que la porte du box s\'est ouverte, c\'est le silence de la salle qui est monté vers moi, le silence, et cette singulière sensation que j\'ai eue lorsque j\'ai constaté que le jeune journaliste avait détourné les yeux. Je n\'ai pas regardé du côté de Marie. Je n\'en ai pas eu le temps parce que le président m\'a dit dans une forme bizarre que j\'aurais la tête tranchée sur une place publique au nom du peuple français...'),
(51, 'Paroles', NULL, 16, 37, '1976-12-01', 7, 'images/paroles.jpg', 'Rappelle-toi Barbara. Il pleuvait sans cesse sur Brest ce jour-là. Et tu marchais souriante. Epanouie ravie ruisselante. Sous la pluie. Rappelle-toi Barbara... Oh Barbara. Quelle connerie la guerre. Qu\'es-tu devenue maintenant. Sous cette pluie de fer. De feu d\'acier de sang. Et celui qui te serrait dans ses bras. Amoureusement. Est-il mort disparu ou bien encore vivant...'),
(52, 'Les Fleurs du Mal', NULL, 16, 38, '1976-12-01', 7, 'images/lesfleursdumal.jpg', '\'Dans ce livre atroce, j\'ai mis tout mon cœur, toute ma tendresse, toute ma religion, toute ma haine. \' Étranger dans un monde qui le refuse, maudit et damné, Baudelaire n\'a pas d\'autre choix que d’explorer l\'enfer et le mal. Puisque la vie n\'est qu\'extase et horreur, le poète la transfigure dans une contrée imaginaire où le désespoir et la beauté se confondent. Il s\'évade dans les paradis artificiels du haschisch, de l\'opium et du vin, ceux de la luxure et du vice.Les Fleurs du mal sont le journal intime, le cri de terreur et de jouissance du poète. \' Fleurs maladives \' qui annoncent toute la littérature moderne et dont le parfum et les poisons ne cessent de troubler.'),
(53, 'Les Aventures de Tintin', 'Tintin au pays des Soviets', 18, 39, '1930-05-11', 8, 'images/aupaysdessoviets.jpg', 'Créée en 1929, cette première aventure de Tintin, mise en couleur, surprend par sa lisibilité nouvelle et moderne. Doté déjà d’une énergie enthousiaste, Tintin prend sa personnalité physique quand il bondit dans une puissante voiture décapotable. Soucieux d\'exprimer la vitesse, Hergé relève la mèche de son front … pour toujours. Le jeune auteur avait 21 ans et n\'avait jamais été initié au dessin. Il ne se doutait pas qu\'il venait de créer un héros qui deviendrait universel et mythique au cours de ses vingt-quatre aventures…'),
(54, 'Les Aventures de Tintin', 'On a marché sur la Lune', 18, 39, '1993-05-04', 8, 'images/onamarchesurlalune.jpg', 'Suite d\'\'Objectif Lune\', nous retrouvons dans cet album nos héros à bord de la première fusée lunaire. Mais le vol est loin d\'être de tout repos : outre la présence involontaire des Dupondt (ce qui limite sérieusement les réserves d\'oxygène), des saboteurs sont également à bord. La fusée sera-t-elle de retour sur Terre à temps ?'),
(55, 'Les Aventures de Tintin', 'Tintin au Congo', 18, 39, '1993-05-04', 8, 'tintinaucongo.jpg', 'A peine rentré d\'URSS, Tintin repart pour le Congo. Sorcier du royaume des Babaoro\'m, en lutte contre une bande de gangsters à la solde d\'Al Capone ... Le plus célèbre de nos reporters sortira bien sûr triomphant de toutes ces aventures. Pour notre plus grand plaisir à tous.'),
(56, 'Lucky Luke', 'Chasseur de primes', 19, 40, '1958-05-15', 8, 'images/chasseurdeprimes.jpg', 'Ce personnage immortel parcourt depuis 1947 l\'histoire de l\'ouest américain. Il y a rencontré des personnages célèbres (Jesse James, Calamity Jane, Billy the Kid, Sarah Bernhardt...).'),
(57, 'Titeuf', 'Dieu, le sexe et les bretelles', 20, 41, '2010-08-25', 8, 'images/dieulesexeetlesbretelles.jpg', 'Si Dieu est parmi nous comme la prof elle a dit, c\'est en tout cas pas Hugo, il est trop gros, ni Manu, ni François parce qu\'ils ont des binocles... Dimi c’est pas possible, il parle même pas bien français... Il reste que Ludo mais ça veut dire que Dieu sait pas faire pipi debout.\' Titeuf n’est pas le caïd de la cour de récré, mais il est le «sale gosse» préféré des lecteurs et, il y a 17 ans, comme un OVNI dans le paysage éditorial de l\'époque, sortait le premier album de Titeuf. 11 albums plus tard, Zep a entraîné des millions de lecteurs du monde entier et créé un phénomène unique. Dieu, le sexe et les bretelles était paru en noir et blanc : Zep a décidé d\'y revenir, pour lui donner un net coup de jeune, et confie pour cela la colorisation à Nob.'),
(58, 'Titeuf', 'Le derrière des choses', 20, 41, '1996-06-12', 8, 'images/lederrieredeschoses.jpg', 'Mes parents m\'envoient chez le psychologue à cause de mes notes comme si j\'étais malade-des-maths. Encore que j\'ai du bol, parce que Hugo il est malade-du-français et c\'est son père qui le soigne à coups de pied au cul. Ne tournons pas autour du pot, cet album de Titeuf marque une étape décisive dans l\'évolution de notre \'grand petit homme\'. Inutile de le cacher, cette fois-ci Titeuf devra apprendre à découvrir les miracles de l\'anatomie féminine et ses secrets... Résister à la passion déchaînée d\'une plus petite que lui, regarder ses parents se débattre avec de drôles de problèmes qui ont pour nom course à l\'emploi, stage de réinsertion, bref les aléas de la vie moderne. '),
(59, 'Titeuf', 'Lâchez-moi le slip !', 20, 41, '2000-08-23', 8, 'images/lachezmoileslip.jpg', 'La mèche en prise directe sur le monde, Titeuf est à la fois héros et témoin de sa génération. Aussi curieux que turbulent, il traîne son cartable dans les cours d\'écoles avec une foule de questions sur les réalités de la vie. Mais Titeuf n\'oublie jamais que les copains, c\'est quand même ce qu\'il y a de plus important. Gaffeur et toujours imbattable pour mettre ses parents en rogne, il est le champion de la catégorie turbulent.Avec Titeuf, la vie c\'est pô triste ! Chaque gag de Titeuf pose un regard complice sur les problèmes de la vie d\'un grand petit enfant qui saute à pieds joints dans le monde avec une énergie débordante... Un feu d\'artifices de couleurs, de dialogues et d\'imagination qui a propulsé cette série au rang des vedettes de la BD. Le huitième album très attendu d\'un petit héros universel ! '),
(60, 'Lanfeust de Troy', 'L\'Ivoire du Magohamoth', 21, 42, '2016-06-15', 8, 'images/lanfeustdetroyvol1.jpg', 'Troy est un monde fascinant, où la magie intervient dans le quotidien de tous. Chacun en effet possède un pouvoir, petit ou grand, plus ou moins utile. L\'un a le don de figer l\'eau en glace, l\'autre, le pouvoir d\'émettre des pets colorés... Lanfeust, lui, sait fondre le métal d\'un seul regard. Dans son village, il est donc tout naturellement devenu apprenti chez le forgeron. Mais le contact d\'une épée venue des lointaines Baronnies révèle en lui une puissance exceptionnelle ; il ne dispose plus d\'un don unique mais d\'un pouvoir absolu et illimité. Accompagné du vieux sage Nicolède et de ses deux filles aux caractères si dissemblables, Lanfeust est emporté dans un tourbillon d\'aventures au cours desquelles il croise les plus incongrues, les plus sur surprenantes et les plus dangereuses des créatures.');

-- --------------------------------------------------------

--
-- Structure de la table `borrow_copies`
--

CREATE TABLE `borrow_copies` (
  `borrow_id` int(11) NOT NULL,
  `copy_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `rendering_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `borrow_copies`
--

INSERT INTO `borrow_copies` (`borrow_id`, `copy_id`, `customer_id`, `borrow_date`, `return_date`, `rendering_date`) VALUES
(1, 20, 4, '2017-03-01', '2017-03-22', NULL),
(2, 12, 7, '2017-03-30', '2017-04-30', NULL),
(3, 72, 13, '2017-02-06', '2017-03-06', NULL),
(4, 35, 6, '2017-04-01', '2017-04-15', '2017-04-17'),
(5, 7, 6, '2017-04-16', '2017-04-30', NULL),
(6, 40, 6, '2017-04-06', '2017-04-20', NULL),
(7, 39, 6, '2017-04-09', '2017-04-23', '2017-04-20'),
(8, 21, 6, '2017-04-03', '2017-04-17', '2017-04-14'),
(9, 30, 6, '2017-05-09', '2017-05-24', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `borrow_periodicals`
--

CREATE TABLE `borrow_periodicals` (
  `borrow_p_id` int(11) NOT NULL,
  `periodical_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `rendering_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `borrow_periodicals`
--

INSERT INTO `borrow_periodicals` (`borrow_p_id`, `periodical_id`, `customer_id`, `borrow_date`, `return_date`, `rendering_date`) VALUES
(5, 4, 4, '2017-04-07', '2017-04-22', NULL),
(7, 3, 10, '2017-04-07', '2017-04-22', NULL),
(8, 6, 6, '2017-04-02', '2017-04-16', '2017-04-14'),
(9, 7, 6, '2017-04-05', '2017-04-19', NULL),
(10, 2, 6, '2017-03-12', '2017-03-26', '2017-04-03');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(5) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Littérature'),
(2, 'Voyages'),
(3, 'Cuisine'),
(4, 'Animaux'),
(5, 'Enfance'),
(6, 'Sciences humaines et sociales'),
(7, 'Poésie'),
(8, 'Bande Dessinée'),
(9, 'Pratique'),
(10, 'Professionnel'),
(11, 'Nature et environnement'),
(12, 'People');

-- --------------------------------------------------------

--
-- Structure de la table `copies`
--

CREATE TABLE `copies` (
  `copy_id` int(5) NOT NULL,
  `book_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `copies`
--

INSERT INTO `copies` (`copy_id`, `book_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 4),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 6),
(17, 6),
(18, 7),
(19, 7),
(20, 7),
(21, 7),
(22, 7),
(23, 8),
(24, 8),
(25, 9),
(26, 9),
(27, 9),
(28, 10),
(29, 10),
(30, 11),
(31, 11),
(32, 11),
(33, 11),
(34, 12),
(35, 13),
(36, 13),
(37, 14),
(38, 14),
(39, 14),
(40, 14),
(41, 14),
(42, 14),
(43, 15),
(44, 15),
(45, 16),
(46, 16),
(47, 16),
(48, 16),
(49, 16),
(50, 17),
(51, 17),
(52, 17),
(53, 18),
(54, 18),
(55, 18),
(56, 19),
(57, 20),
(58, 21),
(59, 21),
(60, 21),
(61, 22),
(62, 22),
(63, 23),
(64, 23),
(65, 24),
(66, 25),
(67, 25),
(68, 25),
(69, 26),
(70, 26),
(71, 27),
(72, 27),
(73, 27),
(74, 27),
(75, 28),
(76, 28),
(77, 29),
(78, 30),
(79, 30),
(80, 31),
(81, 31),
(82, 32),
(83, 32),
(84, 32),
(85, 33),
(86, 33),
(87, 34),
(88, 34),
(89, 34),
(90, 35),
(91, 36),
(92, 36),
(93, 37),
(94, 38),
(95, 38),
(96, 38),
(97, 38),
(98, 39),
(99, 40),
(100, 40),
(101, 40),
(102, 41),
(103, 41),
(104, 41),
(105, 42),
(106, 42),
(107, 42),
(108, 43),
(109, 43),
(110, 44),
(111, 44),
(112, 44),
(113, 44),
(114, 44),
(115, 45),
(116, 46),
(117, 47),
(118, 47),
(119, 47),
(120, 48),
(121, 49),
(122, 49),
(123, 50),
(124, 50),
(125, 51),
(126, 51),
(127, 51),
(128, 52),
(129, 52),
(130, 52),
(131, 53),
(132, 53),
(133, 53),
(134, 54),
(135, 54),
(136, 54),
(137, 54),
(138, 55),
(139, 55),
(140, 56),
(141, 56),
(142, 57),
(143, 57),
(144, 58),
(145, 58),
(146, 59),
(147, 59),
(148, 60),
(149, 60);

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(5) NOT NULL,
  `customer_lastname` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_address` varchar(100) NOT NULL,
  `customer_cp` int(5) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_telephone` int(20) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_dateofbirth` date NOT NULL,
  `customer_password` varchar(255) NOT NULL,
  `customer_subscriptiondate` date DEFAULT NULL,
  `contact` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_cp`, `customer_city`, `customer_telephone`, `customer_email`, `customer_dateofbirth`, `customer_password`, `customer_subscriptiondate`, `contact`) VALUES
(2, 'Fakir', 'Alan', '21 rue du Corbeau', 33000, 'Bordeaux', 665459878, 'alan.fakir@gmail.com', '1982-08-21', 'alanlegrandfakir', '2017-01-14', 5),
(3, 'Berto', 'Alberte', '52 avenue du Général Leclerc', 33000, 'Bordeaux', 614253685, 'al.berto@gmail.com', '1951-02-20', 'albertograndspieds', '2017-01-14', 4),
(4, 'Gentille', 'Salome', '46 boulevard du Général De Gaulle', 33000, 'Bordeaux', 655224466, 'salome.gentille@gmail.com', '1998-11-14', 'surtoutgentille', '2017-01-15', 3),
(5, 'Gronais', 'Bruno', '72 impasse du Poteau', 33318, 'Pessac', 613467982, 'bruno.gronais@gmail.com', '1985-05-05', 'maisauxyeuxbleus', '2017-01-16', 3),
(6, 'Avaux', 'Marc', '105 avenue du Maréchal Ferrant', 33400, 'Talence', 619264855, 'avaux.marc@gmail.com', '1975-12-12', '8d542d298c83dbfb26b1e4b529c51bf9a45aced6eeac126d75a5029a56b53932', '2017-01-15', 2),
(7, 'Efuzzi', 'Armelle', '23 rue Jacques Chirac', 33290, 'Blanquefort', 647582536, 'armelle.efuzzi@gmail.com', '1967-07-15', 'laguerrecestmal', '2017-01-15', 4),
(8, 'Dore', 'Louis', '63 rue des Tournesols', 33610, 'Cestas', 615591559, 'louis.dore@gmail.com', '1990-09-01', 'jmvoixdchiotte', '2017-01-17', 2),
(9, 'Jabert', 'Philippe', '69 rue de Tintin', 33610, 'Cestas', 656594399, 'philippe.jabert@gmail.com', '1992-12-22', 'kamoulox', '2017-01-17', 4),
(10, 'Doeuf', 'John', '87 rue du Capitaine Haddock', 33000, 'Bordeaux', 626372811, 'john.doeuf@gmail.com', '1993-08-20', 'vsvoulezunwhisky', '2017-01-18', 6),
(11, 'Solar', 'Emssi', '63 rue des Paquerettes', 33400, 'Talence', 629308577, 'emssi.solar@gmail.com', '1980-02-12', 'justeundoigt', '2017-01-18', 6),
(12, 'Mimati', 'Rémi', '188 chemin de Poudlard', 33610, 'Cestas', 676153864, 'remi.mimati@gmail.com', '1959-10-13', 'lolmdrptdr', '2017-01-19', 1),
(13, 'Aire', 'Axelle', '340 autoroute des 2 Roues', 33500, 'Libourne', 646573594, 'vroum33@gmail.com', '1976-10-13', 'frien', '2017-01-19', 1),
(14, 'Vita', 'Sébastien', '4 Privet Drive', 33150, 'Cenon', 972302906, 'sebvita@easylia.com', '1980-07-31', 'alohomora', '2017-01-05', 1),
(15, 'Capot', 'Pauline', '89 avenue des Smiley', 33000, 'Bordeaux', 788201383, 'pcapot@ynov.com', '1993-01-01', 'alohomora', '2017-01-05', 1),
(17, 'Martin', 'Robert', '20 rue du Mirail', 33000, 'Bordeaux', 648261559, 'robertmartin@ynov.com', '1970-06-02', 'b1390485e7bc98ac369225388dd68b06d6c978e90ad904d234c2e698b8852aef', NULL, 5),
(18, 'Jallet', 'Benoit', '12 rue de la campagne', 33380, 'Cartelègue', 612457889, 'benoit.jallet@ynov.com', '1985-03-21', 'erty', '2017-05-08', 6),
(19, 'Coumet', 'Charles', '18 rue camaieu', 33759, 'Salignac', 612345678, 'charles.coumet@ynov.com', '1998-09-17', 'b1390485e7bc98ac369225388dd68b06d6c978e90ad904d234c2e698b8852aef', '2017-05-08', 6),
(20, 'Toulouze', 'Simon', '8 rue caca', 33300, 'Bordeaux', 645788923, 'simon.toulouze@ynov.com', '1993-01-05', '26429a356b1d25b7d57c0f9a6d5fed8a290cb42374185887dcd2874548df0779', '2017-05-08', 2),
(21, 'Pouget', 'Aldric', '02 rue caca', 33300, 'Bordeaux', 698876554, 'aldric.oudot@ynov.com', '1996-11-15', '26429a356b1d25b7d57c0f9a6d5fed8a290cb42374185887dcd2874548df0779', '2017-05-08', 5);

-- --------------------------------------------------------

--
-- Structure de la table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(5) NOT NULL,
  `employee_lastname` varchar(100) NOT NULL,
  `employee_firstname` varchar(100) NOT NULL,
  `employee_login` varchar(20) NOT NULL,
  `employee_password` varchar(255) NOT NULL,
  `employee_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_lastname`, `employee_firstname`, `employee_login`, `employee_password`, `employee_level`) VALUES
(1, 'Richard', 'Jean', 'jrich', 'jaimelirepicsou', 1),
(2, 'De Briart', 'Alphonse', 'adebr', 'bfccfb559cad45904a6d1e10acddb1689340264709f8604fbf14c4e1b157e614', 2),
(3, 'Robert', 'Bernard', 'brobe', 'indiendanslame', 4),
(4, 'Leblanc', 'Juste', 'jlebl', 'unindiendanslaville', 3),
(5, 'Carpentier', 'Achille', 'acarp', 'barberoussedu33', 2),
(6, 'Joliveur', 'Hans', 'hjoli', 'mrjeuxdemots', 4);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `objet` varchar(255) CHARACTER SET utf8 NOT NULL,
  `message` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`message_id`, `customer_id`, `employee_id`, `objet`, `message`) VALUES
(2, 6, 2, 'Retard', 'Monsieur De Briart,\r\n\r\nJ\'ai malheureusement oublié de vous rendre un livre, et suis parti en vacances, je serais de retour d\'ici 6 jours et vous le ramènerai aussitôt rentré.\r\nDésolé du dérangement occasionné.\r\n\r\nCordialement, \r\nMarc Avaux.'),
(3, 10, 2, 'Problème', 'Bonjour, \r\n\r\nMon fils âgé de 4 ans a malencontreusement déchiré une page d\'un livre que j\'ai emprunté récemment...\r\nJe l\'ai puni, mais en revanche je n\'ai pas envie de repayer le livre, comment peut-on s\'arranger s\'il vous plait ? \r\n\r\nCordialement.');

-- --------------------------------------------------------

--
-- Structure de la table `periodicals`
--

CREATE TABLE `periodicals` (
  `periodical_id` int(5) NOT NULL,
  `periodical_title` varchar(100) NOT NULL,
  `periodical_subtitle` varchar(100) DEFAULT NULL,
  `periodical_date` date NOT NULL,
  `periodical_deletedate` date NOT NULL,
  `category_id` int(5) NOT NULL,
  `periodical_cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `periodicals`
--

INSERT INTO `periodicals` (`periodical_id`, `periodical_title`, `periodical_subtitle`, `periodical_date`, `periodical_deletedate`, `category_id`, `periodical_cover`) VALUES
(1, 'Que choisir', 'Alimentation la face cachée des recettes traditionnelles', '2017-01-05', '2017-05-05', 9, 'images/quechoisir.jpg'),
(2, 'Assistantes Maternelles', 'Coucou le jeu !', '2016-11-09', '2017-03-05', 10, 'images/assmat.jpg'),
(3, 'Assistantes Maternelles', 'La sieste : un temps précieux', '2016-08-17', '2016-12-17', 10, 'images/assmat.jpg'),
(4, 'Assistantes Maternelles', 'Psychomotricité : la sécurité de base', '2016-09-15', '2017-01-15', 10, 'images/assmat.jpg'),
(5, 'Rustica', 'Je réussis mes premiers semis', '2017-01-10', '2017-05-10', 11, 'images/rustica.jpg'),
(6, 'Rustica', 'Numéro spécial lune', '2017-01-20', '2017-05-20', 11, 'images/rustica.jpg'),
(7, 'Gala', 'Spécial luxe', '2016-10-19', '2017-02-19', 12, 'images/gala.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(5) NOT NULL,
  `publisher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`) VALUES
(1, 'Robert Laffont'),
(2, 'Gallimard'),
(3, 'Geste'),
(4, 'Ada'),
(5, 'John Day'),
(6, 'Editions du Rocher'),
(7, 'Artémis'),
(8, 'Milan'),
(9, 'Grandir'),
(10, 'Larousse'),
(11, 'Desclée de Brouwer'),
(12, 'Nil'),
(13, 'Librairie générale française'),
(14, 'Flammarion'),
(15, 'Pocket'),
(16, 'Points'),
(17, 'Seghers'),
(18, 'Arléa'),
(19, 'Hachette'),
(20, 'Fleurus'),
(21, 'Gautier Languereau'),
(22, 'Les belles lettres'),
(23, 'Actes suds editions'),
(24, 'Connaissances et savoirs'),
(25, 'Christian Bourgois'),
(26, 'Folio'),
(27, 'Le Livre de Poche'),
(28, 'Librio'),
(29, 'Casterman'),
(30, 'Lucky Comics'),
(31, 'Glénat'),
(32, 'Soleil');

-- --------------------------------------------------------

--
-- Structure de la table `reserve_copies`
--

CREATE TABLE `reserve_copies` (
  `reserve_id` int(11) NOT NULL,
  `copy_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `reservation_start_date` date NOT NULL,
  `reservation_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reserve_copies`
--

INSERT INTO `reserve_copies` (`reserve_id`, `copy_id`, `customer_id`, `reservation_start_date`, `reservation_end_date`) VALUES
(1, 5, 5, '2017-03-08', '2017-03-15'),
(3, 9, 5, '2017-04-19', '2017-05-03'),
(4, 19, 12, '2017-04-23', '2017-05-07'),
(5, 10, 10, '2017-05-02', '2017-05-09'),
(6, 10, 10, '2017-05-02', '2017-05-09'),
(7, 18, 6, '2017-05-09', '2017-05-16'),
(8, 142, 6, '2017-05-09', '2017-05-16'),
(9, 134, 6, '2017-05-09', '2017-05-16');

-- --------------------------------------------------------

--
-- Structure de la table `reserve_periodicals`
--

CREATE TABLE `reserve_periodicals` (
  `reserve_p_id` int(11) NOT NULL,
  `periodical_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `reservation_start_date` date NOT NULL,
  `reservation_end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reserve_periodicals`
--

INSERT INTO `reserve_periodicals` (`reserve_p_id`, `periodical_id`, `customer_id`, `reservation_start_date`, `reservation_end_date`) VALUES
(1, 1, 6, '2017-04-04', '2017-04-18'),
(2, 2, 5, '2017-04-02', '2017-04-16'),
(3, 6, 5, '2017-04-16', '2017-04-30');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `fk_books1` (`publisher_id`),
  ADD KEY `fk_books2` (`author_id`),
  ADD KEY `fk_books3` (`category_id`);

--
-- Index pour la table `borrow_copies`
--
ALTER TABLE `borrow_copies`
  ADD PRIMARY KEY (`borrow_id`),
  ADD KEY `fk_borrow_copies1` (`copy_id`),
  ADD KEY `fk_borrow_copies2` (`customer_id`);

--
-- Index pour la table `borrow_periodicals`
--
ALTER TABLE `borrow_periodicals`
  ADD PRIMARY KEY (`borrow_p_id`),
  ADD KEY `fk_borrow_periodicals1` (`periodical_id`),
  ADD KEY `fk_borrow_periodicals2` (`customer_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `copies`
--
ALTER TABLE `copies`
  ADD PRIMARY KEY (`copy_id`),
  ADD KEY `fk_copies` (`book_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `fk_customers` (`contact`);

--
-- Index pour la table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `periodicals`
--
ALTER TABLE `periodicals`
  ADD PRIMARY KEY (`periodical_id`),
  ADD KEY `fk_periodicals` (`category_id`);

--
-- Index pour la table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Index pour la table `reserve_copies`
--
ALTER TABLE `reserve_copies`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `fk_reserve_copies1` (`copy_id`),
  ADD KEY `fk_reserve_copies2` (`customer_id`);

--
-- Index pour la table `reserve_periodicals`
--
ALTER TABLE `reserve_periodicals`
  ADD PRIMARY KEY (`reserve_p_id`),
  ADD KEY `fk_reserve_periodicals1` (`periodical_id`),
  ADD KEY `fk_reserve_periodicals2` (`customer_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT pour la table `borrow_copies`
--
ALTER TABLE `borrow_copies`
  MODIFY `borrow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `borrow_periodicals`
--
ALTER TABLE `borrow_periodicals`
  MODIFY `borrow_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `copies`
--
ALTER TABLE `copies`
  MODIFY `copy_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `periodicals`
--
ALTER TABLE `periodicals`
  MODIFY `periodical_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `reserve_copies`
--
ALTER TABLE `reserve_copies`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `reserve_periodicals`
--
ALTER TABLE `reserve_periodicals`
  MODIFY `reserve_p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books1` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_books2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_books3` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `borrow_copies`
--
ALTER TABLE `borrow_copies`
  ADD CONSTRAINT `fk_borrow_copies1` FOREIGN KEY (`copy_id`) REFERENCES `copies` (`copy_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_borrow_copies2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `borrow_periodicals`
--
ALTER TABLE `borrow_periodicals`
  ADD CONSTRAINT `fk_borrow_periodicals1` FOREIGN KEY (`periodical_id`) REFERENCES `periodicals` (`periodical_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_borrow_periodicals2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `copies`
--
ALTER TABLE `copies`
  ADD CONSTRAINT `fk_copies` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `fk_customers` FOREIGN KEY (`contact`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `periodicals`
--
ALTER TABLE `periodicals`
  ADD CONSTRAINT `fk_periodicals` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reserve_copies`
--
ALTER TABLE `reserve_copies`
  ADD CONSTRAINT `fk_reserve_copies1` FOREIGN KEY (`copy_id`) REFERENCES `copies` (`copy_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserve_copies2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reserve_periodicals`
--
ALTER TABLE `reserve_periodicals`
  ADD CONSTRAINT `fk_reserve_periodicals1` FOREIGN KEY (`periodical_id`) REFERENCES `periodicals` (`periodical_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserve_periodicals2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
