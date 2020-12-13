CREATE SCHEMA business AUTHORIZATION graph;

CREATE TABLE business.country (
	id int4 NOT NULL,
	"name" text NULL,
	alpha3 char(3) NULL,
	continent text NULL,
	CONSTRAINT country_pk PRIMARY KEY (id)
);

INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (10,'Antarctica','ATA','南極');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (40,'Austria','AUT','東ヨーロッパ	');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (90,'Solomon Islands','SLB','オセアニア');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (158,'Taiwan','TWN','東アジア');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (56,'Belgium','BEL','西ヨーロッパ	');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (124,'Canada','CAN','北アメリカ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (170,'Colombia','COL','南アメリカ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (192,'Cuba','CUB','中央アメリカ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (208,'Denmark','DNK','北ヨーロッパ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (417,'Kyrgyzstan','KGZ','中央アジア');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (140,'Central African Republic','CAF','中央アフリカ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (792,'Turkey','TUR','中東');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (392,'Japan','JPN','東アジア');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (262,'Djibouti','DJI','東アフリカ');
INSERT INTO business.country (id,"name",alpha3,continent)
	VALUES (702,'Singapore','SGP','東南アジア');

CREATE TABLE business.city (
	id int4 NOT NULL,
	"name" text NULL,
	population int4 NULL,
	country_id int4 NOT NULL,
	CONSTRAINT city_pk PRIMARY KEY (id),
	CONSTRAINT city_fk FOREIGN KEY (country_id) REFERENCES business.country(id)
);

INSERT INTO business.city (id,"name",population,country_id)
	VALUES (1,'Niigata',505272,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (2,'Tokyo',8336599,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (3,'Osaka',2592413,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (4,'Nagoya',2191279,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (5,'Kyoto',1459640,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (6,'Sendai',1063103,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (7,'Kumamoto',680423,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (8,'Chiba',919729,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (9,'Sapporo',1883027,392);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (10,'Taipei',7871900,158);
INSERT INTO business.city (id,"name",population,country_id)
	VALUES (11,'Kaohsiung',1519711,158);
