# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Hôte: 127.0.0.1 (MySQL 5.5.13)
# Base de données: leap
# Temps de génération: 2013-02-13 20:10:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `picture` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `idPage` tinyint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idPage` (`idPage`),
  CONSTRAINT `content_ibfk_1` FOREIGN KEY (`idPage`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;

INSERT INTO `content` (`id`, `title`, `content`, `picture`, `url`, `idPage`)
VALUES
	(3,'Our History','The original inspiration behind Leap Motion came from our frustration with 3D modeling. Molding clay took 10 seconds in real life but 30 minutes with a computer. The mouse and keyboard were simply getting in the way. Since available technology couldn\'t solve our problems, we created the Leap Motion controller.','','',1),
	(4,'The Vision','From transcendent Star Trek holosuites to mind-blowing Minority Report graphics, our vision for computers has enticed and intrigued us for decades, but ultimately the reality has fallen short.\n\nBut with the Leap Motion controller, 3D gesture control has finally made it out of the lab and into real life. Typing? Seriously? That\'s fine for writing a novel. But it\'s hardly the most natural, intuitive way to communicate. The ability to control any application with nuanced hand and finger movements is already transforming the way we interact with computers. And we\'re just getting started.','','',1),
	(5,'Highland Capital','Since its inception in 1988 Highland Capital has taken a sector-focused approach to investing in exceptional communications, consumer, digital media, healthcare and IT companies. With over $3 billion of committed capital and offices in Boston, Silicon Valley, Shanghai and Geneva, Highland has invested in and worked to create many of the world\'s top companies.','','',2),
	(6,'Founder Fund','Founders Fund is a venture capital firm in San Francisco that focuses on early-stage technology investments. Managing Partners include Peter Thiel and Luke Nosek, co-founders of Paypal, and Sean Parker, co-founder of Napster and Founding President of Facebook.','','',2),
	(7,'Andreessen Horowitz','Andreessen Horowitz is a venture capital firm that invests in high technology companies and is based on a vision for a new, modern venture capital firm that supports entrepreneurs through angel investments to large scale funding. Its general partners are Marc Andreessen, Ben Horowitz, Scott Weiss and John O\'Farrell. Andreessen Horowitz has more than 25 investments with companies like Foursquare, Groupon, Skype, and Zynga.','','',2),
	(8,'SOSventures International','SOSventures is a venture capital firm and investment management firm with an 18-year track record of investments in the software, telecommunications, and technology fields.','','',2),
	(10,'Brian McClendon','Brian McClendon is a VP of engineering at Google overseeing Geo products including Google Earth, Google Maps, Sketchup, and Streetview. He joined Google in 2004 after the acquisition of Keyhole Corporation where he was VP of Engineering and a member of the Board of Directors. Prior to Keyhole, he was a founder at Intrinsic Graphics, an Engineering Director at @Home Network, and spent eight years at Silicon Graphics developing high-end workstation 3D graphics subsystems like GT, GTX, RealityEngine, and InfiniteReality.','','',2),
	(11,'Bill Warner','Bill Warner has launched two high-tech companies: Avid Technology (NASDAQ: AVID) and Wildfire Communications. Avid is the worldwide leader in video, film and audio editing systems. For his work on the Avid editing system, Mr. Warner won an Emmy in 1993. In 1995 he won an Engineering and Scientific award from the Academy of Motion Picture Arts and Sciences. In 1999, the Academy presented Avid with an Academy Award for its success in transforming the editing process in filmmaking. In 1991, Mr. Warner started his second company, Wildfire Communications, Inc. which was sold to Orange PLC in 2000.','','',2),
	(12,'Michael Buckwald, CEO and Co-Founder','Before launching Leap Motion, Michael was the CEO of Zazuba.com, a business appointment service, which was sold to a major national yellow pages company in 2010. Buckwald launched Zazuba as an undergraduate at George Washington University where he received a dual Bachelor\'s degree in philosophy and political science. Buckwald also ran the first deployment of computers to Madagascar with the One Laptop Per Child program.','leadership_michael-buckwald.jpg','',3),
	(13,'David Holz, CTO and Co-Founder','After reading Stephen Hawking\'s A Brief History of Time in eighth grade, David devised a simple way to test the theory of general relativity. By the time he was studying math at the University of North Carolina at Chapel Hill, he was contracting with NASA. David left his Ph.D program in Applied Math at UNC Chapel Hill to start Leap Motion.','leadership_david-holz.jpg','',3),
	(14,'Andy Miller, President and COO','Before joining the Leap Motion team, Andy served as General Partner at Highland Capital Partners and previously reported directly to Steve Jobs at Apple, Inc. as Vice President of Mobile Advertising and head of the iAd division, the mobile advertising network for the iPhone, iPod touch and iPad. Andy was also co-founder and CEO of Quattro Wireless, a mobile advertising company acquired by Apple in 2009. Prior to that, he oversaw business development, sales and strategy for mobile aggregator m-Qube. Follow Andy on Twitter','leadership_andy-miller.jpg','',3),
	(19,'Buckwald: Gesture Control is the Future of Computing','01/17/13 - Bloomberg West','','http://www.bloomberg.com/video/buckwald-gesture-control-is-future-of-computing-0PqWB0zfRNahsVQ3zhWNXw.html',4),
	(21,'Leap Motion Controller Jumps Into Best Buy Stores','01/16/13 - by Patrick Seitz, Investor’s Business Daily','','http://news.investors.com/technology/011613-640840-best-buy-to-carry-leap-motion-controller.htm',4),
	(22,'Leap Motion strikes exclusive launch deal with Best Buy','01/16/13 - by Daniel Terdiman, CNET','','http://news.cnet.com/8301-11386_3-57564204-76/leap-motion-strikes-exclusive-launch-deal-with-best-buy/',4),
	(23,'Control your laptop by moving your hand - for $70','01/16/13 - by Julianne Pepitone, CNNMoney','','http://money.cnn.com/2013/01/16/technology/innovation/leap-motion-controller/',4),
	(24,'Leap Motion Makes Exclusive Deal With Best Buy','01/16/13 - by Anthony Wing Kosner, Forbes','','http://www.forbes.com/sites/anthonykosner/2013/01/16/leap-motion-makes-exclusive-deal-with-best-buy/',4),
	(25,'CES 2013 preview: What to expect from exhibitors','01/04/13 - by Chenda Ngak, CBS News','','http://www.cbsnews.com/8301-205_162-57562140/ces-2013-preview-what-to-expect-from-exhibitors/',4);

/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `slug` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;

INSERT INTO `page` (`id`, `title`, `content`, `slug`)
VALUES
	(1,'The Leap Motion Story','For four years, we\'ve been obsessed with one question: how can we interact with computers in a better, more natural way? After many sleepless nights, we found the answer: the Leap Motion controller. Now it\'s time to have fun.','our_story'),
	(2,'Investors','We\'re thrilled to be partnering with many of the world\'s largest companies. And we\'re planning to integrate our breakthrough technology into tablets, smart phones, laptops and game systems, so be sure to check back for updates.','investors'),
	(3,'Leadership Team','','leadership'),
	(4,'In the News','We\'re not the only ones who are excited about what\'s happening at Leap Motion. Here\'s the latest and greatest news about how we\'re putting the future at your fingertips','news');

/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
