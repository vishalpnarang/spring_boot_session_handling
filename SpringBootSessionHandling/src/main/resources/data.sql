-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: login_db
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `spring_session`
--

DROP TABLE IF EXISTS `spring_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session`
--

LOCK TABLES `spring_session` WRITE;
/*!40000 ALTER TABLE `spring_session` DISABLE KEYS */;
INSERT INTO `spring_session` VALUES ('90652a17-adb7-4cff-b25d-b0a9e9f1d341','e03ae13a-72b2-4506-b9a5-4f277c94d6a7',1545919711525,1545919711525,1800,1545921511525,NULL),('df888ed3-b95d-41ff-a3de-054bfcafa4b5','b8d39549-113b-4654-ae3b-91aa84cbca33',1545919714970,1545919724896,1800,1545921524896,'vishal');
/*!40000 ALTER TABLE `spring_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spring_session_ATTRIBUTES`
--

DROP TABLE IF EXISTS `spring_session_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spring_session_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spring_session_ATTRIBUTES`
--

LOCK TABLES `spring_session_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `spring_session_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `spring_session_ATTRIBUTES` VALUES ('90652a17-adb7-4cff-b25d-b0a9e9f1d341','SPRING_SECURITY_SAVED_REQUEST',_binary '¬\í\0sr\0Aorg.springframework.security.web.savedrequest.DefaultSavedRequest@HDù6d\0I\0\nserverPortL\0contextPatht\0Ljava/lang/String;L\0cookiest\0Ljava/util/ArrayList;L\0headerst\0Ljava/util/Map;L\0localesq\0~\0L\0methodq\0~\0L\0\nparametersq\0~\0L\0pathInfoq\0~\0L\0queryStringq\0~\0L\0\nrequestURIq\0~\0L\0\nrequestURLq\0~\0L\0schemeq\0~\0L\0\nserverNameq\0~\0L\0servletPathq\0~\0xp\0\0t\0\0sr\0java.util.ArrayListx\Ò\Ça\0I\0sizexp\0\0\0\0w\0\0\0\0xsr\0java.util.TreeMapÁö>-%j\æ\0L\0\ncomparatort\0Ljava/util/Comparator;xpsr\0*java.lang.String$CaseInsensitiveComparatorw\\}\\P\å\Î\0\0xpw\0\0\0\nt\0acceptsq\0~\0\0\0\0w\0\0\0t\0*/*xt\0accept-encodingsq\0~\0\0\0\0w\0\0\0t\0gzip, deflate, brxt\0accept-languagesq\0~\0\0\0\0w\0\0\0t\0\Zen-GB,en-US;q=0.9,en;q=0.8xt\0\rcache-controlsq\0~\0\0\0\0w\0\0\0t\0no-cachext\0\nconnectionsq\0~\0\0\0\0w\0\0\0t\0\nkeep-alivext\0hostsq\0~\0\0\0\0w\0\0\0t\0localhost:8080xt\0\rpostman-tokensq\0~\0\0\0\0w\0\0\0t\0$cf43947e-4136-4a0f-e7b0-448561b534efxt\0\nuser-agentsq\0~\0\0\0\0w\0\0\0t\0hMozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.80 Safari/537.36xt\0x-auth-tokensq\0~\0\0\0\0w\0\0\0t\0$949e4ee2-ac2c-4d65-ab73-852f89bc09ffxt\0x-postman-interceptor-idsq\0~\0\0\0\0w\0\0\0t\0$7936bd33-b6f3-0742-7df2-76d598bf492cxxsq\0~\0\0\0\0w\0\0\0sr\0java.util.Locale~ø`0ù\ì\0I\0hashcodeL\0countryq\0~\0L\0\nextensionsq\0~\0L\0languageq\0~\0L\0scriptq\0~\0L\0variantq\0~\0xpÿÿÿÿt\0GBq\0~\0t\0enq\0~\0q\0~\0xsq\0~\0,ÿÿÿÿt\0USq\0~\0q\0~\0/q\0~\0q\0~\0xsq\0~\0,ÿÿÿÿq\0~\0q\0~\0q\0~\0/q\0~\0q\0~\0xxt\0GETsq\0~\0pw\0\0\0\0xppt\0\r/secure/hellot\0\"http://localhost:8080/secure/hellot\0httpt\0	localhostt\0\r/secure/hello'),('df888ed3-b95d-41ff-a3de-054bfcafa4b5','SPRING_SECURITY_CONTEXT',_binary '¬\í\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0þ\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0þ\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenÓª(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableListü%1µ\ì\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0\Ë^÷\0L\0cq\0~\0xpsr\0java.util.ArrayListx\Ò\Ça\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0þ\0L\0rolet\0Ljava/lang/String;xpt\0\nROLE_ADMINxq\0~\0\rppt\0vishal'),('df888ed3-b95d-41ff-a3de-054bfcafa4b5','USER',_binary '¬\í\0t\0vishal');
/*!40000 ALTER TABLE `spring_session_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  UNIQUE KEY `UKlqjrcobrh9jc8wpcar64q1bfh` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'vishal','vishal');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-27 19:39:42
