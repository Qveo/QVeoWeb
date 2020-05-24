-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: qveo2
-- ------------------------------------------------------
-- Server version	8.0.18

USE qveo;

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
-- Dumping data for table `actor`
--

/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (1,'Ben Stiller','H','/resources/img/actores/ben_stiller.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (2,'Chris Rock','H','/resources/img/actores/chris_rock.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (3,'David Schwimmer','H','/resources/img/actores/david_schwimmer.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (4,'Jada Pinkett','M','/resources/img/actores/jada_pinkett.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (5,'Cedric Antonio Kyles','M','/resources/img/actores/cedric_antonio_kyles.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (6,'Andy Richter','H','/resources/img/actores/andy_richter.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (7,'Bernie Mac','H','/resources/img/actores/bernie_mac.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (8,'Alec Baldwin','H','/resources/img/actores/alec_baldwin.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (9,'Sherri Shepherd','M','/resources/img/actores/sherri_shepherd.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (10,'William James Adams','H','/resources/img/actores/william_james_adams.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (11,'John DiMaggio','H','/resources/img/actores/john_dimaggio.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (12,'Conrad Vernon','H','/resources/img/actores/conrad_vernon.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (13,'Sacha Baron Cohen','M','/resources/img/actores/sacha_baron_cohen.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (14,'Jay Baruchel','H','/resources/img/actores/jay_baruchel.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (15,'Gerard Butler','H','/resources/img/actores/gerard_butler.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (16,'América Ferrera','M','/resources/img/actores/america_ferrera.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (17,'Kristen Wiig','M','/resources/img/actores/kristen_wiing.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (18,'Jonah Hill','H','/resources/img/actores/jonah_hill.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (19,'Todd Joseph Miller','H','/resources/img/actores/todd_joseph_miller.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (20,'Christopher Mintz-Plasse','H','/resources/img/actores/christopher_mintz_plasse.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (21,'Craig Ferguson','H','/resources/img/actores/craig_ferguson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (22,'William Bradley Pitt','H','/resources/img/actores/william_bradley_pitt.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (23,'Mireille Enos','M','/resources/img/actores/mireille_enos.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (24,'Fana Mokoena','H','/resources/img/actores/fana_mokoena.jpg',5);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (25,'Daniella Kertesz','M','/resources/img/actores/daniella_kertesz.jpg',6);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (26,'James Badge Dale','H','/resources/img/actores/james_badge_dale.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (27,'Thomas Mann','H','/resources/img/actores/thomas_mann.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (28,'Oliver Cooper','H','/resources/img/actores/oliver_cooper.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (29,'Jonathan Daniel Brown','H','/resources/img/actores/jonathan_daniel_brown.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (30,'Thomas Jane','H','/resources/img/actores/thomas_jane.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (31,'Saffron Dominique Burrows ','M','/resources/img/actores/saffron_dominique_burrows.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (32,'Jacqueline Susan McKenzie','M','/resources/img/actores/jacqueline_susan_mckenzie.jpg',7);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (33,'Stellan John Skarsgård ','H','/resources/img/actores/stellan_john_skarsgard.jpg',8);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (34,'Samuel L. Jackson','H','/resources/img/actores/samuel_l_jackson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (35,'James Todd Smith III','H','/resources/img/actores/james_todd_smith_III.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (36,'Michael David Rapaport','H','/resources/img/actores/michael_david_rapaport.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (37,'Aaron Johnson','H','/resources/img/actores/aaron_johnson.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (38,'Ken Watanabe','H','/resources/img/actores/ken_watanabe.jpg',10);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (39,'Elizabeth Olsen','M','/resources/img/actores/elizabeth_olsen.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (40,'Juliette Binoche','M','/resources/img/actores/juliette_binoche.jpg',9);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (41,'Sally Hawkins','M','/resources/img/actores/sally_hawkins.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (42,'David Strathairn','H','/resources/img/actores/david_strathairn.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (43,'Bryan Cranston','H','/resources/img/actores/bryan_cranston.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (44,'Tye Sheridan','H','/resources/img/actores/tye_sheridan.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (45,'Olivia Cooke','M','/resources/img/actores/olivia_cooke.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (46,'Ben Mendelsohn','H','/resources/img/actores/ben_mendelsohn.jpg',7);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (47,'Hannah John-Kamen','M','/resources/img/actores/hannah_john_kamen.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (48,'Simon Pegg','H','/resources/img/actores/simon_pegg.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (49,'Mark Rylance','H','/resources/img/actores/mark_rylance.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (50,'Rachel Anne McAdams','M','/resources/img/actores/rachel_anne_mcadams.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (51,'Billy Magnussen','H','/resources/img/actores/billy_magnussen.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (52,'Kylie Bunbury','M','/resources/img/actores/kylie_bunbury.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (53,'Jesse Plemons','H','/resources/img/actores/jesse_plemons.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (54,'Michael C. Hall','H','/resources/img/actores/michael_c_hall.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (55,'Kyle Chandler','H','/resources/img/actores/kyle_chandler.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (56,'Jason Bateman','H','/resources/img/actores/jason_bateman.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (57,'Sharon Horgan','M','/resources/img/actores/sharon_horgan.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (58,'Lamorne Morris','H','/resources/img/actores/lamorne_morris.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (59,'Bradley Cooper','H','/resources/img/actores/bradley_cooper.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (60,'Sienna Miller','M','/resources/img/actores/sienna_miller.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (61,'Leonardo DiCaprio','H','/resources/img/actores/leonardo_dicaprio.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (62,'Ellen Page','M','/resources/img/actores/ellen_page.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (63,'Marion Cotillard','M','/resources/img/actores/marion_cotillard.jpg',9);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (64,'Joseph Gordon-Levitt','H','/resources/img/actores/joseph_gordon_levitt.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (65,'Tom Hardy','H','/resources/img/actores/tom_hardy.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (66,'Cillian Murphy','H','/resources/img/actores/cillian_murphy.jpg',11);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (67,'Michael Caine','H','/resources/img/actores/michael_caine.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (68,'Tobey Maguire','H','/resources/img/actores/tobey_maguire.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (69,'Willem Dafoe','H','/resources/img/actores/willem_dafoe.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (70,'Kirsten Dunst','M','/resources/img/actores/kirsten_dunst.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (71,'James Franco','H','/resources/img/actores/james_franco.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (72,'Cliff Robertson','H','/resources/img/actores/cliff_robertson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (73,'Rosemary Harris','M','/resources/img/actores/rosemary_harris.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (74,'Jonathan Kimble Simmons','H','/resources/img/actores/jonathan_kimble_simmons.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (75,'Frank Grillo','H','/resources/img/actores/frank_grillo.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (76,'Elizabeth Mitchell','M','/resources/img/actores/elizabeth_mitchell.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (77,'Mykelti Williamson','H','/resources/img/actores/mykelti_williamson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (78,'Ian McKellen','H','/resources/img/actores/ian_mckellen.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (79,'Martin Freeman','H','/resources/img/actores/martin_freeman.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (80,'Richard Armitage','H','/resources/img/actores/richard_armitage.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (81,'Benedict Cumberbatch','H','/resources/img/actores/benedict_cumberbatch.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (82,'Tom Cullen','H','/resources/img/actores/tom_cullen.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (83,'Jim Carter','H','/resources/img/actores/jim_carter.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (84,'Pádraic Delaney','H','/resources/img/actores/padraic_delaney.jpg',11);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (85,'Simon Merrells','H','/resources/img/actores/simon_merrells.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (86,'Justin Roiland','H','/resources/img/actores/justin_roiland.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (87,'Spencer Grammer','M','/resources/img/actores/spencer_grammer.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (88,'Sarah Chalke','M','/resources/img/actores/sarah_chalke.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (89,'Chris Parnell','H','/resources/img/actores/chris_parnell.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (90,'Travis Fimmel','H','/resources/img/actores/travis_fimmel.jpg',7);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (91,'Katheryn Winnick','M','/resources/img/actores/katheryn_winnick.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (92,'Clive Standen','H','/resources/img/actores/clive_standen.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (93,'Jessalyn Gilsig','M','/resources/img/actores/jessalyn_gilsig.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (94,'James Spader','H','/resources/img/actores/james_spader.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (95,'Megan Boone','M','/resources/img/actores/megan_boone.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (96,'Diego Klattenhoff','H','/resources/img/actores/diego_klattenhoff.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (97,'Ryan Eggold','H','/resources/img/actores/ryan_eggold.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (98,'Helen McCrory','M','/resources/img/actores/helen_mccrory.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (99,'Paul Anderson','H','/resources/img/actores/paul_anderson.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (100,'Sophie Rundle','H','/resources/img/actores/sophie_rundle.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (101,'Joel McHale','H','/resources/img/actores/joel_mchale.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (102,'John Oliver','H','/resources/img/actores/john_oliver.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (103,'Chevy Chase','H','/resources/img/actores/chevy_chase.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (104,'Jennifer Aniston','M','/resources/img/actores/jennifer_aniston.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (105,'Courteney Cox','M','/resources/img/actores/courtney_cox.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (106,'Lisa Kudrow','M','/resources/img/actores/lisa_kudrow.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (107,'Matt LeBlanc','H','/resources/img/actores/matt_leblanc.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (108,'Matthew Perry','H','/resources/img/actores/matthew_perry.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (109,'Jim Parsons','H','/resources/img/actores/jim_parsons.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (110,'Melissa Rauch','M','/resources/img/actores/melissa_rauch.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (111,'Kaley Cuoco','M','/resources/img/actores/kaley_cuoco.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (112,'Johnny Galecki','H','/resources/img/actores/johnny_galecki.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (113,'Kunal Nayar','H','/resources/img/actores/kunal_nayar.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (114,'Simon Helberg','H','/resources/img/actores/simon_helberg.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (115,'Mayim Bialik','H','/resources/img/actores/mayim_bialik.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (116,'Rodolfo Sancho','H','/resources/img/actores/rodolfo_sancho.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (117,'Aura Garrido','M','/resources/img/actores/aura_garrido.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (118,'Nacho Fresneda','H','/resources/img/actores/nacho_fresneda.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (119,'Cayetana Guillén Cuervo','H','/resources/img/actores/cayetana_guillen_cuervo.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (120,'Julia Garner','M','/resources/img/actores/julia_garner.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (121,'Laura Linney','M','/resources/img/actores/laura_linney.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (122,'Sofia Hublitz','M','/resources/img/actores/sofia_hublitz.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (123,'Melanie Chandra','M','/resources/img/actores/melanie_chandra.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (124,'Bonnie Somerville','M','/resources/img/actores/bonnie_somerville.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (125,'Raza Jaffrey','M','/resources/img/actores/raza_jaffrey.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (126,'Marcia Gay Harden','M','/resources/img/actores/marcia_gay_harden.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (127,'Will Smith','M','/resources/img/actores/will_smith.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (128,'Claire Danes','F','/resources/img/actores/claire_danes.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (129,'Damian Lewis','M','/resources/img/actores/damian_lewis.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (131,'Rupert Friend','M','/resources/img/actores/rupert_friend.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (132,'Alfonso Ribeiro','M','/resources/img/actores/alfonso_ribeiro.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (133,'Tatyana Ali','F','/resources/img/actores/tatyana_ali.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (134,'James Avery','M','/resources/img/actores/james_avery.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (135,'Janet Hubert-Whitten','F','/resources/img/actores/janet_hubert_whitten.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (136,'Morena Baccarin','F','/resources/img/actores/morena_baccarin.jpg',15);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (137,'Carlos Cuevas','M','/resources/img/actores/carlos_cuevas.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (138,'David Solans','M','/resources/img/actores/david_solans.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (139,'Francesc Orella','M','/resources/img/actores/francesc_orella.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (140,'Elisabet Casanovas','F','/resources/img/actores/elisabet_casanovas.jpg',14);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (141,'Joaquin Phoenix','M','/resources/img/actores/joaquin_phoenix.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (142,'Spike Jonze','M','/resources/img/actores/spike_jonze.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (143,'Rooney Mara','F','/resources/img/actores/rooney_mara.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (144,'Scarlett Johansson','F','/resources/img/actores/scarlet_johansson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (145,'Ricardo Darín','M','/resources/img/actores/ricardo_darin.jpg',16);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (146,'Soledad Villamil','F','/resources/img/actores/soledad_villamil.jpg',16);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (147,'Carla Quevedo','F','/resources/img/actores/carla_quevedo.jpg',16);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (148,'Salvatore Cascio','M','/resources/img/actores/salvatore_cascio.jpg',12);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (149,'Marco Leonardi','M','/resources/img/actores/marco_leonardi.jpg',12);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (150,'Agnese Nano','F','/resources/img/actores/agnese_nano.jpg',12);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (151,'Christian Bale','H','/resources/img/actores/christian_bale.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (152,'Heath Ledger','H','/resources/img/actores/heath_ledger.jpg',7);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (153,'Maggie Gyllenhaal','M','/resources/img/actores/maggie_gyllenhaal.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (154,'Morgan Freeman','H','/resources/img/actores/morgan_freeman.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (155,'Gwyneth Paltrow','M','/resources/img/actores/gwyneth-paltrow.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (156,'Kevin Spacey','H','/resources/img/actores/kevin-spacey.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (157,'Tom Holland','H','/resources/img/actores/tom_holland.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (158,'Zendaya Maree','M','/resources/img/actores/zendaya.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (159,'Jon Favreau','H','/resources/img/actores/jon_favreau.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (160,'Johnny Depp','H','/resources/img/actores/johnny_depp.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (161,'Orlando Bloom','H','/resources/img/actores/orlando_bloom.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (162,'Keira Knightley','M','/resources/img/actores/keira_knightley.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (163,'Zoe Saldaña','M','/resources/img/actores/zoe_saldana.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (164,'Robert Downey Jr.','H','/resources/img/actores/robert_downey_jr.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (165,'Chris Evans','H','/resources/img/actores/chris_evans.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (166,'Scarlett Johansson','M','/resources/img/actores/scarlett_johansson.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (167,'Paul Rudd','H','/resources/img/actores/paul_rudd.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (168,'Michael Douglas','H','/resources/img/actores/michael_douglas.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (169,'Enver Gjokaj','H','/resources/img/actores/enver_gjokaj.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (170,'Hayley Atwell','M','/resources/img/actores/hayley_atwell .jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (171,'Dominic Cooper','H','/resources/img/actores/dominic_cooper.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (172,'James DArcy','H','/resources/img/actores/james_darcy.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (173,'Pedro Pascal','H','/resources/img/actores/pedro_pascal.jpg',16);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (174,'Carl Weathers','H','/resources/img/actores/carl_weathers.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (175,'Werner Herzog','H','/resources/img/actores/werner_herzog.jpg',4);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (176,'Omid Abtahi','H','/resources/img/actores/omid_abtahi.jpg',17);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (177,'Anson Mount','H','/resources/img/actores/anson_mounti.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (178,'Iwan Rheon','H','/resources/img/actores/iwan_rheon.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (179,'Serinda Swan','M','/resources/img/actores/serinda_swan.jpg',3);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (180,'Ken Leung','H','/resources/img/actores/ken_leung.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (181,'Christian Slater','H','/resources/img/actores/christian_slater.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (182,'Rami Malek','H','/resources/img/actores/rami_malek.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (183,'Carly Chaikin','M','/resources/img/actores/carly_chaikin.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (184,'BD Wong','H','/resources/img/actores/bd_wong.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (185,'Andrew Lincoln','H','/resources/img/actores/andrew_lincoln.jpg',2);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (186,'Steven Yeun','H','/resources/img/actores/steven_yeun.jpg',15);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (187,'Norman Reedus','H','/resources/img/actores/norman_reedus.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (188,'Danai Gurira','M','/resources/img/actores/danai_gurira.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (189,'Jesse Spencer','H','/resources/img/actores/jesse_spencer.jpg',7);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (190,'Taylor Kinney','H','/resources/img/actores/taylor_kinney.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (191,'Monica Raymund','M','/resources/img/actores/monica_raymund.jpg',1);
INSERT INTO `actor` (`ID`, `NOMBRE`, `SEXO`, `FOTO`, `ID_PAIS`) VALUES (192,'Charlie Barnett','M','/resources/img/actores/charlie_barnett.jpg',1);
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;

--
-- Dumping data for table `actor_pelicula`
--

/*!40000 ALTER TABLE `actor_pelicula` DISABLE KEYS */;
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (14,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (15,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (16,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (17,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (18,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (19,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (20,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (21,2);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (22,3);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (23,3);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (24,3);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (25,3);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (26,3);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (27,4);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (28,4);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (29,4);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (30,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (31,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (32,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (33,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (34,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (35,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (36,5);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (37,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (38,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (39,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (40,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (41,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (42,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (43,6);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (19,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (44,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (45,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (46,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (47,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (48,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (49,7);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (50,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (51,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (52,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (53,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (54,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (55,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (56,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (57,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (58,8);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (59,9);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (60,9);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (61,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (62,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (63,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (64,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (65,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (66,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (67,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (38,10);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (68,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (69,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (70,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (71,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (72,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (73,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (74,11);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (75,12);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (76,12);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (77,12);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (78,13);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (79,13);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (80,13);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (81,13);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (1,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (2,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (3,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (4,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (5,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (6,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (7,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (8,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (9,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (10,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (11,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (12,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (13,1);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (16,14);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (121,14);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (141,15);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (142,15);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (143,15);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (144,15);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (145,16);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (146,16);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (147,16);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (148,17);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (149,17);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (150,17);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (151,18);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (152,18);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (153,18);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (154,18);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (154,19);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (155,19);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (156,19);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (157,20);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (158,20);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (159,20);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (34,20);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (160,21);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (161,21);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (162,21);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (163,21);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (164,22);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (165,22);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (166,22);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (157,21);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (167,23);
INSERT INTO `actor_pelicula` (`ID_ACTOR`, `ID_PELICULA`) VALUES (168,23);
/*!40000 ALTER TABLE `actor_pelicula` ENABLE KEYS */;

--
-- Dumping data for table `actor_serie`
--

/*!40000 ALTER TABLE `actor_serie` DISABLE KEYS */;
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (83,1);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (84,1);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (85,1);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (86,2);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (87,2);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (88,2);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (89,2);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (90,3);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (91,3);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (92,3);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (93,3);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (94,4);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (95,4);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (96,4);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (97,4);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (98,5);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (99,5);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (100,5);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (66,5);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (101,6);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (102,6);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (103,6);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (3,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (104,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (105,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (106,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (107,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (108,7);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (109,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (110,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (111,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (112,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (113,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (114,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (115,8);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (116,9);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (117,9);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (118,9);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (119,9);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (56,10);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (120,10);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (121,10);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (122,10);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (123,11);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (124,11);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (125,11);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (126,11);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (6,12);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (127,14);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (132,14);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (133,14);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (134,14);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (135,14);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (128,13);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (129,13);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (131,13);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (136,13);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (137,15);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (138,15);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (139,15);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (140,15);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (169,16);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (170,16);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (171,16);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (172,16);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (173,17);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (174,17);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (175,17);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (176,17);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (177,18);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (178,18);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (179,18);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (180,18);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (181,19);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (182,19);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (183,19);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (184,19);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (185,20);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (186,20);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (187,20);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (188,20);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (189,21);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (190,21);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (191,21);
INSERT INTO `actor_serie` (`ID_ACTOR`, `ID_SERIE`) VALUES (192,21);
/*!40000 ALTER TABLE `actor_serie` ENABLE KEYS */;

--
-- Dumping data for table `director`
--

/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (1,'Eric Darnell','/resources/img/directores/eric_darnell.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (2,'Tom McGrath','/resources/img/directores/tom_mcgrath.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (3,'Dean DeBlois','/resources/img/directores/dean_deblois.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (4,'Chris Sanders','/resources/img/directores/chris_sanders.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (5,'Marc Forster','/resources/img/directores/marc_forster.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (6,'Nima Nourizadeh','/resources/img/directores/nima_nourizadeh.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (7,'Renny Harlin','/resources/img/directores/renny_harlin.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (8,'Gareth Edwards','/resources/img/directores/gareth_edwards.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (9,'Steven Spielberg','/resources/img/directores/steven_spielberg.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (10,'John Francis Daley','/resources/img/directores/john_francis_daley.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (11,'Jonathan Goldstein','/resources/img/directores/jonathan_goldstein.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (12,'Clint Eastwood','/resources/img/directores/clint_eastwood.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (13,'Christopher Nolan','/resources/img/directores/christopher_nolan.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (14,'Sam Raimi','/resources/img/directores/sam_raimi.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (15,'James DeMonaco','/resources/img/directores/james_demonaco.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (16,'Peter Jackson','/resources/img/directores/peter_jackson.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (17,'David Petrarca','/resources/img/directores/david_petrarca.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (18,'Jeff Myers','/resources/img/directores/jeff_myers.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (19,'Michael Hirst','/resources/img/directores/michael_hirst.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (20,'Joe Carnahan','/resources/img/directores/joe_carnahan.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (21,'Otto Bathurst','/resources/img/directores/otto_bathurst.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (22,'Dan Harmon','/resources/img/directores/dan_harmon.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (23,'David Crane','/resources/img/directores/david_crane.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (24,'Marc Vigil','/resources/img/directores/marc_vigil.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (25,'Bill Dubuque','/resources/img/directores/bill_dubuque.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (26,'Michael Seitzman','/resources/img/directores/michael_seitzman.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (27,'Bill Dubuque','/resources/img/directores/');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (28,'Michael Seitzman','/resources/img/directores/');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (29,'Howard Gordon','/resources/img/directores/howard_gordon.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (30,'Andy Borowitz','/resources/img/directores/andy_borowitz.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (31,'Héctor Lozano','/resources/img/directores/hector_lozano.jpeg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (32,'Spike Jonze','/resources/img/directores/spike_jonze.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (33,'Juan José Campanella','/resources/img/directores/juan_jose_campanella.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (34,'Giuseppe Tornatore','/resources/img/directores/giuseppe_tornatore.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (35,'David Fincher','/resources/img/directores/david_fincher.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (36,'Jon Watts','/resources/img/directores/jon_watts.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (37,'Gore Verbinski','/resources/img/directores/gore_verbinski.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (38,'Hermanos Russo','/resources/img/directores/hermanos_russo.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (39,'Peyton Reed','/resources/img/directores/peyton_reed.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (40,'Louis DEsposito','/resources/img/directores/louis_d_esposito.png');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (41,'Bryce Dallas Howard','/resources/img/directores/bryce_dallas_howard.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (42,'Roel Reiné','/resources/img/directores/roel_reine.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (43,'Sam Esmail','/resources/img/directores/sam_esmail.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (44,'Frank Darabont','/resources/img/directores/frank_darabont.jpg');
INSERT INTO `director` (`ID`, `NOMBRE`, `FOTO`) VALUES (45,'Michael Brandt','/resources/img/directores/michael_brandt.jpg');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;

--
-- Dumping data for table `director_serie`
--

/*!40000 ALTER TABLE `director_serie` DISABLE KEYS */;
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (1,18);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (2,19);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (3,20);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (4,21);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (5,22);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (6,23);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (7,24);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (8,25);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (9,26);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (10,27);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (11,28);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (12,4);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (13,29);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (14,30);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (15,31);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (16,40);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (17,41);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (18,42);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (19,43);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (20,44);
INSERT INTO `director_serie` (`ID_SERIE`, `ID_DIRECTOR`) VALUES (21,45);
/*!40000 ALTER TABLE `director_serie` ENABLE KEYS */;

--
-- Dumping data for table `genero`
--

/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (1,'Animación');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (2,'Comedia');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (3,'Fantasía');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (4,'Infantil');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (5,'Aventura');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (6,'Acción');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (7,'Zombies');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (8,'Ciencia ficción');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (9,'Terror');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (10,'Suspenso');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (11,'Misterio');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (12,'Crimen');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (13,'Drama');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (14,'Biográfica');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (15,'Superhéroes');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (16,'Terror');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (17,'Histórico');
INSERT INTO `genero` (`ID`, `NOMBRE`) VALUES (18,'Romance');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;

--
-- Dumping data for table `genero_pelicula`
--

/*!40000 ALTER TABLE `genero_pelicula` DISABLE KEYS */;
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (1,2);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (3,2);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (4,2);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,2);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,3);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (7,3);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (2,4);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,5);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (9,5);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,5);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,6);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,6);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,7);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,7);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,7);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,8);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,8);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,8);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (11,8);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (12,8);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,9);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (14,9);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,10);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,10);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,10);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,10);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,11);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,11);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,11);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (15,11);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (9,12);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (3,13);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,13);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,13);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (1,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (2,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (3,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (4,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (7,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (9,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (11,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (12,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (14,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (15,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (16,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (17,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (18,1);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (4,14);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,14);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,15);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,15);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (18,15);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,16);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (11,16);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (18,16);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,17);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (11,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (12,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,18);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (10,19);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (11,19);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (12,19);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (13,19);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,20);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,20);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,20);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (2,20);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (3,21);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,21);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,21);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (3,22);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,22);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,22);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,22);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (2,23);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (5,23);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (6,23);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (12,23);
INSERT INTO `genero_pelicula` (`ID_GENERO`, `ID_PELICULA`) VALUES (8,23);
/*!40000 ALTER TABLE `genero_pelicula` ENABLE KEYS */;

--
-- Dumping data for table `genero_serie`
--

/*!40000 ALTER TABLE `genero_serie` DISABLE KEYS */;
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,1);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,1);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,1);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (17,1);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (1,2);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,2);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,2);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,3);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,3);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,3);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (17,3);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (11,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (12,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (16,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (17,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (18,4);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (12,5);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,5);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,6);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,6);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,7);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,7);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (18,7);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,8);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (18,8);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (3,9);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,9);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,9);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,9);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,10);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (11,10);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (12,10);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,10);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,11);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (11,11);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (12,11);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,11);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (1,12);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,12);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,15);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (18,15);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,15);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,13);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,13);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (2,14);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,16);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,16);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,16);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (3,17);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,17);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,17);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,17);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,18);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,18);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,18);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,18);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,19);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (11,19);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (12,19);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,19);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (8,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (9,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (10,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,20);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (6,21);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (5,21);
INSERT INTO `genero_serie` (`ID_GENERO`, `ID_SERIE`) VALUES (13,21);
/*!40000 ALTER TABLE `genero_serie` ENABLE KEYS */;

--
-- Dumping data for table `pais`
--

/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (1,'EE.UU');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (2,'Reino Unido');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (3,'Canadá');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (4,'Alemania');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (5,'Sudáfrica');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (6,'Israel');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (7,'Australia');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (8,'Suecia');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (9,'Francia');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (10,'Japón');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (11,'Irlanda');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (12,'Italia');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (13,'Bélgica');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (14,'España');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (15,'Brasil');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (16,'Argentina');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (17,'Corea del Sur');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (18,'Chile');
INSERT INTO `pais` (`ID`, `NOMBRE`) VALUES (19,'Irán');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

--
-- Dumping data for table `pelicula`
--

/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (1,'Madagascar','01:26:00','Mark Burton','/resources/img/peliculas/defaultFoto.png','Cuatro animales muy mimados del zoo de Nueva York naufragan en la isla de Madagascar y deben aprender a sobrevivir en un mundo salvaje.','2005-07-13',2);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (2,'Cómo entrenar a tu dragón ','01:38:00','Dean DeBlois','/resources/img/peliculas/como_entrenar_a_tu_dragon.png','Hipo, un vikingo adolescente, comienza las clases de entrenamiento con dragones y ve por fin una oportunidad para demostrar que es capaz de convertirse en guerrero cuando hace amistad con un dragón herido.','2010-03-26',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (3,'Guerra mundial Z ','01:55:00','Damon Lindelof','/resources/img/peliculas/madagascar.png','Cuando una pandemia de zombis amenaza con destruir a la humanidad, un exinvestigador de Naciones Unidas es obligado a regresar al servicio para intentar descubrir la fuente de la infección.','2013-06-21',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (4,'Project X','01:28:00','Matt Drake','/resources/img/peliculas/project_x.png','Tres estudiantes de secundaria deciden organizar una fiesta salvaje en casa de uno de ellos.Sin embargo, una serie de complicaciones imprevistas harán que la fiesta se descontrole.','2012-03-02',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (5,'Deep Blue Sea','01:45:00','Duncan Kennedy','/resources/img/peliculas/deep_blue_sea.png','Una bióloga marina trata de encontrar la clave de la regeneración de los tejidos del cerebro humano que modifica el ADN de unos tiburones y los convierte en monstruos depredadores que pondrán en peligro a todo el equipo.','1999-07-28',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (6,'Godzilla (película de 2014)','02:03:00','Max Borenstein','/resources/img/peliculas/godzilla_2014.jpg','Godzilla, Rey de los Monstruos, surge para combatir a enemigos enormes y malos que se han estado alimentando con los reactores de una planta nuclear y ahora amenazan a la humanidad con aniquilarla.','2014-05-16',10);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (7,'Ready Player One','02:20:00','Donald De Line','/resources/img/peliculas/ready_player_one.jpg','El adolescente Wade Watts es solo una de las millones de personas que se evaden del sombrío mundo real para sumergirse en un mundo utópico virtual donde todo es posible: OASIS. Wade participa en la búsqueda del tesoro que el creador de este mundo imaginario dejó oculto en su obra. No obstante, hay gente muy peligrosa compitiendo contra él.','2018-03-20',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (8,'Noche de juegos','01:40:00','Mark Perez','/resources/img/peliculas/noche_de_juegos.jpg','Un grupo de amigos que se reúne una vez a la semana para jugar cambia su rutina y decide resolver un falso asesinato, pero, a medida que la partida avanza, se dan cuenta de que esta vez lo que está ocurriendo es real.','2018-02-23',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (9,'El francotirador','02:12:00','Jason Dean Hall','/resources/img/peliculas/el_francotirador.jpg','El francotirador y SEAL de la Armada estadounidense Chris Kyle salva muchas vidas en los campos de batalla en Irak mientras se esfuerza por ser un buen marido y padre con sus seres queridos de regreso en Estados Unidos.','2014-12-25',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (10,'Origen','02:28:00','Christopher Nolan','/resources/img/peliculas/origen.jpg','La misión, llamada “inserción”, consiste en implantar el origen de una idea o concepto en la mente de su cliente rival para que la interprete como propia. Así, Dom Cobb reúne a un grupo de especialistas que viajará por la mente de su presa, Robert Fischer Jr.','2010-08-06',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (11,'Spider-Man','02:02:00','David Koepp','/resources/img/peliculas/spider_man.jpg','Un tímido estudiante se vuelve en un luchador contra el crimen, desde que la picadura de una araña mutante le da poderes extraordinarios.','2002-06-24',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (12,'Election: La noche de las bestias','01:49:00','James DeMonaco','/resources/img/peliculas/la_purga_election_2016.jpg','Hace 18 años, Charlie Roan presenció el asesinato de su familia durante la noche de la Purga. En el presente, Charlie es candidata a la presidencia y quiere acabar con el régimen impuesto hace 20 años, que utiliza este día para eliminar a los más pobres y recortar el gasto público, pero antes deberá sobrevivir a doce horas de terror absoluto.','2016-07-01',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (13,'El hobbit: la desolación de Smaug','02:41:00','Fran Walsh','/resources/img/peliculas/el_hobbit_la_desolacion_de_smaug.jpg','Bilbo y sus compañeros continúan su viaje hacia el este y enfrentan muchos peligros de camino a la Montaña Solitaria. Su recorrido culmina con un encuentro con el temible dragón Smaug.','2013-12-13',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (14,'peliucla de alexz','00:30:00','dsadsa','/resources/img/peliculas/peliucla_de_alexz_14.jpg','dsadsadsa','2000-12-11',6);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (15,'Her','02:06:00','Spike Jonze','/resources/img/peliculas/her.jpg','En un futuro cercano, Theodore, un hombre solitario a punto de divorciarse que trabaja en una empresa como escritor de cartas para terceras personas, compra un día un nuevo sistema operativo basado en el modelo de Inteligencia Artificial, diseñado para satisfacer todas las necesidades del usuario. Para su sorpresa, se crea una relación romántica entre él y Samantha','2014-02-21',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (16,'El secreto de sus ojos','02:10:00','Eduardo Sacheri','/resources/img/peliculas/el_secreto_de_sus_ojos.jpg','Benjamín Espósito es oficial de un Juzgado de Instrucción de Buenos Aires recién retirado. Obsesionado por un brutal asesinato ocurrido veinticinco años antes, en 1974, decide escribir una novela sobre el caso, del cual fue testigo y protagonista. Reviviendo el pasado, viene también a su memoria el recuerdo de una mujer, a quien ha amado en silencio durante todos esos años.','2009-09-25',16);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (17,'Cinema Paradiso ','02:35:00','Giuseppe Tornatore','/resources/img/peliculas/cinema_paradiso.jpg','Cinema Paradiso es una historia de amor por el cine. Narra la historia de Salvatore, un niño de un pueblecito italiano en el que el único pasatiempo es ir al cine. ','1989-12-18',12);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (18,'The Dark Knight','02:32:00','Jonathan Nolan','/resources/img/peliculas/the_dark_nigth.jpg','Batman tiene que mantener el equilibrio entre el heroísmo y el vigilantismo para pelear contra un vil criminal conocido como el Guasón, que pretende sumir Ciudad Gótica en la anarquía.','2008-07-18',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (19,'Se7en','02:07:00','Andrew Kevin Walker','/resources/img/peliculas/seven.jpg','Somerset es un solitario y veterano detective a punto de retirarse que se encuentra con Mills, un joven impulsivo. Ambos investigan un particular asesinato. Es este el primero de una serie de crímenes que aluden los siete pecados capitales.','1996-01-10',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (20,'Spider-Man: Far From Home','02:10:00','Chris McKenna','/resources/img/peliculas/spiderman.jpg','Peter Parker decide pasar unas merecidas vacaciones en Europa junto a MJ, Ned y el resto de sus amigos. Sin embargo, Peter debe volver a ponerse el traje de Spider-Man cuando Nick Fury le encomienda una nueva misión: frenar el ataque de unas criaturas que están causando el caos en el continente.','2019-07-02',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (21,'Piratas del Caribe. La maldición de la Perla Negra','02:23:00','Stuart Beattie','/resources/img/peliculas/pirates_of_the_caribbean_TCOBP.jpg','El capitán Barbossa le roba el barco al pirata Jack Sparrow y secuestra a Elizabeth, amiga de Will Turner. Barbossa y su tripulación son víctimas de un conjuro que los condena a vivir eternamente y a transformarse cada noche en esqueletos vivientes.','2003-06-28',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (22,'Vengadores: Infinity War','02:29:00','Christopher Markus','/resources/img/peliculas/avengers_infinity_war.jpg','Los superhéroes se alían para vencer al poderoso Thanos, el peor enemigo al que se han enfrentado. Si Thanos logra reunir las seis gemas del infinito: poder, tiempo, alma, realidad, mente y espacio, nadie podrá detenerlo.','2018-04-27',1);
INSERT INTO `pelicula` (`ID`, `TITULO`, `DURACION`, `GUION`, `POSTER`, `SINOPSIS`, `ANIO`, `ID_PAIS`) VALUES (23,'Ant-Man','01:57:00','Edgar Wright','/resources/img/peliculas/ant_man.jpg','Un ladrón con la habilidad de encogerse de tamaño pero crecer en fuerza debe sacar su héroe interior y ayudar a su mentor a llevar a cabo un plan para salvar al mundo.','2015-06-29',1);
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;

--
-- Dumping data for table `pelicula_director`
--

/*!40000 ALTER TABLE `pelicula_director` DISABLE KEYS */;
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (2,3);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (2,4);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (3,5);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (4,6);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (5,7);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (6,8);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (7,9);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (8,10);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (8,11);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (9,12);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (10,13);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (11,14);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (12,15);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (13,17);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (1,1);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (1,2);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (14,15);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (15,32);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (16,33);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (17,34);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (18,13);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (19,35);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (20,36);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (21,37);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (22,38);
INSERT INTO `pelicula_director` (`ID_PELICULA`, `ID_DIRECTOR`) VALUES (23,39);
/*!40000 ALTER TABLE `pelicula_director` ENABLE KEYS */;

--
-- Dumping data for table `pelicula_plataforma`
--

/*!40000 ALTER TABLE `pelicula_plataforma` DISABLE KEYS */;
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (1,6,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (2,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (2,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (3,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (3,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (4,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (4,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (5,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (5,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (6,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (6,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (7,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (7,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (8,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (8,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (9,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (9,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (10,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (10,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (10,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (11,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (12,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (13,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (14,4,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (14,5,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (15,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (15,5,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (16,5,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (16,6,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (17,3,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (17,5,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (18,1,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (18,2,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (18,6,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (19,6,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (20,6,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (21,4,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (22,4,NULL);
INSERT INTO `pelicula_plataforma` (`ID_PELICULA`, `ID_PLATAFORMA`, `CADUCA`) VALUES (23,4,NULL);
/*!40000 ALTER TABLE `pelicula_plataforma` ENABLE KEYS */;

--
-- Dumping data for table `plataforma`
--

/*!40000 ALTER TABLE `plataforma` DISABLE KEYS */;
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (1,'HBO','/resources/img/plataforma/hbo.jpg');
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (2,'Netflix','/resources/img/plataforma/netflix.jpg');
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (3,'Amazon Prime','/resources/img/plataforma/amazon.jpg');
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (4,'Disney Plus','/resources/img/plataforma/disney.jpg');
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (5,'Filmin','/resources/img/plataforma/filmin.jpg');
INSERT INTO `plataforma` (`ID`, `NOMBRE`, `LOGO`) VALUES (6,'Movistar','/resources/img/plataforma/movistar.jpg');
/*!40000 ALTER TABLE `plataforma` ENABLE KEYS */;

--
-- Dumping data for table `rol`
--

/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` (`ID`, `NOMBRE`) VALUES (1,'user');
INSERT INTO `rol` (`ID`, `NOMBRE`) VALUES (2,'admin');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;

--
-- Dumping data for table `serie`
--

/*!40000 ALTER TABLE `serie` DISABLE KEYS */;
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (1,'Knightfall','2017-12-06','Los Templarios dedicaron su vida a cuidar del Santo Grial. Knightfall es un drama histórico que recrea las cruzadas y la vida de esta hermandad, una mirada a los últimos días de los Caballeros Templarios durante el siglo XIV.','/resources/img/series/knightfall.jpg',1,10,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (2,'Rick and Morty','2013-12-02','Rick & Morty relata las aventuras de un científico loco, mal encarado y alcohólico que vive en casa de su hija, Beth, junto a Jerry, el marido de ésta y los dos hijos de la pareja, Summer y Morty, compañero de su abuelo en sus andanzas.','/resources/img/series/rick_and_morty.jpg',4,41,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (3,'Vikingos','2013-03-02','Narra las aventuras del héroe Ragnar Lothbrok, de sus hermanos vikingos y su familia, cuando él se subleva para convertirse en el rey de las tribus vikingas. Además de ser un guerrero valiente, Ragnar encarna las tradiciones nórdicas de la devoción a los dioses. Según la leyenda era descendiente directo del dios Odín','/resources/img/series/vikings.jpg',6,79,2);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (4,'The Blacklist','2013-09-23','Durante décadas, el ex agente de gobierno Raymond \'Red\' Reddington (James Spader) ha sido uno de los fugitivos más buscados por el FBI. Tras esto, decide hacer al FBI una oferta un tanto enigmática: ayudar a atrapar al desaparecido terrorista Ranko Zamani, bajo la condición de hablar sólo con la agente Elisabeth Keen.','/resources/img/series/the_blacklist.jpg',7,146,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (5,'Peaky Blinders','2013-09-12','Las actividades del ambicioso jefe de la banda, Thomas Shelby (Cillian Murphy), llaman la atención del Inspector jefe Chester Campbell, un detective de la Real Policía Irlandesa que es enviado desde Belfast para limpiar la ciudad y encontrar el cargamento de armas que fue robado de la fábrica local.','/resources/img/series/peaky_blinders.jpg',5,30,2);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (6,'Community','2009-09-17','Community es una comedia televisiva estadounidense creada por Dan Harmon y emitida por NBC y Yahoo!, que trata sobre un grupo de estudiantes que asisten a una universidad comunitaria situada en la ciudad ficticia de Greendale, Colorado.','/resources/img/series/community.jpg',6,110,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (7,'Friends','1994-09-22','Friends nos contaba las peripecias de un grupo de amigos que viven en Manhattan (Nueva York), ellos eran Monica Geller, su hermano Ross Geller, Rachel Green una amiga de la infancia, sus vecinos Chandler Bing y Joey Tribbiani y otra amiga, Phoebe Buffay.','/resources/img/series/friends.jpg',10,236,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (8,'The Big Bang Theory ','2007-09-24','La serie comienza con la llegada de Penny, aspirante a actriz, al apartamento vecino del que comparten Sheldon y Leonard, dos físicos que trabajan en el Instituto Tecnológico de California (Caltech). Leonard se enamora desde el primer momento de Penny.','/resources/img/series/the_big_bang_theory.jpg',12,279,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (9,'El Ministerio del Tiempo','2015-02-24','El Ministerio del Tiempo es una institución gubernamental secreta que depende directamente de la Presidencia del Gobierno español. Solo monarcas, presidentes y un número exclusivo de personas saben de él. El paso hacia otras épocas se realiza a través de puertas vigiladas por las patrullas del ministerio.','/resources/img/series/el_ministerio_del_tiempo.jpg',3,34,14);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (10,'Ozark','2017-07-21','La historia gira en torno a la familia Byrde, formada por el matrimonio de Marty y Wendy y sus dos hijos adolescentes, Charlotte y Jonah. ... Los Byrde se verán envueltos en el mundo clandestino del blanqueo de dinero ilegal para un cártel de drogas mexicano.','/resources/img/series/ozark.jpg',3,30,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (11,'Código Negro','2015-09-30','Basada en un documental de Ryan McGarry, Code Black es un drama médico que tiene lugar en la sala de emergencias más conocida del país, donde la cantidad de pacientes es mucho mayor que los medios y recursos con los que cuentan los sanitarios.','/resources/img/series/code_black.jpg',3,47,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (12,'nueva serie','1933-05-16','dsadsdsadsadsa','/resources/img/series/nueva_serie.png',1,12,4);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (13,'Homeland','2011-10-02','El sargento de la Marina Nicholas Brody (Damian Lewis) regresa a casa ocho años después de su desaparición en Irak, donde vivió encarcelado y sometido a tortura. Finalmente, un comando de las fuerzas especiales lo localiza durante una misión. La joven Carrie Mathison (Claire Danes), una impulsiva e intuitiva agente de la CIA, sospecha que Brody se ha pasado al enemigo durante su cautiverio, pues unos meses antes un terrorista condenado a muerte le habló de un soldado norteamericano que había cambiado de bando.','/resources/img/series/homeland.jpg',8,96,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (14,'El Príncipe de Bel-Air','1990-09-10','Will Smith interpreta a un joven de Philadelphia que se traslada a vivir con sus ricos parientes al lujoso barrio de Bel-Air, en California. La familia la forman sus tíos y sus primos Carlton, Hilary y Ashley; además está el mayordomo Geoffrey. El incorregible y avispado Will deberá adaptarse a su nueva familia, a un nivel de vida al que no estaba acostumbrado y a las reglas de convivencia impuestas por su tío Phil, un juez muy preocupado por su reputación.','/resources/img/series/el_principe_bel_air.jpg',6,148,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (15,'Merlí','2015-09-14','Merlí es un profesor de una materia denostada y apreciada a partes iguales, filosofía. Un tipo contradictorio, y con virtudes y defectos a la par. La producción se centra en la relación del maestro con sus alumnos y, sobre todo, en «los conflictos entre padres e hijos, estudiantes y profesores...»','/resources/img/series/merli.jpg',3,40,14);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (16,'Agent Carter','2015-01-06','Serie ambientada en 1946 y que gira en torno a la Agente Peggy Carter . La paz llega tras la Segunda Guerra Mundial, lo que ha supuesto un duro golpe para ella que se encuentra marginada cuando los hombres regresan a casa después del combate en el extranjero.','/resources/img/series/agent_carter.jpg',2,18,2);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (17,'The Mandalorian','2019-11-12','El mandaloriano tiene lugar «después de la caída del Imperio y antes de la aparición de la Primera Orden» y sigue a «un pistolero solitario en los confines de la galaxia, lejos de la autoridad de la Nueva República».','/resources/img/series/the_mandalorian.jpg',1,8,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (18,'Inhumans','2017-10-29','Después de haber sufrido un golpe de estado en su hogar en la Luna, la familia real de los Inhumanos, dirigidos por Black Bolt, escapan a Hawái, en donde buscarán una manera de salvarse a sí mismos y al resto del mundo.','/resources/img/series/inhumans.jpg',1,8,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (19,'Mr. Robot','2015-06-24','Mr. Robot sigue los pasos de Elliot Alderson (Rami Malek), un joven programador que trabaja como ingeniero de ciberseguridad de día y como hacker/justiciero de noche. Pero ser un genio tiene un precio: Elliot sufre un trastorno de ansiedad social que le hace un bicho raro.','/resources/img/series/mr_robot.jpg',4,45,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (20,'The Walking Dead','2010-10-31','Rick Grimes es un oficial de policía que despierta de un largo estado de coma y se da cuenta que el mundo que conocía ya no existe. Ahora está devastado e invadido por zombis.','/resources/img/series/the_walking_dead.jpg',10,146,1);
INSERT INTO `serie` (`ID`, `TITULO`, `FECHA_INICIO`, `SINOPSIS`, `POSTER`, `TEMPORADAS`, `CAPITULOS`, `ID_PAIS`) VALUES (21,'Chicago Fire','2012-10-10','Chicago Fire intenta profundizar en una de las profesiones más peligrosas y altruistas de la actualidad. El teniente Matthew Casey está en pleno proceso de divorcio y trata de afrontar el día a día y su profesión con normalidad.','/resources/img/series/chicago_fire.jpg',8,179,1);
/*!40000 ALTER TABLE `serie` ENABLE KEYS */;

--
-- Dumping data for table `serie_plataforma`
--

/*!40000 ALTER TABLE `serie_plataforma` DISABLE KEYS */;
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (1,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (1,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (2,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (2,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (3,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (3,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (4,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (4,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (5,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (5,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (6,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (6,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (7,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (7,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (7,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (8,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (8,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (8,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (9,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (10,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (11,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (12,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (12,4);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (13,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (13,5);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (13,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (13,6);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (14,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (14,5);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (15,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (15,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (15,5);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (15,6);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (16,4);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (17,4);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (18,4);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (18,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (19,6);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (19,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (20,6);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (20,1);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (20,2);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (20,3);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (21,6);
INSERT INTO `serie_plataforma` (`ID_SERIE`, `ID_PLATAFORMA`) VALUES (21,3);
/*!40000 ALTER TABLE `serie_plataforma` ENABLE KEYS */;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`ID`, `NOMBRE`, `APELLIDOS`, `EMAIL`, `ID_ROL`, `FOTO`, `FECHA_NACIMIENTO`, `SEXO`, `PASSWORD`, `ID_PAIS`, `FECHA_ALTA`) VALUES (2,'yuriy','mraka','yuriy@gmail.com',1,'/resources/img/usuarios/yuriy.jpg','1931-05-03','M','1234',6,'2020-05-15');
INSERT INTO `usuario` (`ID`, `NOMBRE`, `APELLIDOS`, `EMAIL`, `ID_ROL`, `FOTO`, `FECHA_NACIMIENTO`, `SEXO`, `PASSWORD`, `ID_PAIS`, `FECHA_ALTA`) VALUES (3,'esther','morales','esther@gmail.com',1,'/resources/img/usuarios/esther.jpg','1932-05-09','M','1234',3,'2020-05-15');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

--
-- Dumping data for table `usuario_pelicula`
--

/*!40000 ALTER TABLE `usuario_pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_pelicula` ENABLE KEYS */;

--
-- Dumping data for table `usuario_plataforma`
--

/*!40000 ALTER TABLE `usuario_plataforma` DISABLE KEYS */;
INSERT INTO `usuario_plataforma` (`ID_USUARIO`, `ID_PLATAFORMA`) VALUES (3,2);
INSERT INTO `usuario_plataforma` (`ID_USUARIO`, `ID_PLATAFORMA`) VALUES (3,3);
INSERT INTO `usuario_plataforma` (`ID_USUARIO`, `ID_PLATAFORMA`) VALUES (2,3);
/*!40000 ALTER TABLE `usuario_plataforma` ENABLE KEYS */;

--
-- Dumping data for table `usuario_serie`
--

/*!40000 ALTER TABLE `usuario_serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_serie` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-19 15:29:25
