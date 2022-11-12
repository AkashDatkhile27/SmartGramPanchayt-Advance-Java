-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sg
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `complaintbox`
--

DROP TABLE IF EXISTS `complaintbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `complaintbox` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaintdate` date NOT NULL,
  `Name` char(45) NOT NULL,
  `mno` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `incidentLocation` varchar(100) NOT NULL,
  `complaintDetails` longtext NOT NULL,
  `desiredoutcome` longtext NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'In Progress',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complaintbox`
--

LOCK TABLES `complaintbox` WRITE;
/*!40000 ALTER TABLE `complaintbox` DISABLE KEYS */;
INSERT INTO `complaintbox` VALUES (1,'2021-12-03','AKASH SUDAM DATKHILE','9379547918','akashdatkhile2@gmail.com','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','Takali','drainage leakage','fix this','Done');
/*!40000 ALTER TABLE `complaintbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheme`
--

DROP TABLE IF EXISTS `scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheme` (
  `scheme_id` int NOT NULL,
  `scheme_name` longtext NOT NULL,
  `info` longtext NOT NULL,
  PRIMARY KEY (`scheme_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheme`
--

LOCK TABLES `scheme` WRITE;
/*!40000 ALTER TABLE `scheme` DISABLE KEYS */;
INSERT INTO `scheme` VALUES (1,'MATCHING GRANTS  PANCHAYATS','The Matching Grants are released to the village Panchayats depending upon their tax collection. This is an unconditional grant which can be utilized for any purpose by the panchayat.The grants are released as per the following pattern of assistances:-\n(a)Panchayats with annual income up to Rs.50,000/:-200% of the taxes collected subject to minimum of Rs.20,000/-\n(b)Panchayat with annual income above Rs.50,000/-up to Rs.1,00,000/:-Rs.1,00,000/-and 15% of the additional income from taxes above Rs.1,00,000/-\n(c)Panchayat with annuofficial_websiteal income over Rs.1,00,000/- upto Rs.2,00,000/-	Rs.1,75,000/- and 100% of the additional income from taxes above Rs.1,00,000/-\n(d)Panchayat with annual income over Rs.2,00,000/- upto Rs.5,00,000/-	Rs.2.75.000/- and 50% of the additional income from taxes above Rs.2,00,000/-\n(e)Panchayats whose annual income is above Rs.5,00,000/-	Rs.4,25,000/- only.\nIf any panchayat registers a fall in the income during the year as compared to the income of the previous year, the Government reserves the right to release matching grants to such panchayats at 50% of the admissible amount.'),(2,'HOUSING SCHEME: RAJIV AWAAS YOJANA 2008','Under the scheme, Central government provides assistance of 50% of the project cost for Cities/ UAs with Population more than 5 lakhs, 75% for Cities/ UAs having population less than 5 lakhs. For North-Eastern Region and special category States (Jammu & Kashmir, Himachal Pradesh &Uttarakhand) central share will be 80%.  There is an upper ceiling of Rs. 5 lakh per Dwelling Unit (DU) for cities with population more than 5 lakhs. This ceiling is Rs. 4 lakhs per DU for smaller cities with population less than 5 lakhs. In North East (NE) and special category States, upper ceiling is Rs. 5 lakh per DU irrespective of population of the city. Upper ceilings, as above, also include cost of civic infrastructure and social amenities.\nThe Central assistance under RAY will be contingent upon implementation of reforms as per the timelines agreed upon.  The mandatory reforms include: \n(i) Giving long term, mortgageable, renewable leasehold rights to slum dwellers\n(ii) Reserving 15% of FAR/FSI or 35% of DU for EWS whichever is higher\n(iii) Reserving 25% of municipal budget to provide basic services to the urban poor and\n(iv) Establishment of municipal cadre to deal with issues of slums and urban poor.\n\nTwo step implementation strategy would be adopted under RAY i.e. preparation of Slum-free City Plans of Action (SFCPoAs) on ‘whole city’ basis and Detailed Project Reports (DPRs) on ‘whole slum’ basis. Selected cities will be assisted to draw up their SFCPoA which will be an overall action plan of the ULB with investment requirements projected and prioritized for improving/developing the existing slums and providing houses including basic civic infrastructure and social amenities for the urban poor for the next 10-15 years. On the basis of prioritization of slums in SFCPoAs, cities would be required to prepare Detailed Project Reports (DPRs) following an integrated ‘whole slum’ approach with the provision of housing, basic civic infrastructure and social amenities in each selected slum.\nProject Approval process under RAY\nDPRs are prepared by States/cities in accordance with the guidelines issued by Ministry following ‘whole slum’ approach on the basis of slums prioritised in the SFCPoA prepared by the City. Preparation of SFCPoA is a pre-requisite for submission of DPRs under RAY.\n \nThe DPRs prepared are forwarded to the Ministry after due approval of the State level Sanctioning and Monitoring Committee constituted under the Chairpersonship of Hon’ble Chief Minister of the State. These submitted DPRs are then appraised by the appraisal agencies and place in the CSMC (Central Sanctioning & Monitoring Committee) meeting under the Chairpersonship of Secretary (HUPA) for approval.\n'),(3,'RURAL GARBAGE DISPOSAL SCHEME 2005','Maharashtra Pollution Control Board (MPCB) is implementing various environmental legislations in the state of Maharashtra, mainly including Water (Prevention and Control of Pollution) Act, 1974, Air (Prevention and Control of Pollution) Act, 1981, Water (Cess) Act, 1977 and some of the provisions under Environmental (Protection) Act, 1986 and the rules framed there under like, Biomedical Waste (M&H) Rules, 1998, Hazardous Waste (M&H) Rules, 2000, Municipal Solid Waste Rules, 2000 etc. MPCB is functioning under the administrative control of Environment Department of Government of Maharashtra.<br>\nSome of the important functions of MPCB are:\nTo plan comprehensive program for the prevention, control or abatement of pollution and secure executions thereof\nTo collect and disseminate information relating to pollution and the prevention, control or abatement thereof,\nTo inspect sewage or trade effluent treatment and disposal facilities, and air pollution control systems and to review plans, specification or any other data relating to the treatment plants, disposal systems and air pollution control systems in connection with the consent granted,\nSupporting and encouraging the developments in the fields of pollution control, waste recycle reuse, eco-friendly practices etc.\nTo educate and guide the entrepreneurs in improving environment by suggesting appropriate pollution control technologies and techniques'),(4,'GRANT-IN-AID','A grant-in-aid is money coming from a central government for a specific project. Such funding is usually used when the government and the legislature decide that the recipient should be publicly funded but operate with reasonable independence from the state.'),(5,'GRANTS TO WEAKER SECTION FOR STRENGTHENING THEIR ADMINISTRATION','From the year 2001-02 the Government has introduced a scheme of giving special grants to weaker Panchayats whose annual income is less than Rs.10.00lakhs in order to provide them with sufficient funds to make payment of salaries to their staff like L.D.C-cum-typist and Peon-cum-Messenger as per the followings pattern of assistances');
/*!40000 ALTER TABLE `scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schemereg`
--

DROP TABLE IF EXISTS `schemereg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schemereg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(45) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `State` varchar(45) NOT NULL,
  `scheme` int NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT 'in progress',
  PRIMARY KEY (`email`),
  UNIQUE KEY `sr_no_UNIQUE` (`id`),
  KEY `scheme_id_idx` (`scheme`),
  CONSTRAINT `scheme_id` FOREIGN KEY (`scheme`) REFERENCES `scheme` (`scheme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schemereg`
--

LOCK TABLES `schemereg` WRITE;
/*!40000 ALTER TABLE `schemereg` DISABLE KEYS */;
INSERT INTO `schemereg` VALUES (2,'AKASH SUDAM DATKHILE','akashdatkhile2@gmail.com','9373547318','male','2021-11-01','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','Akole','422601','Maharashtra',2,'Akash@10','Rejected'),(6,'AKASH SUDAM DATKHILE','akashdatkhile223@gmail.com','9373547318','male','2021-11-24','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','Akole','123332','Maharashtra',2,'scadada','Rejected'),(3,'Akash Sudam Datkhile','akashdatkhile232@gmail.com','9373547318','male','2021-11-18','AT.-Takali Po.-Dhokari Tal-Akole Dist.-Ahmednagar,Akole422601','Ahmed Naga','422601','Maharashtra',4,'sdasdadd','Approved'),(16,'anirudha shete','ani@gmail.com','7709591621','male','1996-02-28','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','Akole','422601','Maharashtra',2,'ani123','Approved'),(15,'rutuja ','rutuja@gmail.com','8329793128','female','2000-02-22','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','pune','422608','Maharashtra',4,'rutuja','Approved'),(14,'shubhangi ','shubh@gmail.com','9021978708','female','2000-09-29','At/Po.-Virgaon , Tal.-Akole Dist.-A.Nagar','Sangamner','422605','Maharashtra',3,'shub123','Approved'),(7,'Snehal','sneha2@gmail.com','9373547318','female','2021-11-15','AT.-Takali Po.-Dhokari Tal-Akole  Dist.-Ahmednagar,Akole422601','Akole','422601','Maharashtra',3,'adhdad','Rejected'),(8,'sudam','su@gmail.com','9970123279','male','1970-06-06','At/Po.-Virgaon , Tal.-Akole Dist.-A.Nagar','Akole','42605','Maharashtra',4,'su123','Approved');
/*!40000 ALTER TABLE `schemereg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `uid` int NOT NULL,
  `uname` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'akash','Akash@1011');
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

-- Dump completed on 2021-11-10 18:03:50
