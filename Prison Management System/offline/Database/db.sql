-- MySQL dump 10.16  Distrib 10.1.16-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: lttf
-- ------------------------------------------------------
-- Server version	10.1.16-MariaDB

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointments` (
  `Prisoner_id` int(11) DEFAULT NULL,
  `Associates_id` int(11) DEFAULT NULL,
  `Appointment_description` varchar(200) DEFAULT NULL,
  `Appointment_dateandtime` varchar(200) DEFAULT NULL,
  KEY `Prisoner_id` (`Prisoner_id`),
  KEY `Associates_id` (`Associates_id`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Prisoner_id`) REFERENCES `prisoners` (`Prisoner_id`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Associates_id`) REFERENCES `associates` (`Associates_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `associates`
--

DROP TABLE IF EXISTS `associates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `associates` (
  `Associates_id` int(11) NOT NULL,
  `Associates_fname` varchar(15) DEFAULT NULL,
  `Associates_lname` varchar(15) DEFAULT NULL,
  `Prisoner_id` int(11) DEFAULT NULL,
  `Associates_relationship` varchar(20) DEFAULT NULL,
  `Associates_contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Associates_id`),
  KEY `Prisoner_id` (`Prisoner_id`),
  CONSTRAINT `associates_ibfk_1` FOREIGN KEY (`Prisoner_id`) REFERENCES `prisoners` (`Prisoner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `associates`
--

LOCK TABLES `associates` WRITE;
/*!40000 ALTER TABLE `associates` DISABLE KEYS */;
/*!40000 ALTER TABLE `associates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crimes` (
  `Crime_id` int(11) NOT NULL,
  `Crime_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Crime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crimes`
--

LOCK TABLES `crimes` WRITE;
/*!40000 ALTER TABLE `crimes` DISABLE KEYS */;
INSERT INTO `crimes` VALUES (300,'lol'),(21311,'Murder'),(21312,'Indecent Exposure'),(21313,'Manslaughter'),(21314,'Mayhem'),(21315,'Common assault aka assault'),(21316,'Battery'),(21317,'Assault with intent to rob'),(21318,'Assault with intent to rape'),(21319,'Kidnapping / abduction'),(21320,'Rape'),(21321,'Buggery'),(21322,'Arson'),(21323,'Larceny'),(21324,'Robbery'),(21325,'Burglary'),(21326,'Trespass'),(21327,'Extortion'),(21328,'Concealment of treasure trove'),(21329,'Cheating'),(21330,'Forgery'),(21331,'High treason'),(21332,'Petty treason'),(21333,'Misprision of treason (disputed - alleged to be statutory)'),(21334,'Misprision of felony (disputed - alleged not to exist)'),(21335,'Compounding treason'),(21336,'Sedition'),(21337,'Seditious libel'),(21338,'Contempt of the sovereign'),(21339,'Espionage'),(21340,'Contempt of court a.k.a. criminal contempt, contumacy'),(21341,'Compounding a felony'),(21342,'Fabrication of false evidence'),(21343,'Escape from lawful custody'),(21344,'Breach of prison/breaking prison'),(21345,'Rescue/rescuing a prisoner in custody'),(21346,'Harboring a fugitive or felon'),(21347,'Effecting a public mischief (disputed - held to no longer exist)'),(21348,'Malicious mischief'),(21349,'Riot'),(21350,'Mobbing'),(21351,'Piracy'),(21352,'Rout'),(21353,'Affray'),(21354,'Unlawful assembly'),(21355,'Breach of the peace'),(21356,'Defamatory libel'),(21357,'(Causing a) public nuisance'),(21358,'Obscene libel'),(21359,'Blasphemy'),(21360,'Blasphemous libel'),(21361,'Incitement'),(21362,'Challenging to fight'),(21363,'Maintenance'),(21364,'Champerty'),(21365,'Embracery'),(21366,'Eavesdropping'),(21367,'Barratry, inciting litigation for profit'),(21368,'Being a common scold'),(21369,'Nightwalking (so as to cause alarm)'),(21370,'Outraging public decency'),(21371,'Forcible entry'),(21372,'Forcible detainer'),(21373,'Attempt'),(21374,'Conspiracy'),(21375,'Accessory'),(21376,'Offering or paying a bribe'),(21377,'Inebriation, public intoxication, posing a danger to others'),(21378,'Running a disorderly house'),(21379,'Administration of drugs with intent to enable or assist the commission of a crime'),(21380,'Housebreaking with intent to steal'),(21381,'Theft'),(21382,'Use of threats with intent to extort money or property'),(21383,'Wilful fireraising and culpable and reckless fireraising'),(21384,'Misconduct in public office'),(21385,'Perjury of oath'),(21386,'Abuse of authority'),(21387,'Failure to appear: subpoena, militia call-up, jury notice'),(21388,'Failure to supervise'),(21389,'Misappropriation of funds'),(21390,'Acceptance of a bribe'),(21391,'Dereliction of duty, Refusal to execute public office'),(21392,'Conduct unbecoming'),(21393,'Desertion, Away without leave'),(21394,'Insubordination, Failure to obey a lawful order'),(21395,'Obstruction of justice, perverting the course of justice, defeating the ends of justice, obstructing the administration of justice'),(21396,'False imprisonment'),(21397,'Permitting an escape'),(23654,'Criminal Possession of a Weapon');
/*!40000 ALTER TABLE `crimes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisoner_job_assignment`
--

DROP TABLE IF EXISTS `prisoner_job_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prisoner_job_assignment` (
  `Prisoner_id` int(11) DEFAULT NULL,
  `Prisoner_job_id` int(11) DEFAULT NULL,
  `job_date` varchar(15) DEFAULT NULL,
  `job_st` varchar(15) DEFAULT NULL,
  `job_et` varchar(15) DEFAULT NULL,
  KEY `Prisoner_id` (`Prisoner_id`),
  CONSTRAINT `prisoner_job_assignment_ibfk_1` FOREIGN KEY (`Prisoner_id`) REFERENCES `prisoners` (`Prisoner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner_job_assignment`
--

LOCK TABLES `prisoner_job_assignment` WRITE;
/*!40000 ALTER TABLE `prisoner_job_assignment` DISABLE KEYS */;
INSERT INTO `prisoner_job_assignment` VALUES (54321,2,'09-05-2018','6:05','7:05'),(54321,3,'09-05-2016','11:05','12:05'),(54321,3,'12-11-2018','10:00','6:00'),(54321,1,'03-11-2018','19:00','6:00'),(54321,1,'12-11-2018','18:00','6:00'),(54321,2,'17-11-2018','12:00','15:00'),(54321,2,'17-11-2018','12:00','15:00'),(54321,2,'23-11-2018','11:00','6:00'),(54321,3,'13-11-2018','8:00','6:00'),(54321,2,'24-11-2018','6:00','6:00');
/*!40000 ALTER TABLE `prisoner_job_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisoner_jobs`
--

DROP TABLE IF EXISTS `prisoner_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prisoner_jobs` (
  `Prisoner_job_id` int(11) NOT NULL,
  `Prisoner_job_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Prisoner_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoner_jobs`
--

LOCK TABLES `prisoner_jobs` WRITE;
/*!40000 ALTER TABLE `prisoner_jobs` DISABLE KEYS */;
INSERT INTO `prisoner_jobs` VALUES (1,'dock'),(2,'kitchen'),(3,'janitor');
/*!40000 ALTER TABLE `prisoner_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prisoners`
--

DROP TABLE IF EXISTS `prisoners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prisoners` (
  `Prisoner_id` int(11) NOT NULL,
  `Prisoner_fname` varchar(15) DEFAULT NULL,
  `Prisoner_lname` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `Prisoner_age` int(11) DEFAULT NULL,
  `Prisoner_sex` varchar(7) DEFAULT NULL,
  `Prisoner_height` varchar(6) DEFAULT NULL,
  `Prisoner_weight` varchar(5) DEFAULT NULL,
  `eyes` varchar(20) DEFAULT NULL,
  `hair` varchar(25) DEFAULT NULL,
  `Race` varchar(10) DEFAULT NULL,
  `Religion` varchar(12) DEFAULT NULL,
  `Citizenship` varchar(30) DEFAULT NULL,
  `Prisoner_address` varchar(200) DEFAULT NULL,
  `City` varchar(40) DEFAULT NULL,
  `State` varchar(30) DEFAULT NULL,
  `Zip` int(7) DEFAULT NULL,
  `Phone` int(11) DEFAULT NULL,
  `Crime_id` int(11) DEFAULT NULL,
  `Prisoner_sentence` varchar(50) DEFAULT NULL,
  `Book_date` date DEFAULT NULL,
  `Cell_no` int(3) NOT NULL,
  `Prisoner_note` varchar(200) DEFAULT NULL,
  `Search_key` int(11) DEFAULT NULL,
  `Sid` int(11) DEFAULT NULL,
  `Ssn` int(11) DEFAULT NULL,
  `Dl` varchar(25) DEFAULT NULL,
  `Marital` varchar(16) DEFAULT NULL,
  `Inmate_pic` varchar(200) DEFAULT NULL,
  `Crime` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Prisoner_id`),
  UNIQUE KEY `Ssn` (`Ssn`),
  UNIQUE KEY `Sid` (`Sid`),
  KEY `Crime_id` (`Crime_id`),
  CONSTRAINT `prisoners_ibfk_1` FOREIGN KEY (`Crime_id`) REFERENCES `crimes` (`Crime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prisoners`
--

LOCK TABLES `prisoners` WRITE;
/*!40000 ALTER TABLE `prisoners` DISABLE KEYS */;
INSERT INTO `prisoners` VALUES (7,'k','k','1995-11-09',4,'Male','55','5','k','kl','k','k','m','k','j','j',5,5,21312,'kl','2018-11-10',4,'m',7,5,52,'56','Un-Married',NULL,'21312'),(45,'kunal','rao','1998-11-21',20,'Male','175','75','black','black','indian','non','indian','kammanhalli bla road','Banglote','karnataka',798,7412589,21312,'12','2018-11-09',87,'',79,94,4579,'45877','Un-Married',NULL,'23654'),(345,'jhon','doe','1991-11-13',28,'Male','181','75','black','black','black','judaism','american','54th avenvue madison square','washington DC','Washington',32,69696969,21312,'58','2018-11-04',345,'he killed',12,4565,1122331,'7667','Divorced','\\dist\\Inmates_pic\\wally.jpg','21312,23654'),(369,'Emma','Thacher','1996-11-09',22,'Male','154','45','green','Black','Mixed','Chistian','US','3302 Hill Street','CL','Ohio',789,5896254,21312,'4','2014-11-08',6,'',65,24,795,'79','Un-Married','\\dist\\Inmates_pic\\pri4.jpg','21334'),(489,'carlos','lausen','1994-11-06',24,'Male','189','80','black','black','black','NON','US','Martice Avenue,24th candy','LV','NV',458,57896541,21312,'2','2018-11-08',2,'',145,45,4789,'13258','Un-Married','\\dist\\Inmates_pic\\pri2.jpg','21369'),(654,'Whaleed','Detron','1990-11-20',28,'Male','179','79','black','black','Black','Islam','US','2110 Coplin Avenue','Pheonix','Arizona',369,25975636,21312,'25','2018-11-03',9,'',493,25,785,'4599','Un-Married','\\dist\\Inmates_pic\\pri5.jpg','21311'),(987,'Candy','Alexa','1994-08-17',24,'Female','171','65','black','read','Caucassian','atheist','american','54th hollywood','delaware','NV',567,987654321,21312,'11','2018-11-01',420,'',34,3432,112233,'22223','Divorced','\\dist\\Inmates_pic\\wally.jpg','23654,21312'),(996,'Jordon','Soros','1978-11-10',40,'Male','176','85','blue','brown','White','Jewish','US','Cardyneive avenue,305 cardish building','Salt lake','Utah',4587,12358796,21312,'5','2015-11-11',3,'',789,39,478,'457892','Divorced','\\dist\\Inmates_pic\\pri3.jpg','21388,21384,21376'),(5555,'james','colen','1988-11-12',30,'Male','175','77','grey','brown','white','christian','American','Trian road cal building 504','compton','ca',4587,998855442,21312,'14','2017-11-10',1,'',14,47,578944,'1234','Un-Married','\\dist\\Inmates_pic\\pri1.jpg','21315,21348'),(54321,'Rick','ross','1998-11-12',45,'Male','175','91','black','black','black','chritian','american','54th strret','new york','new yoyk',789,794562,21312,'78','2017-11-25',8894561,'nothing much',7955,789,7894563,'78994','Married','\\dist\\Inmates_pic\\pri2.jpg','21312,23654');
/*!40000 ALTER TABLE `prisoners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_fname` varchar(16) NOT NULL,
  `staff_mname` varchar(16) NOT NULL,
  `staff_lname` varchar(16) NOT NULL,
  `staff_sex` varchar(10) NOT NULL,
  `staff_age` int(11) NOT NULL,
  `staff_height` int(11) NOT NULL,
  `staff_ssn` varchar(16) NOT NULL,
  `staff_ph` varchar(16) NOT NULL,
  `staff_street` varchar(100) DEFAULT NULL,
  `staff_city` varchar(16) NOT NULL,
  `staff_state` varchar(16) NOT NULL,
  `staff_zip` varchar(16) NOT NULL,
  `staff_position_id` int(11) NOT NULL,
  `staff_salary` varchar(16) NOT NULL,
  `college` varchar(100) DEFAULT NULL,
  `Qualifiction` varchar(100) DEFAULT NULL,
  `home_phone` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `Privious_Company` varchar(100) DEFAULT NULL,
  `previous_position` varchar(100) DEFAULT NULL,
  `staff_date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `staff_position_id` (`staff_position_id`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`staff_position_id`) REFERENCES `staff_position` (`Staff_position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (54,'daliel','p.','panabecker','Male',27,181,'445981','98765432','12th','vegas','NV','34',14,'45000','oxford','cullinary','87654325','P@gamil.com','','','12-11-1994'),(55,'Carter','N','Newgate','Male',28,191,'4532','37492305','132 Harry','SF','CA','4322',16,'40000','Stanford','BE','48372058','grib@gmail.com','Prion LLC.','watchmen','10-11-1990'),(56,'Jarimaya','K','Stern','Male',28,188,'402','47829482','4762 Woodland Terrace','Sachramento','CA','4211',10,'50000','Stern School','ME','84938274','tirg@gmail.com','Triac','Manager','03-11-1990'),(57,'paul','M','Marty','Male',30,175,'5434','590294850','3628 Providence Lane','Sacramento','CA','9322',13,'40000','Colorado University','Mangement','45020456','ewrt@gmain.com','','','23-11-1988'),(58,'Howard','N','Rosevelt','Female',23,165,'4532','98654326','3239 Counts Lane','JU','KY','98746',12,'40000','Stanford','Management','98347584','ioa@gmail.com','','','04-11-1995'),(59,'Bella','K','Thompson','Female',23,169,'9876','87638076','4203 Dog Hill Lane','HU','CA','98765',13,'50000','Stanford','CV','78909876','kut@gmail.com','','','17-11-1995'),(60,'Uma','Carter','Valor','Female',28,170,'789','45789632','4587 Tort Avanue','Sacramento','CA','5896',14,'39000','Reteut','Cook','12456985','yui@gmail.com','','','16-11-1990'),(61,'Rony','D','Guy','Male',25,178,'12321','420','12th','Vegas','NV','909',28,'1000000','oxford','metric','987654321','mm@gmail','qq','cvhief','06-11-1992');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_position`
--

DROP TABLE IF EXISTS `staff_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_position` (
  `Staff_position_id` int(11) NOT NULL,
  `Staff_position_description` varchar(200) DEFAULT NULL,
  `Staff_position_salary` varchar(78) DEFAULT NULL,
  `staff_per` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Staff_position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_position`
--

LOCK TABLES `staff_position` WRITE;
/*!40000 ALTER TABLE `staff_position` DISABLE KEYS */;
INSERT INTO `staff_position` VALUES (1,'jailor','50000','r'),(2,'cook','60000','n'),(3,'guardz','40000','r'),(4,'dog handler','50000','n'),(5,'armed guard','54000','n'),(6,'doctorz','88000','r'),(7,'janitorz','88000','n'),(8,'adminz','90000','rw'),(9,'Parole Officer','40000','r'),(10,'Chief Guard male','50000','r'),(11,'guards','25000','r'),(12,'Chief Guard Female','50000','r'),(13,'Guards','25000','r'),(14,'chef','30000','n'),(15,'cook(kichen)','20000','n'),(16,'workers(kitchen)','15000','n'),(17,'Sanitation Chief','35000','n'),(18,'janitor','15000','n'),(19,' Doctors','50000','n'),(20,'nurses','25000','n'),(21,'medical supplier','30000','n'),(22,'worker(infirmary)','15000','n'),(23,'punishment cell(in charge officer)','40000','r'),(24,'punishment cell(officer)','25000','n'),(25,'post officer','20000','n'),(26,'phone in charge','20000','n'),(27,'admin','40000','w'),(28,'warden','60000','w');
/*!40000 ALTER TABLE `staff_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) DEFAULT NULL,
  `user_pw` varchar(20) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_per` varchar(10) DEFAULT NULL,
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (54,'pass1','54','r'),(55,'fytayy28qs','55','n'),(56,'3i6ik4rd36','56','r'),(57,'wgnya7m9kb','57','r'),(58,'b7ggvd1qzd','58','r'),(59,'kp2zww9512','59','r'),(60,'qml8j8wsz2','60','n'),(61,'pass1','61','w');
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

-- Dump completed on 2018-12-02 14:19:31
