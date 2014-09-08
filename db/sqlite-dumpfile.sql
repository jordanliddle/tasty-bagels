PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
INSERT INTO "schema_migrations" VALUES('20140722131810');
INSERT INTO "schema_migrations" VALUES('20140723113851');
INSERT INTO "schema_migrations" VALUES('20140723114617');
INSERT INTO "schema_migrations" VALUES('20140723124959');
INSERT INTO "schema_migrations" VALUES('20140723132013');
INSERT INTO "schema_migrations" VALUES('20140724141215');
INSERT INTO "schema_migrations" VALUES('20140724141239');
INSERT INTO "schema_migrations" VALUES('20140725191253');
INSERT INTO "schema_migrations" VALUES('20140731075402');
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar(255), "description" text, "image_url" varchar(255), "price" decimal(8,2), "created_at" datetime, "updated_at" datetime, "list_image_file_name" varchar(255), "list_image_content_type" varchar(255), "list_image_file_size" integer, "list_image_updated_at" datetime);
INSERT INTO "products" VALUES(2,'Ham and Cheese','<p>
        This all-time classic ham and cheese sandwich contains two fresh slices of Grade-A italian nested
        between a fresh layer of crisp lettuce and a warm slice of swiss cheese.
      </p>','hamcheese.jpg',3.49,'2014-07-22 13:35:22.364395','2014-07-31 08:03:25.386221','hamcheese.jpg','image/jpeg',83746,'2014-07-31 08:03:25.237669');
INSERT INTO "products" VALUES(3,'BLT','<p>
        A favorite among many, the BLT showcases our favorite Canadian-smoked bacon, cooked to a
        perfect crisp and layered on top of salted garden tomatoes and a mix of fresh crisp
        lettuce and mayonnaise. This one is destined to please the crowd.
      </p>','blt.jpg',4.95,'2014-07-22 13:35:22.369939','2014-07-31 08:03:41.903771','blt.jpg','image/jpeg',119629,'2014-07-31 08:03:41.757981');
INSERT INTO "products" VALUES(4,'Tuna','<p>
       You''ve never tried Tuna like this. Our fisherman grade, fresh cut tuna is served in a warm crusty
baguette with the perfect proportions of tuna, mayonnaise, onion and our very own secret sauce. If
your tastebuds don''t pursuade you to make this sandwich a weekly tradition, we''re not sure what
will!
			</p>','tuna.jpg',3.95,'2014-07-22 13:35:22.371769','2014-07-31 08:04:00.051476','tuna.jpg','image/jpeg',103287,'2014-07-31 08:03:59.895513');
INSERT INTO "products" VALUES(5,'Smoked Salmon','<p>Smokey homegrown salmon sandwiched between a fresh baked bagel garnished with cream cheese and a twig of dill.</p>','salmon.jpg',6.95,'2014-07-22 14:59:32.872577','2014-07-31 08:04:13.198426','salmon.jpg','image/jpeg',50110,'2014-07-31 08:04:13.023135');
INSERT INTO "products" VALUES(6,'Egg Salad','<p>This mornings eggs from the local coop hatched and boiled to yolky perfection. Cut finely with green onions and mixed with fresh mayonnaise and sprigs of dill, this egg salad sandwiched between two slices of rye will surely please your senses. </p>','eggsalad.jpg',3.45,'2014-07-23 11:37:20.383639','2014-07-31 08:04:24.096920','eggsalad.jpg','image/jpeg',44560,'2014-07-31 08:04:23.945062');
INSERT INTO "products" VALUES(9,'Breakfast Bagel','<p> A delightful wake-up call for your hungry tastebuds, this toasted breakfast sandwich comes stacked with a warm over-easy egg, soft-melted cheddar cheese, the perfect portion of butter and fresh garden vegetables of your choice. We guarantee this as a great way to kick off your day!',NULL,3.5,'2014-07-31 08:11:58.207484','2014-07-31 08:11:58.207484','IMG_1521.JPG','image/jpeg',206667,'2014-07-31 08:11:57.822450');
CREATE TABLE "carts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "created_at" datetime, "updated_at" datetime);
INSERT INTO "carts" VALUES(24,'2014-07-24 10:39:52.685337','2014-07-24 10:39:52.685337');
INSERT INTO "carts" VALUES(26,'2014-07-24 14:54:26.361787','2014-07-24 14:54:26.361787');
INSERT INTO "carts" VALUES(27,'2014-07-24 15:34:55.228050','2014-07-24 15:34:55.228050');
INSERT INTO "carts" VALUES(28,'2014-07-24 15:48:08.116923','2014-07-24 15:48:08.116923');
INSERT INTO "carts" VALUES(67,'2014-07-29 17:10:45.977811','2014-07-29 17:10:45.977811');
INSERT INTO "carts" VALUES(77,'2014-07-30 16:08:58.243916','2014-07-30 16:08:58.243916');
INSERT INTO "carts" VALUES(89,'2014-07-31 16:20:38.607595','2014-07-31 16:20:38.607595');
INSERT INTO "carts" VALUES(90,'2014-08-04 14:10:23.327232','2014-08-04 14:10:23.327232');
INSERT INTO "carts" VALUES(91,'2014-08-08 16:29:24.743014','2014-08-08 16:29:24.743014');
INSERT INTO "carts" VALUES(93,'2014-08-20 14:57:07.437734','2014-08-20 14:57:07.437734');
INSERT INTO "carts" VALUES(97,'2014-08-20 15:09:39.115033','2014-08-20 15:09:39.115033');
INSERT INTO "carts" VALUES(98,'2014-09-03 13:50:21.244383','2014-09-03 13:50:21.244383');
INSERT INTO "carts" VALUES(101,'2014-09-03 13:54:02.894317','2014-09-03 13:54:02.894317');
CREATE TABLE "line_items" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "product_id" integer, "cart_id" integer, "created_at" datetime, "updated_at" datetime, "quantity" integer DEFAULT 1, "order_id" integer);
INSERT INTO "line_items" VALUES(65,6,24,'2014-07-24 10:39:54.359144','2014-07-24 10:39:54.359144',1,NULL);
INSERT INTO "line_items" VALUES(66,2,24,'2014-07-24 10:39:55.999052','2014-07-24 10:39:55.999052',1,NULL);
INSERT INTO "line_items" VALUES(67,5,24,'2014-07-24 10:39:58.553718','2014-07-24 10:39:58.553718',1,NULL);
INSERT INTO "line_items" VALUES(71,3,27,'2014-07-24 15:34:57.801380','2014-07-24 15:34:57.801380',1,NULL);
INSERT INTO "line_items" VALUES(72,6,27,'2014-07-24 15:34:58.891525','2014-07-24 15:34:58.891525',1,NULL);
INSERT INTO "line_items" VALUES(147,6,67,'2014-07-29 17:10:49.973152','2014-07-29 17:25:26.022607',6,NULL);
INSERT INTO "line_items" VALUES(148,2,67,'2014-07-29 17:10:50.860631','2014-07-29 17:10:50.860631',1,NULL);
INSERT INTO "line_items" VALUES(149,3,67,'2014-07-29 17:23:14.741049','2014-07-29 17:24:44.617559',7,NULL);
INSERT INTO "line_items" VALUES(155,3,NULL,'2014-07-30 09:27:04.284669','2014-07-30 12:00:07.296993',3,9);
INSERT INTO "line_items" VALUES(156,6,NULL,'2014-07-30 09:27:05.947652','2014-07-30 12:00:07.298936',3,9);
INSERT INTO "line_items" VALUES(157,2,NULL,'2014-07-30 09:32:34.862454','2014-07-30 12:00:07.300303',1,9);
INSERT INTO "line_items" VALUES(158,5,NULL,'2014-07-30 09:32:39.089275','2014-07-30 12:00:07.301230',1,9);
INSERT INTO "line_items" VALUES(170,6,NULL,'2014-07-30 16:03:32.895310','2014-07-30 16:08:58.198456',1,10);
INSERT INTO "line_items" VALUES(171,3,NULL,'2014-07-30 16:03:33.608612','2014-07-30 16:08:58.203235',1,10);
INSERT INTO "line_items" VALUES(172,2,NULL,'2014-07-30 16:03:34.524124','2014-07-30 16:08:58.207388',1,10);
INSERT INTO "line_items" VALUES(173,5,NULL,'2014-07-30 16:03:35.444611','2014-07-30 16:08:58.209968',1,10);
INSERT INTO "line_items" VALUES(174,4,NULL,'2014-07-30 16:03:36.495505','2014-07-30 16:08:58.210929',1,10);
INSERT INTO "line_items" VALUES(175,3,77,'2014-07-30 16:09:35.723888','2014-07-30 16:09:35.723888',1,NULL);
INSERT INTO "line_items" VALUES(180,3,NULL,'2014-07-31 12:27:59.940569','2014-07-31 16:11:06.128803',1,11);
INSERT INTO "line_items" VALUES(181,3,90,'2014-08-04 14:10:32.438098','2014-08-04 14:10:32.438098',1,NULL);
INSERT INTO "line_items" VALUES(182,9,90,'2014-08-04 14:10:33.513128','2014-08-04 14:10:33.513128',1,NULL);
INSERT INTO "line_items" VALUES(183,6,90,'2014-08-04 14:10:34.289032','2014-08-04 14:10:34.289032',1,NULL);
INSERT INTO "line_items" VALUES(184,5,90,'2014-08-04 14:10:35.588821','2014-08-04 14:10:35.588821',1,NULL);
INSERT INTO "line_items" VALUES(185,3,91,'2014-08-08 16:29:30.314966','2014-08-08 16:29:30.314966',1,NULL);
INSERT INTO "line_items" VALUES(188,3,93,'2014-08-20 14:57:10.038204','2014-08-20 14:58:09.759102',3,NULL);
INSERT INTO "line_items" VALUES(189,9,93,'2014-08-20 14:57:17.247925','2014-08-20 14:57:19.449259',2,NULL);
INSERT INTO "line_items" VALUES(196,3,97,'2014-08-20 15:09:40.761327','2014-08-20 15:09:40.761327',1,NULL);
INSERT INTO "line_items" VALUES(197,3,98,'2014-09-03 13:50:40.800969','2014-09-03 13:50:40.800969',1,NULL);
INSERT INTO "line_items" VALUES(201,3,101,'2014-09-03 13:54:29.449510','2014-09-03 13:54:29.449510',1,NULL);
CREATE TABLE "orders" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "address" text, "email" varchar(255), "pay_type" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "orders" VALUES(9,'Jordan','120 Pinewood DR.','jrdnliddle@yahoo.ca','Hugs','2014-07-30 12:00:07.294068','2014-07-30 12:00:07.294068');
INSERT INTO "orders" VALUES(10,'Jordan Liddle','33 Chemin de la Bruyere','jrdnliddle@yahoo.ca','Credit','2014-07-30 16:08:58.196464','2014-07-30 16:08:58.196464');
INSERT INTO "orders" VALUES(11,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:11:06.121279','2014-07-31 16:11:06.121279');
INSERT INTO "orders" VALUES(12,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:13:26.577390','2014-07-31 16:13:26.577390');
INSERT INTO "orders" VALUES(13,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:16:00.863506','2014-07-31 16:16:00.863506');
INSERT INTO "orders" VALUES(14,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:17:03.693434','2014-07-31 16:17:03.693434');
INSERT INTO "orders" VALUES(15,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:17:59.390753','2014-07-31 16:17:59.390753');
INSERT INTO "orders" VALUES(16,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:18:55.161587','2014-07-31 16:18:55.161587');
INSERT INTO "orders" VALUES(17,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:19:15.171463','2014-07-31 16:19:15.171463');
INSERT INTO "orders" VALUES(18,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:20:04.781020','2014-07-31 16:20:04.781020');
INSERT INTO "orders" VALUES(19,'fdffds','fdsfs','jrdn','Cash','2014-07-31 16:20:38.576410','2014-07-31 16:20:38.576410');
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "password_digest" varchar(255), "created_at" datetime, "updated_at" datetime);
INSERT INTO "users" VALUES(3,'Jordan','$2a$10$OuWiLpolP9TgoTZFvs9JVOFKiF9naIPFiqaHjMpkobeqEC0WJka5.','2014-07-25 21:47:12.757000','2014-07-25 21:47:12.757000');
INSERT INTO "users" VALUES(4,'Janice','$2a$10$iD.eueDv1gtGT6teRthEN.TqqG/yEOb949grUmm9Sr.OHlU3qsEV6','2014-07-28 12:34:22.609537','2014-07-28 12:34:22.609537');
INSERT INTO "users" VALUES(6,'New Guy','$2a$10$o7X6TuBDF4.3qm2Ohmp1FeGoPQHRkOjfuOHRvxVD6kAP0oeAUwnvO','2014-07-28 16:54:36.470485','2014-07-28 16:54:36.470485');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('products',9);
INSERT INTO "sqlite_sequence" VALUES('carts',101);
INSERT INTO "sqlite_sequence" VALUES('line_items',201);
INSERT INTO "sqlite_sequence" VALUES('orders',19);
INSERT INTO "sqlite_sequence" VALUES('users',6);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
CREATE INDEX "index_line_items_on_product_id" ON "line_items" ("product_id");
CREATE INDEX "index_line_items_on_cart_id" ON "line_items" ("cart_id");
CREATE INDEX "index_line_items_on_order_id" ON "line_items" ("order_id");
COMMIT;
