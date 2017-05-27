/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.6.27-log : Database - lumen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lumen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lumen`;

/*Table structure for table `comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_user_id_foreign` (`user_id`),
  KEY `comments_post_id_foreign` (`post_id`),
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `comments` */

insert  into `comments`(`id`,`content`,`created_at`,`updated_at`,`user_id`,`post_id`) values (1,'Id quidem nihil quidem fuga.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,15),(2,'Iste quos quia aliquid. Architecto quis libero reprehenderit cum itaque error.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,4),(3,'Quisquam sint accusantium quod ducimus qui tenetur. Quia earum id rerum harum mollitia perferendis.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,39),(4,'Autem similique ut illum.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,29),(5,'Ab ea et at impedit accusantium. Temporibus harum error culpa est.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,8),(6,'Repellendus illum et eius dicta accusamus et excepturi. Sed sint placeat aut repudiandae blanditiis doloremque iusto.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,42),(7,'Autem commodi non labore exercitationem.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,44),(8,'Est placeat aperiam cumque eum architecto.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,7),(9,'Minima rerum quo quia ut ipsa similique.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,43),(10,'Sit est ut praesentium vel quae pariatur repudiandae. Nemo facere ut illum ipsam commodi.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,30),(11,'Odio accusantium illo veniam commodi non atque quas.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,45),(12,'Dignissimos est vel reprehenderit earum enim modi porro.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,29),(13,'Quia quidem enim aut nihil sit. Ut temporibus velit perferendis architecto.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,46),(14,'Dolor qui et sit porro et exercitationem blanditiis qui. Quam et in provident ut est architecto voluptates.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,36),(15,'Ut qui autem aut et eveniet suscipit.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,38),(16,'Debitis sit laboriosam at totam velit excepturi. Ut officia est dolores nam.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,13),(17,'Esse fuga quia consequatur et et.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,46),(18,'Rem maiores voluptas aut et accusamus magnam.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,10),(19,'Non mollitia voluptas rerum quidem voluptas hic aspernatur. Qui vitae cum quo ad consequuntur ut nam sunt.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,27),(20,'Quaerat est fugit consequatur consequatur perspiciatis. Soluta est hic porro.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,6),(21,'Voluptas voluptatem quibusdam expedita aliquam voluptas et. Nemo non excepturi quae saepe.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,36),(22,'Aut doloribus quia esse sapiente aliquam vitae ut in.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,35),(23,'Dolor neque molestiae est.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,31),(24,'Doloribus unde dolore ut minima quam tempora. Sit dolor ea est reprehenderit.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,45),(25,'Ut tenetur aut voluptatem placeat perferendis quis optio.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,19),(26,'Quia sed in autem officiis in.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,19),(27,'Itaque ullam assumenda libero velit eaque. Quo qui eos sed doloremque.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,43),(28,'Atque deleniti in veritatis esse.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,30),(29,'Sint sit officia reiciendis aut molestiae. Sequi est consequatur natus corporis consequatur perferendis ut.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,13),(30,'Suscipit ut magnam et vero. Nemo facilis repellat atque aut animi qui ullam est.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,48),(31,'Consequatur sit possimus velit aut autem molestiae qui.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,22),(32,'Et ut omnis dolorem ea. Rerum voluptas quas explicabo.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,17),(33,'Velit et amet accusantium repudiandae. Assumenda et quod sapiente sint aut.','2017-05-26 22:52:46','2017-05-26 22:52:46',4,37),(34,'Excepturi enim qui molestias ab et.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,31),(35,'Reprehenderit delectus doloremque et sed quas qui saepe eligendi. Dignissimos nam et iure sint quia mollitia rerum.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,10),(36,'Et temporibus id eius soluta ab quaerat mollitia aut.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,12),(37,'Perferendis ab iure aut nihil non cum blanditiis qui. Ipsa dolores quasi nemo ab tempora vitae veniam.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,46),(38,'Excepturi aut illo aut vel blanditiis aperiam ut. Sit tenetur aliquid sed voluptas fugiat eveniet.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,3),(39,'Molestiae ut sunt adipisci.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,11),(40,'Cumque qui voluptatum nobis et. Repudiandae impedit ipsum quos cum debitis sed.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,45),(41,'Sint repudiandae omnis enim sed eum cumque. Aspernatur voluptas nulla aspernatur cum quod odit.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,26),(42,'Beatae est sint soluta recusandae velit.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,6),(43,'Similique perspiciatis excepturi aspernatur ullam provident.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,3),(44,'Quidem consequatur iure sint nam.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,19),(45,'Occaecati impedit sint minus quidem. Ea enim non ducimus facilis.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,4),(46,'Fugiat impedit repellat cumque.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,26),(47,'Quos sit in delectus eveniet quam corporis. Aliquid et occaecati sapiente praesentium quaerat consequuntur.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,38),(48,'Dolor voluptatem rerum beatae autem. Ea beatae ut ipsam deleniti fugit veritatis reprehenderit.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,25),(49,'Reprehenderit consectetur ex ut exercitationem odio doloribus.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,45),(50,'Ut sit quod enim vel non quia.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,48),(51,'Soluta odit nihil cum doloribus laudantium dolorem. Doloremque et distinctio quia sapiente suscipit nihil dolores.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,18),(52,'Ad quis deserunt consequatur libero ad aliquid nobis. Quidem possimus aut quae et rerum.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,30),(53,'Ut possimus quod ipsum enim non quas.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,5),(54,'Repellendus vitae iusto quisquam sapiente magnam vitae est non. Vero natus est omnis quasi.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,20),(55,'Veniam facilis in ipsa dolor ea voluptatum.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,5),(56,'Aut perferendis officia libero commodi placeat incidunt.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,48),(57,'Nobis occaecati sint ut. Sed eos ut eos occaecati ut.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,40),(58,'Rerum tenetur cupiditate et ea soluta culpa. Rerum eos consequatur earum vitae voluptate.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,14),(59,'Quisquam earum quod iste reiciendis nulla qui eius. Magnam nobis temporibus maiores impedit quaerat laborum quod.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,45),(60,'Dolor voluptas excepturi dolorem sed. Esse quod corrupti architecto et impedit laborum doloremque.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,49),(61,'Nemo quia vel nostrum qui.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,40),(62,'Nobis culpa est corporis. Expedita voluptatem placeat cumque saepe mollitia.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,23),(63,'Ea autem quis dignissimos.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,8),(64,'Aut inventore quia omnis eaque excepturi officia quam. Excepturi quia labore delectus quibusdam explicabo.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,20),(65,'Eos ducimus rerum quis. Necessitatibus neque sunt beatae voluptate enim omnis culpa accusamus.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,48),(66,'Saepe laboriosam tempore facere. Hic minus est consequatur labore.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,43),(67,'Dolor repudiandae sed placeat molestiae vel ut.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,21),(68,'Distinctio et neque eaque explicabo nesciunt unde ea. Autem omnis iure facere distinctio nesciunt.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,22),(69,'Praesentium ut sint enim sed nisi. Omnis nesciunt dolorum quis id aut vero et.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,10),(70,'At et fuga fuga sit labore.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,41),(71,'Omnis enim odit numquam ullam sunt.','2017-05-26 22:52:46','2017-05-26 22:52:46',4,12),(72,'Molestiae corporis eius veniam porro sed ut.','2017-05-26 22:52:46','2017-05-26 22:52:46',4,45),(73,'Vel commodi culpa autem consequuntur laudantium voluptatibus in.','2017-05-26 22:52:46','2017-05-26 22:52:46',4,21),(74,'Qui voluptatem tempore voluptatibus vero. Deserunt ipsa excepturi maiores possimus consectetur.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,23),(75,'Qui tenetur earum suscipit consectetur.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,38),(76,'Laboriosam quod animi nisi labore sapiente at eum. Quod exercitationem iste iste consectetur consequatur et culpa.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,7),(77,'Ipsam ut hic fugiat molestiae. Et amet ipsa enim aut reiciendis molestiae qui.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,7),(78,'Et doloremque accusantium voluptas totam.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,50),(79,'Ut quod similique et qui. Soluta nobis voluptatibus minus tempora omnis voluptatem voluptatibus.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,36),(80,'Necessitatibus officiis unde ullam repellat dolore quae aperiam. Aut voluptatibus vero culpa ut sed error ad.','2017-05-26 22:52:46','2017-05-26 22:52:46',8,44),(81,'Sunt quo nihil illo veritatis sed et.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,43),(82,'Dolor deleniti nesciunt laboriosam voluptatem consequatur.','2017-05-26 22:52:46','2017-05-26 22:52:46',2,23),(83,'Maxime hic quo animi eveniet est.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,31),(84,'Velit molestias rerum non maxime est. Deleniti amet illo autem sit eaque vel.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,26),(85,'Numquam ipsum aperiam voluptas perspiciatis quae.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,11),(86,'Quia aut dolor nulla veniam sed qui consequatur quia.','2017-05-26 22:52:46','2017-05-26 22:52:46',9,41),(87,'Sapiente dolor error ut porro occaecati. Rerum officiis explicabo sint dolorum accusantium.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,40),(88,'Aperiam veritatis rem laborum voluptatem. Dignissimos quo velit perspiciatis corrupti.','2017-05-26 22:52:46','2017-05-26 22:52:46',4,40),(89,'Eos nesciunt sit itaque sit voluptas officia illum.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,1),(90,'Ipsa officia eius cumque necessitatibus qui qui. Reiciendis et amet rerum aut.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,31),(91,'Incidunt molestias odit quia iste rerum ex corporis. Est sint quidem et aliquam est quas quia.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,19),(92,'Consequatur est nihil libero quis et eum. Voluptas alias error nisi neque aut voluptas minima.','2017-05-26 22:52:46','2017-05-26 22:52:46',10,37),(93,'Consequuntur delectus expedita quia enim ea itaque.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,14),(94,'Animi totam vel et sapiente accusantium tempore corrupti.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,40),(95,'Necessitatibus rerum non quia quidem.','2017-05-26 22:52:46','2017-05-26 22:52:46',3,12),(96,'Nobis hic doloribus et inventore.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,39),(97,'Nobis rerum distinctio sed quo rerum dolor nihil placeat.','2017-05-26 22:52:46','2017-05-26 22:52:46',7,31),(98,'Maiores quos et consequuntur. Porro vel aut doloribus voluptatum voluptas sed aut.','2017-05-26 22:52:46','2017-05-26 22:52:46',6,49),(99,'Quis quisquam eos corrupti consequuntur amet. Maxime vel laudantium aliquid qui.','2017-05-26 22:52:46','2017-05-26 22:52:46',1,21),(100,'A enim sunt qui sequi.','2017-05-26 22:52:46','2017-05-26 22:52:46',5,4);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (4,'2017_05_26_140253_create_users_table',1),(5,'2017_05_26_140300_create_posts_table',1),(6,'2017_05_26_140306_create_comments_table',1),(7,'2014_04_24_110151_create_oauth_scopes_table',2),(8,'2014_04_24_110304_create_oauth_grants_table',2),(9,'2014_04_24_110403_create_oauth_grant_scopes_table',2),(10,'2014_04_24_110459_create_oauth_clients_table',2),(11,'2014_04_24_110557_create_oauth_client_endpoints_table',2),(12,'2014_04_24_110705_create_oauth_client_scopes_table',2),(13,'2014_04_24_110817_create_oauth_client_grants_table',2),(14,'2014_04_24_111002_create_oauth_sessions_table',2),(15,'2014_04_24_111109_create_oauth_session_scopes_table',2),(16,'2014_04_24_111254_create_oauth_auth_codes_table',2),(17,'2014_04_24_111403_create_oauth_auth_code_scopes_table',2),(18,'2014_04_24_111518_create_oauth_access_tokens_table',2),(19,'2014_04_24_111657_create_oauth_access_token_scopes_table',2),(20,'2014_04_24_111810_create_oauth_refresh_tokens_table',2);

/*Table structure for table `oauth_access_token_scopes` */

DROP TABLE IF EXISTS `oauth_access_token_scopes`;

CREATE TABLE `oauth_access_token_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_token_scopes_access_token_id_index` (`access_token_id`),
  KEY `oauth_access_token_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_access_token_scopes_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_access_token_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_access_token_scopes` */

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_access_tokens_id_session_id_unique` (`id`,`session_id`),
  KEY `oauth_access_tokens_session_id_index` (`session_id`),
  CONSTRAINT `oauth_access_tokens_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`session_id`,`expire_time`,`created_at`,`updated_at`) values ('aGmZqqSz3kmPEHh7xrY2qcauv9Eidl2Ov5h8P1RP',2,1495821434,'2017-05-27 00:57:14','2017-05-27 00:57:14'),('d1l8wEoJN0MwFpl9LOnPD9YQFaQWHGBbwEWK8N9O',6,1495842756,'2017-05-27 06:52:36','2017-05-27 06:52:36'),('ID31ebmUTPSClFecqmSyMdUoxnfzSV66M6gSno9V',4,1495821587,'2017-05-27 00:59:47','2017-05-27 00:59:47'),('kk5NE6QDVlmVrVYKE0S87IRQWYPikZiVyzzV0Is2',5,1495821695,'2017-05-27 01:01:35','2017-05-27 01:01:35'),('vTZQx6OXpyrlx5bM7ZaquRhlJF6Sofb47MNpqhq9',1,1495814636,'2017-05-26 23:03:56','2017-05-26 23:03:56'),('ZdcK6fKeLAK4sRdH9TXYD29o5LOjLcxf30aBVY28',3,1495821508,'2017-05-27 00:58:28','2017-05-27 00:58:28');

/*Table structure for table `oauth_auth_code_scopes` */

DROP TABLE IF EXISTS `oauth_auth_code_scopes`;

CREATE TABLE `oauth_auth_code_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `auth_code_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_code_scopes_auth_code_id_index` (`auth_code_id`),
  KEY `oauth_auth_code_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_auth_code_scopes_auth_code_id_foreign` FOREIGN KEY (`auth_code_id`) REFERENCES `oauth_auth_codes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_auth_code_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_auth_code_scopes` */

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` int(10) unsigned NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_session_id_index` (`session_id`),
  CONSTRAINT `oauth_auth_codes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_client_endpoints` */

DROP TABLE IF EXISTS `oauth_client_endpoints`;

CREATE TABLE `oauth_client_endpoints` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_client_endpoints_client_id_redirect_uri_unique` (`client_id`,`redirect_uri`),
  CONSTRAINT `oauth_client_endpoints_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_client_endpoints` */

/*Table structure for table `oauth_client_grants` */

DROP TABLE IF EXISTS `oauth_client_grants`;

CREATE TABLE `oauth_client_grants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_grants_client_id_index` (`client_id`),
  KEY `oauth_client_grants_grant_id_index` (`grant_id`),
  CONSTRAINT `oauth_client_grants_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `oauth_client_grants_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_client_grants` */

/*Table structure for table `oauth_client_scopes` */

DROP TABLE IF EXISTS `oauth_client_scopes`;

CREATE TABLE `oauth_client_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_client_scopes_client_id_index` (`client_id`),
  KEY `oauth_client_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_client_scopes_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_client_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_client_scopes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `oauth_clients_id_secret_unique` (`id`,`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`secret`,`name`,`created_at`,`updated_at`) values ('id0','secret0','Test Client 0',NULL,NULL),('id1','secret1','Test Client 1',NULL,NULL),('id2','secret2','Test Client 2',NULL,NULL),('id3','secret3','Test Client 3',NULL,NULL),('id4','secret4','Test Client 4',NULL,NULL),('id5','secret5','Test Client 5',NULL,NULL),('id6','secret6','Test Client 6',NULL,NULL),('id7','secret7','Test Client 7',NULL,NULL),('id8','secret8','Test Client 8',NULL,NULL),('id9','secret9','Test Client 9',NULL,NULL);

/*Table structure for table `oauth_grant_scopes` */

DROP TABLE IF EXISTS `oauth_grant_scopes`;

CREATE TABLE `oauth_grant_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `grant_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_grant_scopes_grant_id_index` (`grant_id`),
  KEY `oauth_grant_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_grant_scopes_grant_id_foreign` FOREIGN KEY (`grant_id`) REFERENCES `oauth_grants` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_grant_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_grant_scopes` */

/*Table structure for table `oauth_grants` */

DROP TABLE IF EXISTS `oauth_grants`;

CREATE TABLE `oauth_grants` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_grants` */

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `expire_time` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`access_token_id`),
  UNIQUE KEY `oauth_refresh_tokens_id_unique` (`id`),
  CONSTRAINT `oauth_refresh_tokens_access_token_id_foreign` FOREIGN KEY (`access_token_id`) REFERENCES `oauth_access_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `oauth_scopes` */

DROP TABLE IF EXISTS `oauth_scopes`;

CREATE TABLE `oauth_scopes` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_scopes` */

/*Table structure for table `oauth_session_scopes` */

DROP TABLE IF EXISTS `oauth_session_scopes`;

CREATE TABLE `oauth_session_scopes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` int(10) unsigned NOT NULL,
  `scope_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_session_scopes_session_id_index` (`session_id`),
  KEY `oauth_session_scopes_scope_id_index` (`scope_id`),
  CONSTRAINT `oauth_session_scopes_scope_id_foreign` FOREIGN KEY (`scope_id`) REFERENCES `oauth_scopes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `oauth_session_scopes_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `oauth_sessions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_session_scopes` */

/*Table structure for table `oauth_sessions` */

DROP TABLE IF EXISTS `oauth_sessions`;

CREATE TABLE `oauth_sessions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `owner_type` enum('client','user') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'user',
  `owner_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_redirect_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_sessions_client_id_owner_type_owner_id_index` (`client_id`,`owner_type`,`owner_id`),
  CONSTRAINT `oauth_sessions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `oauth_clients` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `oauth_sessions` */

insert  into `oauth_sessions`(`id`,`client_id`,`owner_type`,`owner_id`,`client_redirect_uri`,`created_at`,`updated_at`) values (1,'id0','user','1',NULL,'2017-05-26 23:03:56','2017-05-26 23:03:56'),(2,'id0','user','1',NULL,'2017-05-27 00:57:14','2017-05-27 00:57:14'),(3,'id0','user','1',NULL,'2017-05-27 00:58:28','2017-05-27 00:58:28'),(4,'id0','user','1',NULL,'2017-05-27 00:59:47','2017-05-27 00:59:47'),(5,'id0','user','1',NULL,'2017-05-27 01:01:35','2017-05-27 01:01:35'),(6,'id0','user','1',NULL,'2017-05-27 06:52:36','2017-05-27 06:52:36');

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `posts` */

insert  into `posts`(`id`,`title`,`content`,`user_id`,`created_at`,`updated_at`) values (1,'Corporis ut consectetur qui.','Eum ea sed incidunt quasi expedita quasi. Enim magni aut natus non dignissimos asperiores est. Exercitationem harum cum qui repellat.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(2,'Sint recusandae ipsum dignissimos blanditiis.','Quaerat enim facere praesentium ab dolorum. Non atque hic possimus doloremque vitae. Hic temporibus quia ea numquam. Eveniet magnam consequuntur voluptas iure odit. Excepturi animi velit quos.',7,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(3,'Ut ut expedita earum.','Sunt repellat sapiente modi porro distinctio. Sint asperiores omnis et quo dolores iusto. In perferendis assumenda quasi cum tempora. Commodi enim voluptatum eligendi deserunt qui maxime qui.',1,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(4,'Itaque dolor dicta architecto.','Unde eos amet adipisci perferendis temporibus cupiditate. Voluptates rerum quidem aperiam culpa asperiores ut. Magnam voluptas officiis fugiat. Consequatur nobis quia nemo consequatur laudantium voluptate. Molestiae et accusamus ut. Saepe nulla eveniet te',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(5,'Impedit nobis hic numquam.','Similique quidem itaque repellendus vel sequi perferendis qui. Et maxime quo doloribus ipsum et qui nobis. Voluptatibus repudiandae in odit quas in officia corporis. Quibusdam ex voluptas incidunt itaque. Voluptatem pariatur voluptatibus sed qui perferend',9,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(6,'Consectetur non quod ut voluptatum.','Sint inventore vitae nam. Et et eaque sint nobis ut eum. Officiis ea soluta minus id aspernatur id vero. Totam aut rerum in veritatis.',6,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(7,'Rem voluptatem nostrum.','Sed odio dicta ut eum distinctio accusantium. Amet facilis in facilis laboriosam quia beatae. A fugiat ut nihil est voluptatem.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(8,'Nostrum modi qui est vitae reprehenderit.','Possimus quasi voluptates dolorum sunt. Quasi ut ratione non omnis. Quia porro doloribus odit quas commodi reiciendis. Omnis pariatur aliquid cumque et est architecto qui. Est et officia minima similique non cupiditate libero voluptatum.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(9,'Sed non doloribus et accusantium est.','Corrupti eum hic eum enim sed quod. Officia voluptatem consectetur voluptatum necessitatibus nihil. Quibusdam veniam voluptatem doloremque non.',4,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(10,'Quos nesciunt ex.','Vitae quia fuga eligendi asperiores veritatis reiciendis. Tenetur non sint fugiat et dolores qui sunt est. Quas harum recusandae dolor amet officia. Iusto qui commodi nihil et voluptatum sunt. Molestias et aut fuga ab.',4,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(11,'Exercitationem odit nemo deleniti ea.','Deserunt et quisquam voluptas est qui. Quaerat quia sunt sed ipsum nostrum. Repellat dolorem doloremque est qui in. Ut vitae eos saepe rerum eos aut fuga.',2,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(12,'Ut non praesentium autem reiciendis.','Velit aspernatur alias rerum. Est voluptatibus nobis sint nobis similique est. Nemo sed nesciunt qui aut tenetur. Sint debitis ullam dicta ut quis id.',2,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(13,'Neque earum nihil est.','Voluptatibus velit quia voluptates eum. Quidem voluptatem dolor blanditiis nesciunt saepe. Et voluptatem ad et suscipit cumque. Eum et minima vero recusandae aut rem. Ut et ut esse et deleniti maiores. Ut est quo laborum quibusdam nisi non et.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(14,'Vero non ullam dolorem.','Odit soluta dolor voluptatibus explicabo est eveniet. Sunt ratione eum a voluptate in maiores. Vitae dicta ex accusamus. Itaque nostrum ipsam iste excepturi quos est sunt. Sunt dolores atque blanditiis. Quasi voluptas et distinctio qui.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(15,'Et quis id aut.','Ut dolores dolor cumque odio voluptatem. Architecto iusto et fugiat excepturi veritatis illum aliquam reiciendis. Error vel dolor optio. Et qui non iste mollitia dicta enim quis id.',1,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(16,'Doloribus ea ut quia qui.','Tempore quo in temporibus enim porro et architecto. Dolores consequatur sed hic. Nostrum debitis voluptatem deleniti. Totam ab alias voluptatem fuga.',2,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(17,'Atque qui aut quisquam.','Commodi ea ut architecto praesentium. Beatae necessitatibus modi aliquid ullam sed quaerat. Omnis omnis et molestiae est pariatur assumenda et qui. Minima provident maiores molestiae dolores aut.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(18,'Rem voluptatem quaerat pariatur.','Consequatur quia cumque animi omnis quis. Quis doloribus dignissimos voluptas quia est. Est est consectetur consequatur explicabo. Et nihil quas harum amet dignissimos aperiam. Tenetur pariatur quibusdam ut vel.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(19,'Qui facilis est nam.','Sint quo eaque aliquid est. Sit provident rem impedit ab tempora amet dolorem et. Expedita et perspiciatis rem omnis cum.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(20,'Magnam beatae enim et dolor.','Temporibus aliquid rerum est aut. Velit unde molestiae maxime cum corporis. Ut officiis quidem earum qui eum repellat id. Ipsam ea aut qui. Accusamus ducimus eveniet beatae quae.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(21,'Quo odit et aut.','Aperiam aperiam distinctio placeat ipsam earum. Ut fugiat est eligendi. Architecto explicabo laudantium cum neque numquam consectetur in. Incidunt aut pariatur ullam veniam aut.',7,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(22,'Enim itaque rerum molestias.','Omnis dolor aut rem autem. Dolores ipsum temporibus magni ipsum soluta. Necessitatibus nobis commodi corporis nesciunt et voluptates sint. Debitis tenetur natus labore deleniti architecto sit laudantium. Ipsam consectetur minima et aut aspernatur ipsum. Q',7,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(23,'Temporibus repellat saepe corporis ex.','Est non ipsam earum autem non quo. Ut qui sint dolore eum consectetur odit quis. Fugit maxime ea in sint unde. Officiis debitis modi ex. Vel ab perferendis voluptas fugiat iusto.',7,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(24,'Doloribus molestias et.','Impedit id maxime molestiae officia. Voluptatem aliquid nihil est. Magnam quod quia eos fuga exercitationem ut quisquam. Omnis voluptates voluptate cum quia.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(25,'Quidem consequatur rerum aut.','Non saepe aut et consectetur et dignissimos. Quasi aliquam sunt ab sed. Necessitatibus id sed quisquam ut. Consequatur repellat quas sit corrupti autem ex. Ad occaecati omnis nobis sed autem. Laborum aut quia quia ducimus ea nihil corrupti voluptate.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(26,'Rerum voluptates modi aspernatur.','Labore enim nam sapiente eos cumque. Iusto at quasi doloremque consequatur error quia consequatur. Odio sit quis et voluptatem nemo impedit. Odio adipisci et non et.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(27,'Amet aperiam et fugit.','Voluptates quo adipisci non quas omnis repellendus. Rem id consequatur incidunt qui quibusdam enim. Dicta aut maxime ut perspiciatis officiis voluptas. Laudantium ratione error omnis dolorem.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(28,'Aut ut eaque ullam.','Ab aliquam rem quis perferendis ullam excepturi. Et voluptatibus assumenda quia dolor consectetur architecto. Adipisci odio reiciendis eaque ea sit quos doloremque. Non aut dolorum et odit. Distinctio quo tempore soluta voluptatibus molestiae accusamus au',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(29,'Impedit est reiciendis ut aperiam ipsam.','Sit sed voluptatem pariatur ullam sed eos provident. Corrupti accusamus repellendus ab blanditiis possimus ut. Ut iure architecto voluptatem et deleniti provident est. Et adipisci a rerum doloremque nulla. Porro est tenetur enim voluptatum.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(30,'Ad dicta quibusdam assumenda.','Quae dolor enim nemo nihil nemo quisquam illum asperiores. Sunt eos aut ex magni incidunt vel minima commodi. Sint ducimus aperiam minus quas.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(31,'Alias incidunt odit est.','Qui odio quo facilis optio dolores. Soluta voluptates et accusantium sapiente odio voluptate. Molestiae dignissimos et adipisci at voluptas.',4,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(32,'Nihil recusandae sequi neque saepe officiis.','Sed voluptas voluptatem ipsa. Quia porro qui et. Et et hic quia repellat. Ratione architecto fugit similique veritatis odit quisquam. Id in eaque reprehenderit est.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(33,'Architecto et culpa.','Ipsam quaerat aut atque. Maiores dolores dolorem excepturi nulla illum porro. Sit quo sit expedita est libero repudiandae deleniti.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(34,'Explicabo et ut ipsa.','Consequatur sed aperiam deleniti error est et rerum. Fugit error soluta aut praesentium id porro voluptates amet. Sequi autem officiis non impedit laudantium. Exercitationem corporis quia fuga harum culpa minus recusandae. Alias aliquam a deleniti facere ',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(35,'Et quae tempore.','Eligendi quasi neque numquam aut incidunt soluta dignissimos. Et eum temporibus quia facere. Optio voluptas non et exercitationem eos. Aliquid fugiat mollitia explicabo in et possimus.',10,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(36,'Unde non illum excepturi.','Tenetur occaecati sit expedita sunt aut vel voluptatem. Quos nihil nemo et assumenda vel dolor. Et molestiae occaecati atque possimus sit. Cum laudantium recusandae et odio. Officiis iure sunt vitae dolor debitis.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(37,'Quia nemo facilis sit rem dolorum.','Accusantium corporis cumque aliquid pariatur magni est. Harum in consectetur natus debitis repellendus eos in. Nisi reiciendis eaque corrupti eum. Qui ipsum consequatur atque necessitatibus. Error et voluptatem numquam mollitia facere voluptatibus aut. Se',1,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(38,'Repellendus sunt possimus.','Rerum possimus sed eveniet asperiores et nemo iste. Velit est laudantium aut ipsum. Nihil quam recusandae officiis non laudantium. Eius possimus quasi quia et recusandae illum unde.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(39,'Ut velit eum.','Aperiam fugiat harum laborum eum sapiente. Dicta veniam cumque fugiat cum iure. Dolores maxime qui dolorem ut aut nesciunt sit. Autem dignissimos dicta ducimus molestias beatae. Ullam quia quod est sint hic sed quis.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(40,'Voluptatibus qui illo aliquam rerum.','Similique maxime quaerat blanditiis totam. Dolores nesciunt sint vero aperiam et. Quaerat impedit aspernatur magnam. Autem animi et consequatur.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(41,'Dolore sit voluptatem ipsa officia sit.','In optio culpa exercitationem labore repellendus. Illo molestias cumque inventore rerum explicabo omnis. Rerum et sint iure commodi itaque.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(42,'Molestiae accusantium modi magnam.','Distinctio temporibus aspernatur atque laudantium delectus. Labore aspernatur qui molestiae quam fugiat. Animi sed recusandae provident nostrum qui. Velit vero aut enim sint at qui optio.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(43,'Quis magni sapiente ullam.','Quaerat odit aut et provident. Omnis aut deleniti enim dolorem quasi. Illo sunt officiis temporibus aperiam quia velit reiciendis. Praesentium aliquam nulla suscipit qui dignissimos. Placeat velit expedita et nihil temporibus nobis nulla.',8,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(44,'Consequuntur quo pariatur enim aut.','Alias eius inventore esse officiis ipsam. Atque sunt veritatis exercitationem velit ut ea soluta laudantium. Qui placeat nostrum maiores vel. Ut repudiandae quidem quia veniam ut. A eligendi error inventore maxime debitis asperiores.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(45,'Minima facilis quisquam ducimus.','Eum veniam temporibus ducimus architecto. Sunt dolorem praesentium quia aliquam consequatur velit est cum. Et eligendi provident tempore reprehenderit libero. Et voluptatem accusamus reiciendis enim ea nam deleniti id.',7,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(46,'Quis reiciendis cupiditate voluptates dolorem vel.','Quos totam ut ut voluptas qui eius ut. Praesentium vero et nobis eius quo. Earum consectetur exercitationem rerum eaque porro impedit et.',5,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(47,'Quos eius harum saepe et quia.','Beatae voluptatum ullam porro eius. Sed illo quaerat hic voluptatum quod. Quisquam omnis vel nulla voluptas ad repellendus. Sed blanditiis rerum fugiat cumque nesciunt culpa.',1,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(48,'Ducimus quod quo.','Et est ducimus praesentium earum sunt. Ut sed corporis consequatur alias. Est rem quis eos omnis. Optio sint qui voluptatem ab ut optio. Odio ipsa placeat doloremque vel. Quia voluptate non minus est.',4,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(49,'Rerum quia officiis inventore.','Optio facere fugiat velit. Et dolorem occaecati eveniet. Qui sunt optio tenetur. Beatae quia occaecati qui iste voluptas sit neque. Occaecati modi eum nisi porro similique asperiores necessitatibus. Et vel quia voluptas veniam ea debitis magnam.',3,'2017-05-26 22:52:46','2017-05-26 22:52:46'),(50,'Adipisci et assumenda maxime rem.','Voluptatem quaerat quas ipsam. Delectus error assumenda voluptas nam. Voluptatum omnis qui alias facilis. Sint non excepturi nemo deserunt sed.',4,'2017-05-26 22:52:46','2017-05-26 22:52:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`password`,`created_at`,`updated_at`) values (1,'Clay Schulist DDS','willie.bogan@donnelly.com','$2y$10$8V71l6mY3CFc39hj8Ov/V.1mIDYtTjP34eIiomNzO.XKiCVXd3MCK','2017-05-26 22:52:45','2017-05-26 22:52:45'),(2,'Lilly Mante IV','laisha20@oberbrunner.info','$2y$10$n.ZVxGOP2mRC5/uUNHtEPO0zn5hq5PNRgC9W5BSncYhg8.UogAaYa','2017-05-26 22:52:45','2017-05-26 22:52:45'),(3,'Prof. Orpha Ebert Sr.','nigel43@gmail.com','$2y$10$jfGgqS82l19wZayZYkPtJu2U5vpGD3HHtIUpM4kN3gIqSSOUcSeWe','2017-05-26 22:52:45','2017-05-26 22:52:45'),(4,'Anjali Kihn','xconnelly@gmail.com','$2y$10$Egc.c0fAl6ZF.gJ.Z4ob3.PS1LK39k/3xOS57R4C3uMcwnyzi1ZNO','2017-05-26 22:52:45','2017-05-26 22:52:45'),(5,'Quentin Ebert III','flatley.juliana@hotmail.com','$2y$10$mNAB72tjoa90a2KKMQuFn.6boY0c20nB2bk9ot1HSIO7819jCOa7i','2017-05-26 22:52:45','2017-05-26 22:52:45'),(6,'Kade Jakubowski','cpouros@raynor.org','$2y$10$U4DqjqJyCd6KmsamsytKJuQti9T/aPZnF7LWtHitYLVCtxI.rl9Iq','2017-05-26 22:52:45','2017-05-26 22:52:45'),(7,'Breana Dietrich','flowe@ritchie.org','$2y$10$U1QxORQH8wAR/M4V0hYFquc7rtOzhdHFxSMB1Glk84xjxSABwexcy','2017-05-26 22:52:45','2017-05-26 22:52:45'),(8,'Audreanne Kautzer','parker.allen@gmail.com','$2y$10$qsfV2Ho3cdWNQ3dm4NmiWuyNLmqT2cpuzzCgb2prIRVowYqK.6L62','2017-05-26 22:52:45','2017-05-26 22:52:45'),(9,'Antwon Yost','uklocko@will.com','$2y$10$3it7jPPUyQaBoIBSQWtBzOhhRKTr42ehMHvWaxd2HvrSe9JPF2GkG','2017-05-26 22:52:45','2017-05-26 22:52:45'),(10,'Wilma Jacobs','gulgowski.glenna@gmail.com','$2y$10$lH3t55.pWwYlXRur6y.WKuMKz53eVGGiNkrAWewoWfqDH1lJEWwTG','2017-05-26 22:52:45','2017-05-26 22:52:45');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
