-- Host: localhost    Database: restaurant
-- ------------------------------------------------------

INSERT INTO `address` VALUES (1,'690-2',6,'Joliet street'),(2,'700-1',7,'safi street'),(3,'321-8',3,'cami street'),(4,'300-4',3,'ram street');

INSERT INTO `customer` VALUES (1,'omar','kadhim',1234567,'omar@yahoo.com',1),(2,'sara','tawfeek',4583264,'sara@yahoo.com',2),(3,'noor','ahmed',5439053,'noor@yahoo.com',3),(4,'sama','kadhim',7777522,'sama@yahoo.com',1),(5,'hussein','noor',7667522,'hussein@yahoo.com',4);

INSERT INTO `delivery_boy` VALUES (1,'nazmi','noor','1',NULL),(3,'omar','ahmed','1',4),(6,'baker','ali','1',NULL),(7,'nader','sabah','1',3);

INSERT INTO `foodlist` VALUES (1,1,1),(2,4,1),(3,1,2),(4,4,2),(5,2,3),(6,6,3),(7,7,4),(8,7,5),(9,6,6);

INSERT INTO `menu` VALUES (1,'Fried Eggs','two eggs',5),(2,'apple pie','one piece',6),(3,'cake','one piece',6),(4,'espresso','without milk',4),(5,'black tea','small cup',3),(6,'pasta','without tomato sauce',10),(7,'chickan sandwich','with salad',8);

INSERT INTO `order_type` VALUES (1,'online'),(2,'onphone'),(3,'restaurant');

INSERT INTO `orders` VALUES (1,3,9,1,1,'2017-04-15','08:02:01'),(2,3,9,1,2,'2017-04-13','07:02:01'),(3,2,16,2,NULL,'2017-05-01','09:03:22'),(4,1,8,3,NULL,'2017-05-01','11:03:22'),(5,3,8,4,3,'2017-05-01','11:03:22'),(6,2,10,5,NULL,'2017-04-11','13:03:22');

INSERT INTO `tables` VALUES (1,0,1),(2,1,1),(3,1,1),(4,1,1),(5,0,2),(6,0,2),(7,0,2),(8,1,2),(9,1,3),(10,1,3),(11,1,3),(12,1,3),(13,1,4),(14,0,4),(15,0,4),(16,0,4),(17,1,5),(18,0,5),(19,1,5),(20,1,5);

INSERT INTO `waiter` VALUES (1,'ahmed','kadhim'),(2,'ali','hassan'),(3,'sara','fakret'),(4,'nashat','hassan'),(5,'nadia','ali');

