-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 23 mars 2022 à 15:52
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tronedefer`
--

-- --------------------------------------------------------

--
-- Structure de la table `bdd_questionnaire`
--

CREATE TABLE `bdd_questionnaire` (
  `id_questionnaire` int(11) NOT NULL,
  `nom_questionnaire` varchar(255) NOT NULL,
  `maison_questionnaire` varchar(255) NOT NULL,
  `localisation_questionnaire` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bdd_questionnaire`
--

INSERT INTO `bdd_questionnaire` (`id_questionnaire`, `nom_questionnaire`, `maison_questionnaire`, `localisation_questionnaire`) VALUES
(1, "1", "1", "1"),
(2, "52", "2", "6"),
(3, "4", "10", "5"),
(4, "14", "7", "4"),
(5, "61", "14", "2"),
(6, "11", "11", "9"),
(7, "11", "1", "4"),
(8, "Sansa Stark", "Maison Martell", "Les Îles de Fer"),
(9, "Sansa Stark", "Maison Martell", "Les Îles de Fer");

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `id_localisation` int(11) NOT NULL,
  `continent` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `localisation`
--

INSERT INTO `localisation` (`id_localisation`, `continent`, `region`) VALUES
(1, "Westeros", "Terres de la Couronne"),
(2, "Westeros", "Le Nord"),
(3, "Westeros", "Terres de l'Orage"),
(4, "Westeros", "Terres de l'Ouest"),
(5, "Westeros", "Le Conflans"),
(6, "Westeros", "Le Bief"),
(7, "Westeros", "Les Îles de Fer"),
(8, "Westeros", "Dorne"),
(9, "Westeros", "Le Val d'Arryn");

-- --------------------------------------------------------

--
-- Structure de la table `maison`
--

CREATE TABLE `maison` (
  `id_maison` int(11) NOT NULL,
  `nom_maison` varchar(255) NOT NULL,
  `embleme` varchar(255) NOT NULL,
  `devise` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maison`
--

INSERT INTO `maison` (`id_maison`, `nom_maison`, `embleme`, `devise`) VALUES
(1, "Maison Targaryen", "Un dragon tricéphale rouge, crachant du feu, sur champ noir.", "« Feu et Sang »"),
(2, "Maison Stark", "Un Loup Géant gris sur champ de neige.", "« L'hiver vient »"),
(3, "Maison Baratheon", "Un cerf noir couronné sur champ d'or.", "« Nôtre est la fureur »"),
(4, "Maison Lannister", "Un lion d'or rugissant sur champ écarlate.", "« Je Rugis ! »"),
(5, "Maison Tully", "Une truite sautant argentée sur un champ rouge et bleu.", "« Famille, Devoir, Honneur »"),
(6, "Maison Tyrell", "Une rose d'or sur un champ vert.", "« Plus haut, plus fort »"),
(7, "Maison Greyjoy", "Une seiche d'or sur fond noir.", "« Nous ne semons pas »"),
(8, "Maison Martell", "Un soleil rouge transpercé par une lance d'or, sur un fond orange.", "« Insoumis, Invaincus, Intacts »"),
(9, "Maison Arryn", "Un faucon s'élevant devant un croissant de lune sur un champ bleu.", "« Aussi haute qu'Honneur »"),
(10, "Maison Frey", "Deux tours grises en pierre sur un champ gris surmontant d'eau bleue.", "« Toujours unis »"),
(11, "Maison Bolton", "Un homme rouge écorché la tête à l'envers sur une croix blanche en forme de X, sur un fond noir.", "« Nos lames sont acérées »"),
(12, "Maison Tarly", "Un chasseur en marche, rouge sur champ vert.", "« Premier au combat »"),
(13, "Maison Mormont", "Un ours noir rampant sur un champ blanc entouré de vert.", "« Ici nous demeurons »"),
(14, "Maison Karstark", "Une échappée blanche sur fond noir.", "« Le Soleil de l'Hiver »");

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE `personnage` (
  `id_personnage` int(11) NOT NULL,
  `nom_personnage` varchar(50) NOT NULL,
  `sexe` varchar(8) DEFAULT NULL,
  `biographie` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personnage`
--

INSERT INTO `personnage` (`id_personnage`, `nom_personnage`, `sexe`, `biographie`) VALUES
(1, "Viserys Targaryen", "Masculin", "Viserys est le fils de l'ancien roi, Aerys II Targaryen, le Roi Fou, dépossédé de son trône par l'Usurpateur Robert Baratheon. Viserys est un jeune homme cruel et vain qui veut à tout prix reconquérir le trône de ses ancêtres. Pour servir ses intérêts, il n'hésite pas à sacrifier ceux de sa sœur, Daenerys."),
(2, "Daenerys Targaryen", "Féminin", "Daenerys est la fille du Roi Fou Aerys II Targaryen et de la reine Rhaella Targaryen ainsi que la jeune sœur de Rhaegar et Viserys Targaryen. Son père, atteint de folie, fut dépossédé de son trône par Robert Baratheon, dit l'Usurpateur. À la suite de ce coup d'État, la princesse Daenerys et son frère aîné, le prince Viserys, ont dû fuir et vivre en exil dans les Cités libres à Essos, le continent à l'est de Westeros, au-delà du Détroit. Elle est officiellement la dernière représentante de la Maison Targaryen, les origines de Jon Snow n'étant connues que par Bran Stark et Samwell Tarly."),
(3, "Eddard Stark", "Masculin", "Patriarche de sa maison, gouverneur du nord et seigneur de Winterfell, Ned est un homme du nord jusqu'au bout des moustaches : discipliné, puissant et doté d'un sens de l\'honneur et de la justice. Mais, sous cette dureté apparente, se cache un époux et un père aimant. Il voue une loyauté absolue au roi Robert, son ami d'enfance, qu'il a aidé à conquérir le trône, le rendant ainsi célèbre dans tout Westeros et même au-delà du mur. Il est respecté par de nombreux admirateurs dans le Nord. Hanté par la guerre et las de toutes ces années de combat, il est pourtant forcé de quitter les siens pour servir le roi Robert à la cour comme Main du Roi à Port-Réal, une décision lourde de conséquences."),
(4, "Catelyn Stark", "Féminin", "Née Tully, elle est l'épouse de Lord Eddard Stark et la mère de ses cinq enfants légitimes : Robb, Sansa, Arya, Bran et Rickon. Elle a grandi dans le sud, dans le Conflans. Jeune, elle est d'abord promise à Brandon Stark, frère aîné d'Eddard, mais, à sa mort, elle épouse Ned afin de lier leurs deux maisons. Sa finesse et sa franchise lui ont permis de devenir la fidèle conseillère de son époux, qu'elle aime profondément. Catelyn éprouve un attachement très fort à ses enfants et à sa famille et le montre à de nombreuses reprises. Néanmoins elle hait le bâtard de Eddard Stark, Jon Snow et ne le considère pas comme son fils. Cette haine créé chez elle un profond sentiment de culpabilité."),
(5, "Robb Stark", "Masculin", "C'est le fils aîné d'Eddard Stark et de Catelyn Tully et est l'héritier de la maison Stark à Winterfell et le Nord. Ses amis et ses ennemis l'appellent « Le Jeune Loup ». Il a deux sœurs, Sansa et Arya; deux frères, Bran et Rickon, et un cousin, Jon Snow. Il était souvent accompagné de son loup géant Vent Gris, qui l'accompagne toujours au champ de bataille."),
(6, "Sansa Stark", "Féminin", "Sansa est la fille aînée d'Eddard et Catelyn Stark ainsi que la jeune cadette de Robb et la sœur aînée de Arya, Bran et Rickon. Elle est également la cousine de Jon Snow."),
(7, "Arya Stark", "Féminin", "Troisième enfant et seconde fille d'Eddard et Catelyn Stark, elle est présumée morte pour la plupart dans Westeros, Arya chérit une liste de tous ceux qu'elle désire tuer, comme vengeance pour elle-même et sa famille. Après la mort de son père, de sa mère, de son frère et de sa tante, Arya est partie à Braavos pour redémarrer une nouvelle vie. Elle a recherché son protecteur de Harrenhal, Jaqen H'ghar, qu'elle a trouvé dans la Demeure du Noir et du Blanc où elle a subi une formation rigoureuse pour devenir une sans-visage mais a dû lutter pour renoncer à sa vie passée. Peu disposée à assassiner Lady Cigogne comme demandé, Arya s'est opposée à la gamine abandonnée, qu'elle a fini par tuer. Impressionné, Jaqen accepte Arya comme une sans-visage, mais elle choisit de conserver son identité Stark et quitte Braavos. Une fois de retour à Westeros, Arya accomplit sa promesse de tuer Walder Frey."),
(8, "Brandon Stark", "Masculin", "Second fils d'Eddard et Catelyn Stark, il devient paralysé après que Jaime Lannister le pousse du haut d'une tour. Bran s'est échappé du Sac de Winterfell avec son frère Rickon, Hodor, Osha, et son loup Été. Il a pris la direction du nord avec Hodor, Été, et Meera et Jojen Reed pour accomplir les visions qu'il a partagé avec ce dernier. Jojen n'a pas survécu au voyage, mais Bran a réussi à localiser la Corneille à trois yeux, qui l'a pris sous son aile. La nouvelle résidence de Bran a été écourtée lorsqu'il a été touché par le Roi de la Nuit durant une vision, cassant ainsi la protection magique de la grotte. L'armée des morts vient alors pour Bran, qui s'échappe de justesse grâce à Meera et les sacrifices de Hodor, Été et Feuille. Avec l'aide de son oncle Benjen, lui et Meera voyagent jusqu'au mur. Après la mort de la corneille, Bran est désormais devenu la nouvelle Corneille à trois yeux."),
(9, "Rickon Stark", "Masculin", "Il est le dernier enfant, et troisième fils, d'Eddard et Catelyn Stark ainsi que le jeune frère de Robb, Sansa, Arya et Bran. Il est également le cousin de Jon Snow."),
(10, "Benjen Stark", "Masculin", "Frère cadet de Lord Eddard Stark ainsi que de Brandon et de Lyanna, il était Premier Patrouilleur de la Garde de Nuit ; Benjen Stark est également le héros de son neveu Jon Snow. Lors d'une expédition au nord du mur, il a été attaqué par des marcheurs blancs puis laissé pour mort. Les Enfants de la Forêt l'ont trouvé et ont stoppé la magie censée le transformer en Spectre, et il porte maintenant une cicatrice sur tout le visage faisant penser à un Marcheur Blanc. Quelques années plus tard, Benjen sauve Meera et son neveu Bran d'une attaque de spectres après avoir fui le Roi de la Nuit. Il les escorte jusqu'au Mur, mais ne pouvant le traverser, il s'engage à aider leur combat d'une autre manière."),
(11, "Jon Snow", "Masculin", "Jon est le fils de Lyanna Stark et de Rhaegar Targaryen, qui s'étaient mariés en secret à Dorne, mais seuls son cousin Bran Stark et son ami Samwell Tarly (informé par Bran) le savent, et tout le reste du monde (y compris lui-même) le pense fils d'Eddard Stark et d'une prostituée. Il vit parmi ses cousins et cousines, qu'il pense être ses demi-frères et demi-sœurs, à Winterfell, jusqu'à rejoindre la Garde de Nuit tandis qu'Eddard est nommé Main du Roi. Son oncle Benjen Stark, également membre de la Garde de Nuit, disparaît mystérieusement, et Jon ne peut s'appuyer que sur ses nouvelles connaissances à Châteaunoir comme Samwell Tarly. Il passe du temps avec les Sauvageons, et tombe amoureux d'Ygrid. Mais le peuple d'Ygrid et le sien sont contraints de s'affronter, et la Sauvageonne meurt durant le combat. Il devient Lord Commandant de la Garde de Nuit, mais est plus tard assassiné par certains de ses hommes, hostiles à ses mesures d'alliance avec le peuple d'au-delà du Mur. Il est ressuscité par Mélisandre, quitte la Garde de Nuit, et lève une armée pour reconquérir Winterfell, avant d'être nommé Roi du Nord."),
(12, "Robert Baratheon", "Masculin", "Surnommé l'Usurpateur, Robert était le suzerain de la Maison Baratheon et le roi des Sept Couronnes depuis l'an 283 jusqu'à sa mort en l'an 298. Il a été couronné après la victoire des rebelles dans la guerre de l'Usurpateur, qui mit fin au règne des Targaryen."),
(13, "Stannis Baratheon", "Masculin", "Il est le frère cadet du roi Robert Baratheon, et le seigneur de Peyredragon. C'est un homme extrêmement rigide et austère qui fait valoir ses droits au Trône de Fer à la mort de son frère. Rancunier, il ne pardonne aucun affront, même ancien, ce qui a lentement terni ses relations avec ses frères et conduit à l'obsession pour la possession d’Accalmie alors qu'un royaume entier s'ouvre à lui."),
(14, "Renly Baratheon", "Masculin", "Renly Baratheon est le plus jeune des trois frères de la maison Baratheon. Il ressemble énormément à Robert lorsqu'il était jeune."),
(15, "Joffrey Baratheon", "Masculin", "Officiellement le fils de Cersei Lannister et de Robert Baratheon, roi des Sept Couronnes, il se trouve être en réalité le fils biologique et incestueux de Cersei et de son frère jumeau Jaime Lannister. Il devient roi à la mort de son « père »."),
(16, "Myrcella Baratheon", "Féminin", "Myrcella Baratheon est la fille légale de Robert Baratheon, roi de Westeros, et de son épouse Cersei Lannister, mais est en réalité la fille biologique et incestueuse du frère jumeau de sa mère, Jaime Lannister. Elle est également la sœur des rois Joffrey et Tommen Baratheon, aussi fils de Jaime. Pour s'assurer une alliance avec la famille Martell, son oncle Tyrion Lannister, Main du roi dans la saison 2, la promet à Trystan Martell et l'envoie à Dorne, pour qu'elle puisse épouser Trystan. Elle y séjourne depuis lors, jusqu'à recevoir la visite inattendue de son « oncle » Jaime qui vient la chercher. Il se retrouve prisonnier de la famille Martell avec Bronn, son homme de main. Finalement, Doran Martell et Jaime Lannister se mettent d'accord, elle peut alors repartir avec son oncle qui voulait la ramener à Port-Réal, mais elle meurt sur le bateau suite à un empoisonnement d'Ellaria Sand."),
(17, "Tommen Baratheon", "Masculin", "C'est le fils légitime de Robert Baratheon et Cersei Lannister, mais est en réalité le fils biologique du frère jumeau de sa mère, Jaime Lannister. Il est également le frère cadet du roi Joffrey et de la princesse Myrcella Baratheon. Après la mort de son frère, il devient roi sous le nom de Tommen Ier Baratheon puis épouse Margaery Tyrell, alors veuve de Joffrey."),
(18, "Tywin Lannister", "Masculin", "Il était le seigneur de Castral Roc et par la même occasion, Gouverneur de l'Ouest. Fils du défunt Tytos Lannister, il est dur et inflexible, surtout depuis la mort de son épouse, et possède une fortune colossale ainsi que de fortes armées, ce qui lui donne la réputation d'être le plus puissant seigneur des Sept Couronnes. Il fut la Main du roi Aerys le Dément avant de se retirer et de regagner ses terres. Il est le père de Cersei, de Jaime et de Tyrion, dit le Gnome, qu'il déteste pour sa difformité et parce que sa naissance a coûté la vie à son épouse."),
(19, "Kevan Lannister", "Masculin", "Kevan est le frère cadet de Tywin Lannister ainsi que le père de Lancel. Il est en outre l'oncle de Jaime, Cersei et Tyrion. Lors de la Guerre des Cinq Rois, il participe aux combats dans le Nord contre Robb Stark aux cotés de son frère. Après la mort de Tywin tué par son neveu, il est nommé Main du Roi de Tommen Baratheon. Opposé à l'influence que Cersei exerce sur l'ensemble du conseil restreint, Kevan mourra de même que les Tyrell lors de la destruction du Grand Septuaire de Baelor."),
(20, "Jaime Lannister", "Masculin", "Jaime est le fils de lord Tywin Lannister ainsi que le frère jumeau de l'actuelle reine, Cersei. Il a aussi un frère cadet, Tyrion Lannister, qu'il est le seul à ne pas rejeter parmi les Lannister. En outre, il est le père de Joffrey, Myrcella et Tommen, qui sont issus d\'une relation incestueuse avec sa sœur. C'est un homme de quarante ans, extrêmement séduisant et sûr de lui. Il est considéré comme l'une des meilleures lames du royaume. Il renonce à tous ses titres et droits de succession en rejoignant la Garde Royale, dont il devient le Lord Commandant après le départ de Barristan Selmy. Il se fait plus tard couper la main droite par Locke, alors qu'il est en route vers Port-Real en compagnie de Brienne de Torth. Après cette douloureuse expérience, il tente bien que mal de se battre de la main gauche, mais il perd beaucoup de ses talents. Sous Tommen I Baratheon, il est contraint de quitter la Garde Royale, renonçant ainsi à son engagement sacré. Après le couronnement de sa sœur, devenue Cersei Ière, il ne retrouve pas sa place, mais devient son principal lieutenant. Après le Pourparler à Port-Réal et la décision de Cersei Lannister de ne pas envoyer les Armées Lannister aider les forces des Maisons Stark et Targaryen, il se décide à la quitter et de rejoindre le Nord pour la Grande Guerre. Là, il n'est pas accueilli chaleureusement par Daenerys Targaryen, mais Brienne de Torth se porte garante pour lui. Il prend part au combat avec l'armée des vivants, qui gagne la guerre contre le Roi de la Nuit. Après la victoire, il retrouve Brienne et deviennent amants. Mais la vie de Cersei est menacée et Jaime ne peut s'empêcher d'aller à son secours. Il meurt avec sa sœur dans l'écroulement du Donjon Rouge."),
(21, "Cersei Lannister", "Féminin", "Fille unique de Tywin Lannister, Cersei a été impliquée dans une relation incestueuse avec son frère jumeau Jaime, avant même qu'elle soit mariée à Robert Baratheon. Son frère est également le véritable père de ses trois enfants Joffrey, Myrcella et Tommen."),
(22, "Tyrion Lannister", "Masculin", "Tyrion Lannister est le troisième enfant de Lord Tywin Lannister et de Lady Joanna Lannister, il est donc le frère de Cersei et Jaime Lannister. La mère de Tyrion mourut en accouchant de celui-ci, ce sa sœur, son père, et son frère le détestèrent, même si ce-dernier est plus clément avec lui. Le fait qu'il soit nain n'améliora pas les choses, on le considérait (et considère toujours pour certains) comme un monstre qui ne mérite pas de vivre. Lors d'une visite de la Maison Martell, peu de temps après la naissance de Tyrion, Cersei présente ce dernier à Oberyn et Elia Martell et s'amuse à lui pincer le sexe pour lui faire mal. Elle finit par le laisser tranquille après l'intervention de Jaime non sans informer les enfants Martell de la mort prochaine de Tyrion à cause de sa malformation."),
(23, "Hoster Tully", "Masculin", "Mort après une longue maladie, Hoster était le père de Catelyn, Lysa et Edmure, et le grand-père de Robb, Sansa, Arya, Bran, Rickon et Robin. Il est également le frère de Brynden Tully, dit « Le Silure »."),
(24, "Brynden Tully", "Masculin", "Brynden Tully est le petit frère de Hoster Tully. Il est connu dans tout Westeros pour ses talents de commandant lors de plusieurs guerres ayant eu lieu bien avant la chute des Targaryen. Son frère Hoster lui arrange un mariage avec une noble famille mais Brynden met fin aux fiançailles ce qui met en colère son frère. Par la suite, Hoster essayera de nouveau de le marier à plusieurs reprises, sans succès. Brynden restera finalement célibataire."),
(25, "Edmure Tully", "Masculin", "Lord Edmure est le troisième enfant et unique fils de Lord Hoster Tully et Minisa Tully devenant ainsi l'héritier de Vivesaigues. Sa mère mourra en couches durant sa petite enfance. Il grandit à Vivesaigues avec ses deux sœurs, Lysa et Catelyn, et le pupille de son père, Petyr. C'est d'ailleurs lui qui lui donnera son surnom Littlefinger."),
(26, "Olenna Tyrell", "Féminin", "Olenna Tyrell, née Redwyne, est un personnage récurrent dans les troisième, quatrième, cinquième, sixième et septième saisons de Game of Thrones. Matriarche de la Maison Tyrell, Lady Olenna, surnommée « la Reine des épines », n'est pas gênée de partager ses opinions. Elle a lutté sans relâche pour libérer ses petits-enfants de la prison, même après avoir découvert que le Grand Moineau était incorruptible. Après l'acte de guerre de Cersei qui a tué Margaery, Loras et Mace, Olenna s'est rendue à Dorne, où elle a conclu une alliance avec Ellaria Sand pour soutenir Daenerys Targaryen."),
(27, "Mace Tyrell", "Masculin", "Seigneur de Hautjardin, Gouverneur du Sud, et père de la reine Margaery et de Ser Loras Tyrell, Mace Tyrell a choisi de soutenir Renly Baratheon dans la Guerre des Cinq Rois, puis, après la mort de ce dernier, il s'est allié aux Lannister par l'intermédiaire de Petyr Baelish. Il a servi comme Maître des navires pour le Conseil restreint. Lorsque Cersei a pris en charge le Conseil, elle a ajouté le poste de Grand Argentier à ses responsabilités et a envoyé Mace à Braavos pour renégocier les termes du contrat du royaume avec la Banque de Fer. En rentrant à Westeros il apprend que Margaery et Loras ont été emprisonnés. Il travaille alors avec les Lannister et rassemble les forces Tyrell pour les libérer. Mace est tué avec ses enfants lors de l'explosion du grand septuaire de Baelor."),
(28, "Margaery Tyrell", "Féminin", "Fille unique de Mace Tyrell, Margaery, était aussi intelligente que belle. Veuve de Renly Baratheon et du roi Joffrey, elle a épousé le frère de ce dernier, Tommen, afin de maintenir l'alliance des Tyrell avec les Lannister. Elle a été mise en détention pour faux témoignage devant les dieux après avoir menti pour défendre son frère Loras contre les accusations de perversion. Après avoir établi une relation avec le Grand Moineau, Margaery a persuadé son mari d'accepter une alliance entre la Couronne et la Foi. Elle a ensuite convaincu son frère Loras d'avouer ses crimes et de jurer à renoncer à son héritage lors de son procès en échange de sa liberté. Margaery fait partie des personnes tuées quand le grand septuaire a explosé."),
(29, "Loras Tyrell", "Masculin", "Ser Loras, dit « Le Chevalier des Fleurs », était un jouteur très populaire de Westeros et l'amant secret de Renly Baratheon, qu'il a convaincu de s'engager dans la Guerre des Cinq Rois et pour qui il servait de Garde Royale. Après le meurtre de Renly, Loras a combattu pour les Lannister lors de la Bataille de la Néra. Il prit, sans le savoir, un espion de Littlefinger, Olyvar, pour amant. Cersei a orchestré l'arrestation de Loras par la Foi Militante pour nuire à l'influence des Tyrell sur Port-Réal. L'arrestation de l'héritier de Hautjardin a également invité sa sœur la reine, qui a été emprisonnée pour faux témoignage pour protéger son frère. Émotionnellement et physiquement affaibli durant son incarcération, Loras a accepté de renoncer au nom Tyrell et à tout héritage. Il meurt avec son père et sa sœur lors de la destruction du Grand Septuaire de Baelor."),
(30, "Balon Greyjoy", "Masculin", "Balon Greyjoy est le seigneur des Îles de Fer ainsi que de la Maison Greyjoy. Il est le frère aîné de Euron et Aeron Greyjoy. Balon épousa Alannys Harloi issue de la Maison Harloi, vassale de celle des Greyjoy. ils eurent ensemble quatre enfants : Rodrik, Maron, Yara et Theon Greyjoy."),
(31, "Euron Greyjoy", "Masculin", "Euron est le frère cadet de Balon Greyjoy, roi des Îles de Fer, et d'Aeron Greyjoy, ainsi que l'oncle de Theon et de Yara. Après une longue absence des Îles de Fer due à ses voyages autour du monde, il revient sur sa terre natale et tue son frère, jugeant son règne comme étant un échec, avant de se faire nommer successeur par l'assemblée. Il reçoit alors le titre de nouveau Roi des Îles de Fer."),
(32, "Aeron Greyjoy", "Masculin", "Aeron est le petit frère de Balon et d'Euron Greyjoy. Une fois son frère aîné, Balon, monté sur le Trône de Sel, il choisit de se consacrer à la religion, et devient prêtre du Dieu Noyé."),
(33, "Yara Greyjoy", "Féminin", "Yara est la fille de Balon Greyjoy et la sœur aînée de Theon. Elle a été élevée par Balon comme son héritière et commande son propre navire. Elle est très populaire parmi les Fers-nés et dotée d'un caractère bien trempé. Elle convoite le Trône de Sel contre son oncle Euron Greyjoy après qu'il assassine son père. Elle s'est alors rendue à Meereen avec son frère Theon afin de conclure une alliance avec avec la reine des dragons, Daenerys Targaryen, et la soutient dans sa campagne de conquête du Trône de Fer. Elle commande un navire appelé Vent noir."),
(34, "Theon Greyjoy", "Masculin", "Theon devient « pupille » de Lord Eddard Stark à la fin de la Rébellion Greyjoy. En réalité, c'était un otage des Stark. Lors de ses années comme pupille, il ne se lie d'amitié qu'avec Robb Stark, le fils aîné de Lord Eddard, du même âge que lui. Lors de la Guerre des Cinq Rois, alors qu'il combat aux côtés de Robb, ce dernier le renvoie chez lui pour requérir l'aide des Fer-nés. Cependant, il se rend compte qu'il n'est plus considéré comme un véritable Fer-né. Il décide alors de trahir Robb et s'empare de Winterfell. Peu de temps, Winterfell est reprit par les Bolton et Theon est torturé par Ramsay Snow. Il devient alors « Schlingue » et esclave de Ramsay. Plus tard, grâce à Sansa Stark, Theon redevient lui-même et l'aide à s'échapper de Winterfell. Après avoir sauvé Sansa, Theon apprend la mort de son père des mains de son propre frère : Euron Greyjoy. Theon et Yara prennent la fuite et forgent une alliance avec Daenerys Targaryen à Meereen. Après une lourde défaite, Theon rassemble les derniers fer-nés et sauve Yara des mains d'Euron. Il rejoint ensuite les Stark pour combattre les Marcheurs Blancs."),
(35, "Doran Martell", "Masculin", "Doran Martell est le Prince de Dorne ainsi que le patriarche de la Maison Martell. Refusant à tout prix de déclencher une guerre contre les Lannister, il se fait détester petit à petit de son peuple qui voyait comme un signe de faiblesse le fait de ne venger ni Elia Martell, ni Oberyn Martell, ses deux frères et sœurs. Ellaria Sand décida de tuer Doran, au moment même où ce dernier apprenait la nouvelle de l'assassinat de Myrcella Baratheon. Le prince n'a pas l'occasion de se défendre, qu'Ellaria le poignarde et lui dit qu'il n'est pas dornien mais rien d'autre qu'un homme faible tandis que ce dernier agonise."),
(36, "Oberyn Martell", "Masculin", "Le prince Oberyn Nymeros Martell, surnommé la « Vipère Rouge », était le frère cadet du prince régent de Dorne, Doran Martell. Il avait huit filles bâtardes, appelées les Aspics des Sables, dont deux filles de sa dernière amante de cœur, Ellaria Sand."),
(37, "Ellaria Sand", "Fémimin", "Ellaria Sand est la maîtresse d'Oberyn Martell ainsi que la mère de deux Aspics des Sables. Elle fut anéantie par la perte de son amant, qui mourut dans le duel judiciaire contre Gregor Clegane et ne pensa dès lors qu'à le venger. Ellaria cherche pour cela à déclencher une guerre contre la Maison Lannister, qu'elle estime responsable de ce qui est arrivé à Oberyn. Elle n'hésite pas à assassiner la jeune Myrcella Baratheon (présente à Dorne pour épouser Trystan Martell), pour parvenir à ses fins. Elle critique en outre la faiblesse du prince Doran Martell, qui « rompt le pain avec les Lannisters » selon elle. Elle dut cependant lui prêter allégeance sous peine de se faire exécuter, même si ce n'était qu'une loyauté de façade. Lorsque Doran apprit la nouvelle de la mort de Myrcella, elle le poignarda dans l'instant afin de prendre le pouvoir à Dorne, avec les Aspics des Sables pour complices. À la suite de la destruction du Grand Septuaire de Baelor, elle convoque Olenna Tyrell à Dorne pour lui proposer une alliance Tyrell - Martell - Targaryen afin de renverser leur ennemi commun, les Lannister. Faite prisonnière par Euron Greyjoy durant l'Assaut sur la Flotte Targaryen, elle est ensuite livrée à sa pire ennemie, Cersei Lannister. Condamnée à regarder sa fille mourir des effets du Long Adieu, elle meurt par la suite durant la dévastation de Port-Réal."),
(38, "Obara Sand", "Féminin", "Obara est la fille d'une paysanne et l'aînée des huit filles bâtardes du prince Oberyn Martell. Elle a été nommée ainsi en l'honneur de son père. Elle vivait avec sa mère jusqu'à ce que son père vienne un jour la récupérer pour l'emmener à Lancehélion. Sa mère ne voulant pas la laisser partir, Oberyn jeta une lance à ses pieds et a demandé à Obara de choisir entre elle et sa mère. Elle choisit la lance et suivit Oberyn."),
(39, "Nymeria Sand", "Féminin", "Nymeria est la fille d'une noble orientale qui lui a enseigné l'art du fouet en combat, mais elle meurt plus tard lors d'une bataille. Elle est la cadette des huit filles bâtardes du prince Oberyn Martell. Elle a été nommée ainsi d'après la reine Nymeria de Rhoynar qui a mené son peuple à Dorne."),
(40, "Tyerne Sand", "Féminin", "Fille d'Oberyn Martell et d'Ellaria Sand, Tyerne est la plus jeune des Aspics des Sables connue. Elle maîtrise les poignards ainsi que les jeux de séduction, et suit parfaitement la quête de sa mère pour venger la mort d'Oberyn."),
(41, "Jon Arryn", "Masculin", "Jon était le Seigneur des Eyrié et Gouverneur de l'Est, il était l'époux de Lysa Arryn et le père de Robin Arryn. Il a formé Robert Baratheon et Eddard Stark au maniement des arme dans leur jeunesse. Lorsque Robert s'insurgea, il fut l'un des premiers avec Eddard à le rejoindre. Lui et le roi Robert étaient très bons amis. Eddard Stark le considérait comme un père. Il était marié à Lysa Tully avec qui il a eu un enfant, Robin Arryn. Il occupait le titre de Main du Roi mais mourut « emporté par une maladie », une fièvre qui lui a incendié les entrailles."),
(42, "Lysa Arryn", "Féminin", "Lysa est la deuxième fille de Lord Hoster Tully et de Lady Minisa Whent. Elle est la cadette de la fratrie, sa sœur Catelyn Stark est l'ainée et Edmure Tully est le benjamin. Tous trois ont grandi à Vivesaigues avec Petyr Baelish qui était pupille de leur père; c'est durant cette période qu'elle tombe amoureuse de lui. Durant la Rébellion de Robert, elle est mariée à Jon Arryn pour forger une alliance entre les deux maisons. Après la guerre, elle accompagne Jon devenu Main du Roi à la capitale."),
(43, "Peter Baelish", "Masculin", "Littlefinger est issu d'une petite maison noble du Val d'Arryn, fieffé dans le plus petit des caps de la portion de côte surnommée « Les Doigts » (d'où son surnom). Pupille de la maison Tully durant son adolescence, il tombe amoureux de Catelyn Tully mais est éconduit. Très intelligent, il commence ensuite une fulgurante ascension qui l'a conduit au poste de Grand Argentier du royaume au début de la saga. Il a investi beaucoup d'argent dans la création d'une maison close luxueuse, réservée aux plus riches, où sont réunies les plus belles prostituées de Westeros. Ainsi est créé le Bordel de Littlefinger."),
(44, "Walder Frey", "Masculin", "Walder Frey est le Seigneur du Pont ainsi que le patriarche de la Maison Frey, et il est l'un des vassaux de la Maison Tully, dans le Conflans. Il réside aux Jumeaux, un pont qui enjambe la Verfurque et qui relie deux forteresses. Il doit sa fortune au péage qu'il fait payer à tous ceux qui traversent le pont."),
(45, "Roose Bolton", "Masculin", "Seigneur de Fort-Terreur et de la Maison Bolton, Roose était un soldat aguerri qui a rejoint Robb Stark sur le champ de bataille, mais qui l'a par la suite trahi pour gagner la faveur de Tywin Lannister."),
(46, "Ramsey Bolton", "Masculin", "Ramsay Bolton, surnommé le Bâtard de Bolton ou le Bâtard de Fort-Terreur, est le fils bâtard légitime de Lord Roose Bolton. Ramsay se considère comme un vrai Bolton en dépit de sa naissance illégitime. Il déteste par-dessus tout qu'on lui rappelle son statut de bâtard. Le cheval personnel de Ramsay est nommé Sang, et il commande une meute de chiens de chasse qu'il a l'habitude d'affamer. Theon Greyjoy les surnomme d'ailleurs « Filles du Bâtard »."),
(47, "Davos Mervault", "Masculin", "Davos Mervault est un ancien contrebandier originaire de Culpucier en dessous de la rue de la Farine. Son père était un pêcheur de crabes. Lors de la Rébellion de Robert, il sauve Stannis Baratheon et ses cinq cent hommes lorsqu'il était chargé de tenir Accalmie en leur apportant de la nourriture, principalement des oignons ainsi que des pommes de terre et du bœuf séché, d'où son surnom de « chevalier oignon ». Après la rébellion, Stannis lui fait couper les phalanges de la main droite pour ses crimes de contrebandier. Mais il le remercie de les avoir sauvés en le nommant chevalier et en lui donnant des terres. Davos accepte cela comme un jugement équitable et porte ses phalanges dans un sac autour du cou en guise de porte-bonheur. Après avoir reçu son titre, de nombreux membres de grandes familles le surnomment le « chevalier oignon » en pensant l'insulter mais Davos se moque d'eux en choisissant l'oignon comme emblème pour son blason."),
(48, "Randyll Tarly", "Masculin", "Randyll Tarly est le Seigneur de la Maison Tarly de Corcolline. Son épouse est Melessa Tarly, née Florent, qui est la cousine de Selyse Baratheon. Il a eu trois enfants avec elle, deux fils, Sam et Dickon et une fille Talla. Trouvant son fils aîné indigne de lui, la veille de sa majorité, il lui donne le choix de quitter la maison et de rejoindre la Garde de Nuit ou bien d\'être assassiné."),
(49, "Samwell Tarly", "Masculin", "Samwell Tarly est le fils ainé de Randyll Tarly et Melessa Florent. Son père, honteux de sa couardise et de son obésité, l'oblige à entrer dans la garde de nuit, faisant de Dickon Tarly, le jeune frère de Sam, l'héritier de la Maison."),
(50, "Brienne de Torth", "Féminin", "Fille de lord Selwyn Torth, Brienne est une dame de haute naissance qui s'est entraînée pour devenir chevalier. En dépit de la mort de Catelyn Stark, Brienne fut chargée par Jaime Lannister de faire valoir son serment à Catelyn en trouvant et en protégeant ses filles. Bien que les deux jeunes filles aient refusé son aide, elle a suivi Sansa à Winterfell et était présente lorsque Stannis Baratheon a tenté de prendre le château. Sachant que Stannis était responsable de la mort de son frère Renly, qu'elle a servi et aimé, Brienne tue Stannis. Elle a accompli le vœu fait à Catelyn Stark quand Sansa a accepté la protection et le service de Brienne. À la demande de Sansa, Brienne s'est rendue dans le Conflans pour persuader Brynden Tully d'aider les Stark à reprendre Winterfell. N'ayant pas réussi à le convaincre elle fuit Vivesaigues, qui était sur le point d'être assiégée, toujours accompagnée de Podrick Payne."),
(51, "Varys", "Masculin", "Eunuque, il est le « Maître des chuchoteurs » du royaume des Sept Couronnes depuis le règne d'Aerys II Targaryen, jusqu'à la fin du règne de Joffrey Baratheon. Maître de l'espionnage et du complot, il a, depuis l'arrivée au pouvoir de Robert Baratheon, toujours soutenu le retour des Targaryen, jusqu'à rejoindre Daenerys à Essos et l'aider à préparer la conquête de Westeros."),
(52, "Ygritte", "Féminin", "Ygritte est une jeune fille née au-delà du Mur, faisant ainsi partie du Peuple libre. Il s'agit d'une combattante redoutable, maniant aussi bien l'arc que la lance. Elle met ses talents au service de l'armée du Roi d'au-delà du Mur, Mance Rayder. Elle se montre fière de suivre Mance, car il a été choisi par les siens pour diriger et non pas parce que son père était roi avant lui. On ne sait pas grand-chose de son passé si ce n'est qu'elle a eu plusieurs amants. Elle eut notamment une liaison avec un garçon qui était venu faire du commerce avec ses frères, mais elle le décrit comme « faible ». Plus tard, elle eut ensuite une relation avec un Thenn « qui était bâti comme un mammouth » selon ses propres dires."),
(53, "Mance Rayder", "Masculin", "C'est un ancien frère juré de la Garde de Nuit qui a décidé de laisser tomber ses vœux et d'abandonner son poste, en rejoignant le Peuple libre. Il est depuis devenu très influent parmi les sauvageons et se fait appeler le « Roi d'au-delà du Mur »."),
(54, "Tormund", "Masculin", "Tormund est l'un des lieutenants de Mance Rayder dans l'armée du Peuple libre au même titre que Styr ou le Seigneur des Os. Il est père de deux filles. Quand il avait dix ans, il a réussi à tuer un ogre avant de grimper dans la couche de sa femelle. Cette dernière a ensuite nourrit Tormund au sein pendant trois mois car elle l'a prit pour son bébé. Cette exploit lui a valut le surnom de « Fléau-d'Ogres »."),
(55, "Podrick Payne", "Masculin", "Podrick est un membre de la Maison Payne et un cousin d'Ilyn Payne, le bourreau de la famille royale. Podrick participe à la Guerre des Cinq Rois en tant qu'écuyer d'un chevalier nommé Lorimer. Une nuit, alors qu'il était saoul, le chevalier vola un jambon qu'il partagea avec lui. Le lendemain, le chevalier fut découvert avec l'os du jambon entre les mains et fut pendu. Podrick a aussi failli être pendu mais lord Tywin Lannister l'épargna et l'envoya servir son fils Tyrion Lannister."),
(56, "Mestre Aemon", "Masculin", "Aemon était l'un des derniers Targaryen connus, bien qu'aveugle, il était depuis de longue date Mestre de la Garde de Nuit. Appréciant à la fois Samwell Tarly et Jon Snow, c'est lui qui a jeté le vote décisif pour faire de Jon le 998ème Lord Commandant de la Garde de Nuit."),
(57, "Jorah Mormont", "Masculin", "Ser Jorah est un seigneur du Nord exilé vivant à Essos. Il a d'abord juré fidélité à Viserys Targaryen et aida beaucoup sa sœur Daenerys Targaryen à s'adapter à sa vie en tant que nouvelle khaleesi des Dothrakis. À l'origine, Jorah travaillait comme espion pour Varys, le maître espion du roi Robert à Port-Réal, mais tombe amoureux de la jeune femme devant sa bonté et son charisme dans sa manière de gouverner. Il commence donc à cesser d'envoyer des lettres à Varys et la sert fidèlement."),
(58, "Barristan Selmy", "Masculin", "Ser Barristan Selmy était le lord Commandant de la Garde Royale sous le règne des Targaryen et des Baratheon. Il était considéré comme l'un des plus grands chevaliers de l'Histoire de Westeros et fut relevé de ses fonctions par Joffrey Baratheon. Il partit alors à la recherche de Daenerys Targaryen pour se mettre à son service et fut l'un de ses plus proches conseillers."),
(59, "Missandei", "Féminin", "Elle servait d'interprète et de traductrice aux maîtres avant de devenir la conseillère de Daenerys Targaryen après qu'elle la libère de ses maîtres. Depuis, elle reste à ses côtés et fait partie du Conseil restreint de la reine, avec Ser Barristan Selmy (anciennement), Ser Jorah Mormont, Mossador (anciennement), Ver Gris et Daario Naharis puis plus tard Tyrion Lannister."),
(60, "Ver Gris", "Masculin", "Ver Gris est originaire des Îles d'Été. Il fut enlevé très jeune par les Maîtres, et commença sa formation d'Immaculés à l'âge de 5 ans. Il est le commandant des Immaculés. Il est également un des plus proches conseillers de Daenerys Targaryen."),
(61, "Mélisandre", "Féminin", "Mélisandre est une prêtresse de R'hllor venue d'Asshaï. Envoyée auprès de Stannis Baratheon, elle exerce petit à petit de plus en plus d'influence sur lui et le convertit à sa religion. Ses pouvoirs surnaturels sont à l'origine de la mort de Renly Baratheon, ce qui provoque le ralliement d'une partie de l'armée de Renly à Stannis, mais Stannis l'éloigne de son Conseil et est alors vaincu à la bataille de la Néra. Elle entretient des relations ambivalentes avec Davos Mervault, refusant de le tuer alors qu'il s'est souvent opposé à elle et l'appuyant quand il suggère à Stannis de gagner Le Mur."),
(62, "Bronn", "Masculin", "Bronn était mercenaire à la solde de Tyrion Lannister, et lui faisait office de garde du corps et d'homme de main. Il rencontra le nain lors du duel judiciaire l'opposant à Lysa Arryn, aux Eyrié. Il se présenta en tant que champion de Tyrion pour le représenter dans le Duel judiciaire destiné à prouver son innocence dans l'assassinat de Jon Arryn, et il parvint à vaincre son adversaire, Ser Vardis Egen, sauvant ainsi la vie du nain. Lors de la Bataille de la Néra, il se distingua en tirant la flèche enflammée qui incendia le feu grégeois et détruisit ainsi une grande partie de la flotte de Stannis Baratheon. Suite à cet affrontement, il fut nommé Ser Bronn de la Néra pour ses hauts faits lors de la défense de Port-Réal. Il devint peu à peu ami avec Tyrion cependant Bronn refusa de mettre une fois de plus sa vie en jeu, lorsque ce dernier lui demanda de se battre une fois encore pour lui, contre Ser Gregor Clegane, afin de l'innocenter pour le meurtre de Joffrey Baratheon. Après le départ de Tyrion à Essos, on apprend qu'il compte épouser une femme noble par pur intérêt. Il mit cependant une fois de plus ses talents au service de Jaime Lannister, contre la promesse d'avoir un meilleur parti de la part du régicide. La mission consiste à récupérer Myrcella Baratheon à Dorne, mais elle échoue et Bronn se fait capturer, de même que Jaime. Il est ensuite libéré par le prince Trystan Martell, juste avant que Myrcella ne meure sur le navire, empoisonnée sur le quai par Ellaria Sand. Une fois rentré, il devient le bras droit de Jaime lors de divers conflits."),
(63, "Vère", "Féminin", "Vère est une sauvageonne née au Manoir de Craster. Elle est la fille mais également l'épouse de Craster. Elle vit avec sa famille au Manoir familial qu'elle ne quitte jamais. Quand la Garde de Nuit vient au Manoir, elle est alors enceinte de son père Craster."),
(64, "Jaqen H'gar", "Masculin", "En réalité, Jaqen H'ghar n'est qu'une identité empruntée de l'un des Sans-Visage de Braavos, un ordre redouté d'assassins mystérieux qui peuvent changer d'apparence à volonté. Il est un serviteur du Dieu Multiface Une fois que le personnage de Jaqen ne lui est plus d'aucune utilité, le Sans-Visage prend une nouvelle apparence. C'est à Jaqen H'ghar que l'on doit la première apparition de « Valar Morghulis », une phrase en Haut Valyrien traduite par : « Tout homme doit mourir », c'est aussi la devise des Sans-Visage, à laquelle il est de coutume de répondre Valar Dohaeris (Tout homme doit servir).");

-- --------------------------------------------------------

--
-- Structure de la table `se_situe`
--

CREATE TABLE `se_situe` (
  `id_maison` int(11) NOT NULL,
  `id_localisation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `se_situe`
--

INSERT INTO `se_situe` (`id_maison`, `id_localisation`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 5),
(11, 2),
(12, 6),
(13, 2),
(14, 2);

-- --------------------------------------------------------

--
-- Structure de la table `vient_de`
--

CREATE TABLE `vient_de` (
  `id_personnage` int(11) NOT NULL,
  `id_maison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `vient_de`
--

INSERT INTO `vient_de` (`id_personnage`, `id_maison`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 1),
(11, 2),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 5),
(24, 5),
(25, 5),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 8),
(36, 8),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 9),
(42, 9),
(44, 10),
(45, 11),
(46, 11),
(48, 12),
(49, 12),
(57, 13);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bdd_questionnaire`
--
ALTER TABLE `bdd_questionnaire`
  ADD PRIMARY KEY (`id_questionnaire`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`id_localisation`);

--
-- Index pour la table `maison`
--
ALTER TABLE `maison`
  ADD PRIMARY KEY (`id_maison`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
  ADD PRIMARY KEY (`id_personnage`);

--
-- Index pour la table `se_situe`
--
ALTER TABLE `se_situe`
  ADD PRIMARY KEY (`id_maison`,`id_localisation`),
  ADD KEY `id_localisation` (`id_localisation`);

--
-- Index pour la table `vient_de`
--
ALTER TABLE `vient_de`
  ADD PRIMARY KEY (`id_personnage`,`id_maison`),
  ADD KEY `id_maison` (`id_maison`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bdd_questionnaire`
--
ALTER TABLE `bdd_questionnaire`
  MODIFY `id_questionnaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `maison`
--
ALTER TABLE `maison`
  MODIFY `id_maison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personnage`
--
ALTER TABLE `personnage`
  MODIFY `id_personnage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `se_situe`
--
ALTER TABLE `se_situe`
  ADD CONSTRAINT `se_situe_ibfk_1` FOREIGN KEY (`id_maison`) REFERENCES `maison` (`id_maison`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `se_situe_ibfk_2` FOREIGN KEY (`id_localisation`) REFERENCES `localisation` (`id_localisation`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `vient_de`
--
ALTER TABLE `vient_de`
  ADD CONSTRAINT `vient_de_ibfk_1` FOREIGN KEY (`id_personnage`) REFERENCES `personnage` (`id_personnage`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vient_de_ibfk_2` FOREIGN KEY (`id_maison`) REFERENCES `maison` (`id_maison`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
