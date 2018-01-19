-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 19 jan. 2018 à 15:41
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ARTTITRE` varchar(45) NOT NULL,
  `ARTCHAPO` text,
  `ARTCONTENU` text NOT NULL,
  `ARTDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `ARTTITRE`, `ARTCHAPO`, `ARTCONTENU`, `ARTDATE`) VALUES
(16, 'Premier article', 'Premier chapo', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Lorem ipsum dolor sit amet&comma; consectetur adipiscing elit&period; Ut ut aliquet diam&period; Praesent eget neque pulvinar&comma; vestibulum orci dictum&comma; interdum urna&period; Proin ante nisl&comma; pretium a gravida non&comma; rutrum id erat&period; Praesent et mauris posuere&comma; hendrerit ante nec&comma; imperdiet tortor&period; Proin condimentum&comma; ligula sit amet ultricies condimentum&comma; ipsum diam pulvinar dolor&comma; eu congue est mi eu massa&period; Nullam diam mauris&comma; pellentesque sed posuere aliquam&comma; blandit et tortor&period; Suspendisse elementum turpis a erat ullamcorper&comma; nec auctor sapien semper&period; Sed commodo mi metus&comma; id dignissim justo fermentum vel&period; Cras molestie quis dolor dapibus tincidunt&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:07:02'),
(17, 'Deuxième article', 'Deuxième chapo', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Nunc bibendum est eros&comma; convallis euismod magna aliquet eu&period; In fermentum vitae diam vel rhoncus&period; Aliquam erat volutpat&period; Nunc lacinia neque eget lorem tincidunt pulvinar&period; Ut pretium fringilla arcu&comma; commodo pellentesque lacus&period; Aliquam felis risus&comma; interdum ut nisl ac&comma; pulvinar accumsan odio&period; Fusce ut sem eu est luctus semper vel vitae odio&period; Nunc commodo&comma; ante id sodales tempor&comma; ante urna volutpat nibh&comma; hendrerit consectetur tortor odio eget dui&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:07:41'),
(18, 'article trois', 'chapo trop', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Proin scelerisque tortor id egestas lacinia&period; Quisque ex massa&comma; mollis non enim eu&comma; fermentum pulvinar orci&period; Integer tincidunt laoreet massa&comma; eu elementum metus scelerisque vel&period; Donec nisi lorem&comma; mollis in suscipit in&comma; dapibus nec tellus&period; Donec vel tincidunt ante&period; Maecenas tempor orci nec dui tincidunt laoreet&period; Praesent vel porttitor tellus&period; Cras leo massa&comma; facilisis non urna a&comma; rhoncus fermentum nulla&period; Morbi porttitor viverra interdum&period; Morbi et auctor leo&period; Pellentesque lacus arcu&comma; aliquam vitae eros condimentum&comma; tristique lobortis nunc&period; Duis bibendum porta sem a aliquam&period; Suspendisse a augue felis&period; Mauris in ipsum sed turpis venenatis condimentum&period; Nullam non purus eu sem vehicula faucibus&period; Vestibulum faucibus mauris vitae venenatis sodales&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:09:03'),
(19, 'article quatre', 'chapo quatre', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Sed varius lacinia bibendum&period; Mauris ut dui eu ex scelerisque elementum at non neque&period; Duis est eros&comma; semper eget sapien et&comma; sollicitudin viverra nibh&period; Phasellus eu tincidunt ante&period; Praesent tincidunt&comma; eros nec mattis viverra&comma; odio sem blandit ante&comma; vel condimentum massa orci vel diam&period; Fusce at turpis vel massa feugiat scelerisque&period; Mauris in augue ipsum&period; Pellentesque a erat consectetur&comma; blandit magna eu&comma; cursus nisl&period; Curabitur sit amet nisl ullamcorper&comma; placerat odio eget&comma; consectetur mauris&period; Ut at imperdiet velit&period; Mauris tellus arcu&comma; tempus elementum vulputate aliquet&comma; finibus a diam&period; Pellentesque porta nisl a auctor blandit&period; Praesent eu sem odio&period; Aliquam varius odio vel urna tempor tristique&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:09:56'),
(20, 'article cinq', 'chapo cinq', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Praesent interdum neque ut tortor iaculis ullamcorper&period; Proin ac purus at velit ultricies bibendum&period; Suspendisse tincidunt diam non orci congue vulputate&period; Suspendisse ullamcorper&comma; lorem aliquet pellentesque convallis&comma; diam nibh congue velit&comma; ornare interdum felis magna sit amet mi&period; Nullam egestas magna non metus pellentesque&comma; in facilisis nunc aliquet&period; Nulla facilisi&period; In vel maximus augue&period; Curabitur dapibus laoreet velit id aliquet&period; Praesent et velit diam&period; Aliquam fermentum diam at tempor lacinia&period; Praesent at orci sed turpis accumsan gravida vel vitae nisl&period; Lorem ipsum dolor sit amet&comma; consectetur adipiscing elit&period; Aenean dapibus felis mi&comma; vel ultricies diam semper ac&period; Vivamus eget metus pharetra&comma; aliquam ipsum et&comma; lobortis metus&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:10:45'),
(21, 'article six', 'chapo six', '&lt;p&gt;&lt;span style&equals;\"font-family&colon; \'Open Sans\'&comma; Arial&comma; sans-serif&semi; text-align&colon; justify&semi;\"&gt;Proin scelerisque tortor id egestas lacinia&period; Quisque ex massa&comma; mollis non enim eu&comma; fermentum pulvinar orci&period; Integer tincidunt laoreet massa&comma; eu elementum metus scelerisque vel&period; Donec nisi lorem&comma; mollis in suscipit in&comma; dapibus nec tellus&period; Donec vel tincidunt ante&period; Maecenas tempor orci nec dui tincidunt laoreet&period; Praesent vel porttitor tellus&period; Cras leo massa&comma; facilisis non urna a&comma; rhoncus fermentum nulla&period; Morbi porttitor viverra interdum&period; Morbi et auctor leo&period; Pellentesque lacus arcu&comma; aliquam vitae eros condimentum&comma; tristique lobortis nunc&period; Duis bibendum porta sem a aliquam&period; Suspendisse a augue felis&period; Mauris in ipsum sed turpis venenatis condimentum&period; Nullam non purus eu sem vehicula faucibus&period; Vestibulum faucibus mauris vitae venenatis sodales&period;&lt;&sol;span&gt;&lt;&sol;p&gt;', '2018-01-16 10:11:19');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ROLE_SUPERADMIN', NULL),
(2, 'ROLE_ADMIN', NULL),
(3, 'ROLE_MODERATEUR', NULL),
(4, 'ROLE_REDACTEUR', NULL),
(5, 'ROLE_UTILISATEUR', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `USERNAME` varchar(45) NOT NULL,
  `USERFNAME` varchar(45) DEFAULT NULL,
  `USERMAIL` varchar(255) NOT NULL,
  `USERPASSWORD` char(40) NOT NULL,
  `USERDATEINS` datetime DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `USERNAME`, `USERFNAME`, `USERMAIL`, `USERPASSWORD`, `USERDATEINS`, `T_ROLES_ID_ROLE`) VALUES
(7, 'BOSSON', 'Gauthier', 'ergerge@fezz.com', '07f620aa6456a9521a431a79f245aa9cdc62f408', NULL, 1),
(10, 'DA COSTA', 'ThÃ©o', 'ezfrz@gmail.com', '154d64caa15e5e01cb5508c08c344d1c23faeb71', NULL, 5),
(11, 'CORDIER', 'Rodolphe', 'dolphy@gmail.com', '96486623c5ddd15a69803c32a9dadf0e202e91a5', NULL, 5),
(16, 'ertret', 'retertre', 'ertretret', '7ade3165c89f62480e4d311180e90c2bb7be49af', NULL, 5),
(17, 'cordiere', 'rudolf', 'aunezrouge@noel.com', '48725f000d18a7f151054ba7632d7f97e9594047', NULL, 5),
(18, 'RATEL', 'Hugo', 'rouquin@satan.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', NULL, 5),
(19, 'HOUDAN', 'Yoann', 'possession@gmail.com', '6643521711328a1e282daf5a5da43970eb11a089', NULL, 5),
(20, 'bosson', 'Gauthier', '16987@csmrouen.net', '9cf95dacd226dcf43da376cdb6cbba7035218921', NULL, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
