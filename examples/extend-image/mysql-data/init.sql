drop database if exists caseydb;

CREATE Database caseydb;

USE caseydb;

Drop TABLE if EXISTS `caseFiles`;
Drop TABLE if EXISTS `fileChunks`;
Drop TABLE IF EXISTS `classifiers`;

CREATE TABLE `caseFiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `filename` varchar(255) UNIQUE DEFAULT NULL,
  `date` date DEFAULT DATE(),
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE `fileChunks` (
  `id` int(11) NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `parentfileid` int(11) DEFAULT NULL,
  `positionref` int(11) DEFAULT NULL,
  `text` varchar(1500) DEFAULT NULL,
  `relConfidance` float(11) DEFAULT NULL,
  `irrConfidance` float(11) DEFAULT NULL,
  `viewed` varchar(3) DEFAULT NULL,
  `userrelevance` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`parentfileid`) REFERENCES `caseFiles`(`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;

CREATE TABLE `classifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT DEFAULT NULL,
  `classifier_id` varchar(255) UNIQUE DEFAULT NULL,
  `name` varchar(255) UNIQUE DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `created` varchar(255) DEFAULT NULL,
  `url`varchar(500) DEFAULT NULL,
  `status_description` varchar(500) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = latin1;
