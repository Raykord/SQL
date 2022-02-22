CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shop`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Palm Angels'),(2,'Fendi'),(3,'Dsquared2'),(4,'Philipp Plein'),(5,'Versace'),(6,'Maison Margiela'),(7,'Gucci'),(8,'Doucal\'s'),(9,'Balenciaga'),(10,'Jordan'),(11,'Saint Laurent'),(12,'Tommy Hilfiger'),(13,'Rolex'),(14,'Ulysse Nardin'),(15,'MAD Paris');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discount_id` int NOT NULL AUTO_INCREMENT,
  `discount_description` varchar(45) NOT NULL,
  `discount_category_id` int DEFAULT NULL,
  `main_category_category_id` int NOT NULL,
  `discount_product_id` int DEFAULT NULL,
  `brand_id` int NOT NULL,
  `discount_value` double NOT NULL,
  PRIMARY KEY (`discount_id`),
  KEY `fk_discount_product1_idx` (`discount_product_id`),
  KEY `fk_discount_main_category1_idx` (`main_category_category_id`),
  KEY `fk_discount_other_categories1_idx` (`discount_category_id`),
  KEY `fk_discount_brand1_idx` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'скидка на кеды с принтом Medusa Smiley 50%',NULL,0,9,0,0.5),(2,'скидка на однобортное пальто длины миди 20%',NULL,0,3,0,0.2);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `images_id` int NOT NULL AUTO_INCREMENT,
  `main_img_id` int NOT NULL,
  `image_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`images_id`),
  KEY `fk_images_main_img1_idx` (`main_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'images/clothes/coat/double_black/2.jpg'),(2,1,'images/clothes/coat/double_black/3.jpg'),(7,2,'images/clothes/coat/fendi_svst/2.jpg'),(8,2,'images/clothes/coat/fendi_svst/3.jpg'),(9,3,'images/clothes/coat/dsquared2_midi/2.jpg'),(10,3,'images/clothes/coat/dsquared2_midi/3.jpg'),(11,4,'images/clothes/trousers/PhilippPlein_kargo/2.jpg'),(12,4,'images/clothes/trousers/PhilippPlein_kargo/3.jpg'),(13,5,'images/clothes/shirt/versache_meduse_white/2.jpg'),(14,5,'images/clothes/shirt/versache_meduse_white/3.jpg'),(15,6,'images/shoes/boots/tabi/2.jpg'),(16,6,'images/shoes/boots/tabi/3.jpg'),(17,7,'images/shoes/brogues/gucci/2.jpg'),(18,7,'images/shoes/brogues/gucci/3.jpg'),(19,8,'images/oxfords/black_doucals/2.jpg'),(20,8,'images/oxfords/black_doucals/3.jpg'),(21,9,'images/sneakers/highttops/medusa_smile/2.jpg'),(22,9,'images/sneakers/highttops/medusa_smile/3.jpg'),(23,10,'images/sneakers/slipons/speed_2_0/2.jpg'),(24,10,'images/sneakers/slipons/speed_2_0/3.jpg'),(25,11,'images/sneakers/highttops/jordan_dior/2.jpg'),(26,11,'images/sneakers/highttops/jordan_dior/3.jpg'),(27,12,'images/bags/clutch/zip_saint_laran/2.jpg'),(28,12,'images/bags/clutch/zip_saint_laran/3.jpg'),(29,13,'images/bags/waist/icon/2.jpg'),(30,13,'images/bags/waist/icon/2.jpg'),(31,14,'images/bags/backpack/tommy_hilfiger_bp_blue/2.jpg'),(32,14,'images/bags/backpack/tommy_hilfiger_bp_blue/3.jpg'),(33,15,'images/accessories/gloves/gucci_pattern_supreme/2.jpg'),(34,15,'images/accessories/gloves/gucci_pattern_supreme/3.jpg'),(35,16,'images/accessories/belts/sl_narrow/2.jpg'),(36,16,'images/accessories/belts/sl_narrow/3.jpg'),(37,17,'images/accessories/glasses/versache_hexad/2.jpg'),(38,17,'images/accessories/glasses/versache_hexad/3.jpg'),(39,18,'images/watch/avitors/rolex_white_gold/2.jpg'),(40,18,'images/watch/avitors/rolex_white_gold/3.jpg'),(41,19,'images/watch/sport/un_marine_torpilleur/2.jpg'),(42,19,'images/watch/sport/un_marine_torpilleur/3.jpg'),(43,20,'images/watch/classic/mp_royal_oak/2.jpg'),(44,20,'images/watch/classic/mp_royal_oak/3.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_category`
--

DROP TABLE IF EXISTS `main_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_category` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  `category_description` text,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_category`
--

LOCK TABLES `main_category` WRITE;
/*!40000 ALTER TABLE `main_category` DISABLE KEYS */;
INSERT INTO `main_category` VALUES (1,'Одежда','Консервативная мужская мода все чаще раздвигает границы и переосмысляет привычный мужской образ. Одни дизайнеры бесконечно оттачивают идеальный крой и мельчайшие детали, другие экспериментируют с тканями, фактурами, цветами и формами, и предлагают яркие решения для тех, кто готов к новшествам. Модные эксперименты от Dsquared2, эпатаж от Comme des Garçons, классика премиум-уровня от Armani или понятный минимализм от Calvin Klein — мужская дизайнерская одежда так же разнообразна и уникальна, как женская, и предназначена для тех, кто ценит моду и сознательно формирует свой неповторимый стиль.'),(2,'Классическая обувь','Обувь для современного мужчины — это, прежде всего, элемент образа, а только потом функциональная вещь. К счастью, известные бренды не заставляют делать выбор между дизайном и удобством: сегодня главной «модной ценностью» является комфорт. Дизайнеры ориентированы на создание простой, утилитарной, но не лишенной характера обуви. И подтверждение этому можно найти в коллекциях большинства модных марок. Ботинки премиум-класса от A Diciannoveventitre, культовые кроссовки от Buscemi, армейские ботинки от Julius, меховые сапоги от Liska и еще десятки видов обуви предназначены для разного образа жизни, но одинаково хорошо продуманны.'),(3,'Кросовки','Кроссовки — классика мужской спортивной обуви, но брендовые модели класса люкс — это совсем другая история. От прообраза дизайнерским кроссовкам достались лишь некоторые традиционные элементы и общая утилитарная направленность — современная мужская мода все чаще отказывается от консерватизма. Смелые модели Valentino Garavani, по-спортивному минималистичные кроссовки Paul Smith и авангардные вещи Maison Martin Margiela объединяет лишь одно: дизайнеры стремятся экспериментировать. Мужчины их в этом поддерживают — и сегодня эта обувь наряду с более традиционными моделями составляет основу актуального городского гардероба.'),(4,'Сумки','Мужская сумка — это обязательная составляющая как делового, так и повседневного гардероба, к которо, всегда предъявляются достаточно высокие требования. Она должна быть не только практичной и функциональной, но и полностью соответствовать последним модным тенденциям. Известные дизайнеры предлагают сильному полу огромное количество вариантов брендовых мужских аксессуаров различного назначения. Среди лучших представителей в своем классе — традиционные портфели и сумки для ноутбуков Tod’s и Valextra, рюкзаки с графическими принтами DSQUARED2 и Saint Laurent, а также клатчи Givenchy, Valentino Garavani и Salvatore Ferragamo.'),(5,'Аксессуары','Со вкусом подобранные аксессуары помогают собрать в единое целое не только женский, но и мужской образ. Без коллекции галстуков, ремней и шарфов не обходится ни один мужской гардероб. Самые элегантные используют в качестве акцентов запонки, перчатки и шляпы. В топ цветов, используемых в мужских аксессуарах, входит черный, коричневый и хаки. Линейка аксессуаров Prada выдержана в ретро-стиле, Valentino предлагает использовать нагрудные платки темных глубоких тонов, а яркие аксессуары Saint Laurent открывают поле для фантазии. Актуален камуфляжный принт, выполненный в нетрадиционных для него цветах: синий, желтый и красный.'),(6,'Часы','Мужские часы в Farfetch — это всегда широкий ассортимент от самых известных мировых брендов. Вы можете выбрать понравившийся вам товар с помощью удобного фильтра и заказать доставку по Москве или любому другому городу РФ. На странице представлены самые актуальные предложения на 2020 год. Также вас могут заинтересовать: шкатулки для автоподзавода, виндеры для часов, шкатулки для часов.');
/*!40000 ALTER TABLE `main_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_img`
--

DROP TABLE IF EXISTS `main_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_img` (
  `main_img_id` int NOT NULL AUTO_INCREMENT,
  `img_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`main_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_img`
--

LOCK TABLES `main_img` WRITE;
/*!40000 ALTER TABLE `main_img` DISABLE KEYS */;
INSERT INTO `main_img` VALUES (1,'images/clothes/coat/double_black/1.jpg'),(2,'images/clothes/coat/fendi_svst/1.jpg'),(3,'images/clothes/coat/dsquared2_midi/1.jpg'),(4,'images/clothes/trousers/PhilippPlein_kargo/1.jpg'),(5,'images/clothes/shirt/versache_meduse_white/1.jpg'),(6,'images/shoes/boots/tabi/1.jpg'),(7,'images/shoes/brogues/gucci/1.jpg'),(8,'images/oxfords/black_doucals/1.jpg'),(9,'images/sneakers/highttops/medusa_smile/1.jpg'),(10,'images/sneakers/slipons/speed_2_0/1.jpg'),(11,'images/sneakers/highttops/jordan_dior/1.jpg'),(12,'images/bags/clutch/zip_saint_laran/1.jpg'),(13,'images/bags/waist/icon/1.jpg'),(14,'images/bags/backpack/tommy_hilfiger_bp_blue/1.jpg'),(15,'images/accessories/gloves/gucci_pattern_supreme/1.jpg'),(16,'images/accessories/belts/sl_narrow/1.jpg'),(17,'images/accessories/glasses/versache_hexad/1.jpg'),(18,'images/watch/avitors/rolex_white_gold/1.jpg'),(19,'images/watch/sport/un_marine_torpilleur/1.jpg'),(20,'images/watch/classic/mp_royal_oak/1.jpg');
/*!40000 ALTER TABLE `main_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_categories`
--

DROP TABLE IF EXISTS `other_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_categories` (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `parent_category_id` int DEFAULT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_categories`
--

LOCK TABLES `other_categories` WRITE;
/*!40000 ALTER TABLE `other_categories` DISABLE KEYS */;
INSERT INTO `other_categories` VALUES (1,1,'Брюки'),(2,1,'Рубашки'),(3,1,'Пальто'),(4,2,'Ботинки'),(5,2,'Броги'),(6,2,'Оксфорды'),(7,3,'Кросовки для спорта'),(8,3,'Слипоны'),(9,3,'Хайтопы'),(10,4,'Клатчи'),(11,4,'Поясные'),(12,4,'Рюкзаки'),(13,5,'Перчатки'),(14,5,'Ремни'),(15,5,'Очки'),(16,6,'Авиаторы'),(17,6,'Спортивные'),(18,6,'Классика'),(19,NULL,'Новинки'),(20,NULL,'Распродажа'),(21,NULL,'Новый сезон');
/*!40000 ALTER TABLE `other_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `title` tinytext NOT NULL,
  `main_img` varchar(45) NOT NULL,
  `description` text,
  `brand_id` int DEFAULT NULL,
  `price` int NOT NULL,
  `main_category_id` int DEFAULT NULL,
  `other_categories_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'двубортное пальто с кулиской','1','Воротник с кулиской, заостренные лацканы, прорезной карман на груди, двубортная застежка на пуговицы, длинные рукава, два передних кармана с клапанами и длина миди.',1,126508,1,'3'),(2,'двустороннее пальто со вставками','2','Вышитый логотип, контрастные вставки, отложный воротник, длинные рукава, застежка на пуговицах спереди, два передних кармана и двухсторонний дизайн.',2,235000,1,'3'),(3,'однобортное пальто длины миди','3','Заостренные лацканы, длинные рукава, манжеты на пуговицах, застежка на пуговицах спереди и два кармана с клапанами по бокам.',3,68525,1,'3, 20'),(4,'зауженные брюки карго','4','Нашивка с тисненым логотипом сзади, карабин, петли для ремня, застежка на молнии и пуговице спереди, два прорезных кармана по бокам, два накладных кармана по бокам, два кармана с клапанами сзади, зауженный крой и эластичные манжеты.',4,52170,1,'1, 19'),(5,'рубашка с вышивкой Medusa','5','Узор Medusa Head, классический воротник, застежка на пуговицах спереди, длинные рукава и закругленный подол. Цвет: белый.',5,30315,1,'2'),(6,'ботинки Tabi','6','Знаковый раздвоенный носок Tabi, тональная строчка, стелька с логотипом, эластичные боковые панели, низкий каблук, плоская резиновая подошва, длина по щиколотку и знаковый логотип-стежок.',6,89752,2,'4'),(7,'броги на шнуровке','7','Gucci — целая вселенная безграничных возможностей. Креативный директор итальянского бренда Алессандро Микеле обращается к архивным силуэтам, предлагая новую интерпретацию стиля ретро. В коллекцию Gucci вошли черные броги из мягкой кожи. Язычок модели дополнен нашивкой с архивным логотипом. Броги имеют резиновую подошву. Сделано в Италии.',7,65800,2,'5'),(8,'классические оксфорды','8','Классические оксфорды от Doucal\'s. Миндалевидный носок, шнуровка спереди, фирменная стелька и плоский каблук.',8,18724,2,'6'),(9,'кеды с принтом Medusa Smiley','9','Закругленный носок, контрастный носок, шнуровка спереди, нашивка с логотипом на язычке, логотип сбоку и плоская резиновая подошва.',5,83452,3,'9, 20'),(10,'высокие кроссовки Speed 2.0','10','Модель без застежки, носочная деталь, закругленный носок, логотип сбоку, сегментированная резиновая подошва и подол в рубчик.',9,81271,3,'8, 21'),(11,'кроссовки Air Jordan 1 High из коллаборации с Dior','11','Это однозначно один из самых долгожданных релизов года. Кроссовки Dior x Air Jordan 1 High стали первой коллаборацией между легендарным домом моды и sneaker-гигантом. Модель, выполненная из серой и белой кожи, подчеркивает культовый силуэт и демонстрирует Swoosh, преображенный монограммой Dior. Идеальный баланс между классикой и высокой модой.',10,887835,3,'9'),(12,'клатч на молнии','12','Застежка на молнии сверху, основное отделение, разрез спереди и логотип спереди.',11,26877,4,'10'),(13,'поясная сумка Icon','13','Застежка на молнии сверху, логотип спереди, основное отделение и регулируемый ремень на плечо.',3,24314,4,'11'),(14,'рюкзак на молнии с логотипом','14','Логотип спереди, застежка на молнии сверху, передний карман на молнии и основное отделение.',12,11395,4,'12'),(15,'перчатки с узором GG Supreme','15','Канвас с принтом GG Supreme, вставки и знаковый декор Horsebit.',7,39600,5,'13'),(16,'узкий ремень','16','Матовое покрытие, металлический логотип и регулируемый дизайн.',11,28253,5,'14'),(17,'солнцезащитные очки Hexad Signature','17','Солнцезащитные очки Hexad Signature от VERSACE',5,23543,5,'15'),(18,'наручные часы Sky-Dweller pre-owned 42 мм 2021-го года','18','Круглый корпус, автоматический механизм, регулируемый браслет со звеньями, застежка на зажиме, заостренные стрелки, завинчивающаяся заводная коронка, индикатор даты, тахиметр и знаковый декор в виде короны. Цвет: черный. Это новая вещь — она никогда не была в употреблении. Оригинальная коробка, документация и сертификат CHRONEXT. Сертифицированные мастера CHRONEXT проверили эти часы и гарантируют их подлинность. Двухлетняя гарантия CHRONEXT покрывает любые виды ремонта часового механизма, а у водостойких наручных часов — устранение повреждений, полученных под воздействием воды.',13,2670418,6,'16'),(19,'часы \'Marine Torpilleur\' 42мм','19','Часы \'Marine Torpilleur\' 42мм от Ulysse Nardin. Часы из коллекции Marine, напоминающие о неразрывной связи марки Ulysse Nardin с морем, демонстрируют высочайшие технические характеристики, иновации и восхитительный дизайн. Модель Marine Torpilleur диаметром 42 мм имеет круглый корпус из нержавеющей стали, сделанный вручную в Швейцарии. Индикатор запаса хода 60 часов, секундная стрелка в позиции \"6 часов\", окошко даты, механизм Caliber UN-118 с автоподзаводом, кремниевая технология, технология Diamonsil, водонепроницаемость до 50 метров, фиксируемая на резьбе заводная головка, устойчивое к царапинам сапфировое стекло, синий циферблат с белыми римскими цифрами, синий резиновый ремешок с титановой пряжкой. Стандартная международная гарантия сроком 2 года.',14,625000,6,'18'),(20,'наручные часы Royal Oak pre-owned 41 мм из коллаборации с 1017 Alyx 9SM','20','Круглый корпус, автоматический механизм, регулируемый браслет со звеньями, застежка на зажиме, заостренные стрелки, завинчивающаяся заводная коронка, скелетированная задняя крышка и индикатор даты. MAD Paris не является официальным партнером компании-производителя этих наручных часов. Этот экземпляр был приобретен брендом на вторичном рынке для дальнейшей кастомизации. Гарантия производителя недействительна, оригинальные детали и технические характеристики могли измениться.',15,12921734,6,'17');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_codes`
--

DROP TABLE IF EXISTS `promo_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo_codes` (
  `code` varchar(6) NOT NULL DEFAULT 'AA0000',
  `code_description` varchar(255) NOT NULL,
  `main_category_id` int DEFAULT NULL,
  `other_category_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `discount_value` double NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_codes`
--

LOCK TABLES `promo_codes` WRITE;
/*!40000 ALTER TABLE `promo_codes` DISABLE KEYS */;
INSERT INTO `promo_codes` VALUES ('AA0001','Скидка на товары Saint Laurent 30%',NULL,NULL,11,NULL,0.3),('AB1001','Скидка на всю обувь 10%',2,NULL,NULL,NULL,0.1),('EE2446','Скидка на поясную сумку Icon 45%',NULL,NULL,NULL,13,0.45),('HR7439','Скидка на все рубашки 5%',NULL,2,NULL,NULL,0.05);
/*!40000 ALTER TABLE `promo_codes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-22 20:51:37
