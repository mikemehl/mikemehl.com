PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE address(
  id integer primary key,
  street text not null,
  city text not null,
  state text not null,
  zip text not null
);
INSERT INTO address VALUES(1,'101 College Pkwy','Arnold','MD','21012');
INSERT INTO address VALUES(2,'1000 Hilltop Cir','Baltimore','MD','21250');
INSERT INTO address VALUES(3,'7323 Aviation Blvd','Baltimore','MD','21240');
INSERT INTO address VALUES(4,'280 W Kagy Blvd STE D #292','Bozeman','MT','59715');
INSERT INTO address VALUES(5,'98 Hammonds Lane Apt 213','Brooklyn Park','MD','21225');
CREATE TABLE skill(
  id integer primary key,
  name TEXT not null,
  category TEXT not null CHECK(category in ( 'language', 'platform', 'tool')), 
  experience_level TEXT not null CHECK(experience_level in ('expert', 'proficient', 'basic'))
);
INSERT INTO skill VALUES(1,'C','language','expert');
INSERT INTO skill VALUES(2,'C++','language','expert');
INSERT INTO skill VALUES(3,'Python','language','expert');
INSERT INTO skill VALUES(4,'Lua','language','expert');
INSERT INTO skill VALUES(5,'Bash','language','expert');
INSERT INTO skill VALUES(6,'Rust','language','proficient');
INSERT INTO skill VALUES(7,'Go','language','proficient');
INSERT INTO skill VALUES(8,'Elixir','language','proficient');
INSERT INTO skill VALUES(9,'Scheme','language','proficient');
INSERT INTO skill VALUES(10,'HTML','language','basic');
INSERT INTO skill VALUES(11,'CSS','language','basic');
INSERT INTO skill VALUES(12,'Typescript/JavaScript','language','basic');
INSERT INTO skill VALUES(13,'SQL','language','basic');
INSERT INTO skill VALUES(14,'Haskell','language','basic');
INSERT INTO skill VALUES(15,'Windows','platform','proficient');
INSERT INTO skill VALUES(16,'Linux','platform','proficient');
INSERT INTO skill VALUES(17,'Buildroot','platform','proficient');
INSERT INTO skill VALUES(18,'FreeRTOS','platform','proficient');
INSERT INTO skill VALUES(19,'Nerves','platform','proficient');
INSERT INTO skill VALUES(20,'Zephyr','platform','proficient');
INSERT INTO skill VALUES(21,'Bare Metal','platform','proficient');
INSERT INTO skill VALUES(22,'AWS IoT','platform','proficient');
INSERT INTO skill VALUES(23,'Git','tool','proficient');
INSERT INTO skill VALUES(24,'Jira','tool','proficient');
INSERT INTO skill VALUES(25,'CircleCI','tool','proficient');
INSERT INTO skill VALUES(26,'Github Actions','tool','proficient');
INSERT INTO skill VALUES(27,'Docker','tool','proficient');
INSERT INTO skill VALUES(28,'Caddy','tool','proficient');
INSERT INTO skill VALUES(29,'Ansible','tool','proficient');
INSERT INTO skill VALUES(30,'GDB','tool','proficient');
CREATE TABLE interest(
  id integer primary key,
  name TEXT not null,
  category TEXT not null CHECK(category in ('hobby', 'professional', 'academic'))
);
INSERT INTO interest VALUES(1,'Embedded Systems','professional');
INSERT INTO interest VALUES(2,'Firmware','professional');
INSERT INTO interest VALUES(3,'Compilers','professional');
INSERT INTO interest VALUES(4,'Linux','professional');
INSERT INTO interest VALUES(5,'Rust','professional');
INSERT INTO interest VALUES(6,'Music','hobby');
INSERT INTO interest VALUES(7,'Video Games','hobby');
INSERT INTO interest VALUES(8,'Board Games','hobby');
INSERT INTO interest VALUES(9,'Horror','hobby');
INSERT INTO interest VALUES(10,'Home Server Administration','hobby');
CREATE TABLE person(
  id integer primary key,
  category TEXT not null CHECK(category in ('reference', 'self')),
  first_name text not null,
  last_name text not null,
  email text not null,
  phone text not null,
  address_id integer not null,
  foreign key (address_id) references address(id)
);
CREATE TABLE experience(
  id integer primary key,
  company text not null,
  title text not null,
  start_date date not null,
  end_date date not null,
  description text not null,
  address_id integer not null,
  foreign key (address_id) references address(id)
);
INSERT INTO experience VALUES(1,'Anne Arundel Community College','Mathematics Tutor','2016-08','2017-07','I tutored students at AACC''s Math Lab, a walk in tutoring environment. I helped students to master the skills necessary for success in all mathematics subjects, from basic algebra to differential equations.',1);
INSERT INTO experience VALUES(2,'Northrop Grumman','Embedded Software Engineer','2017-07','2019-08',' I worked on the embedded software for several large radar systems, with areas of functionality including signal processing, radio control, target tracking, and data transport. As a key engineer on the team, I worked closely with systems engineers to implement new algorithms, perform lab testing, and improve performance.',3);
INSERT INTO experience VALUES(3,'Very','Firmware Engineer','2019-08','Present','I worked on the firmware for several IoT products for various clients, including utility, air quality, safety, and industrial applications. I worked closely with engineers from diverse fields to develop new products, and with clients to understand their needs and develop solutions.',4);
CREATE TABLE education(
  id integer primary key,
  institution text not null,
  degree text not null,
  start_date date not null,
  end_date date not null,
  gpa text not null,
  address_id integer not null,
  foreign key (address_id) references address(id)
);
INSERT INTO education VALUES(1,'Anne Arundel Community College','A.S. in Computer Science/A.S. In Mathematics','2014-01','2016-07','3.8',1);
INSERT INTO education VALUES(2,'University of Maryland, Baltimore County','B.S. in Computer Science/B.A. in Mathematics','2016-08','2018-12','3.8',2);
CREATE TABLE highlight(
  id integer primary key,
  description text not null,
  experience_id integer,
  education_id integer,
  foreign key (experience_id) references experience(id),
  foreign key (education_id) references education(id)
);
INSERT INTO highlight VALUES(1,'Mathematics Department Award, 2016-06',NULL,1);
INSERT INTO highlight VALUES(2,'Computer Science Department Magna Cum Laude, 2018-12',NULL,2);
INSERT INTO highlight VALUES(3,'Pi Mu Epsilon Mathematics Honor Society, 2017-08',NULL,2);
INSERT INTO highlight VALUES(4,'Architected and implemented a new search and target tracking algorithm in C++, utilizing first of it''s kind hardware functionality.',2,NULL);
INSERT INTO highlight VALUES(5,'Worked with a team to port a legacy radar system to a new hardware platform, including a custom Linux distribution.',2,NULL);
INSERT INTO highlight VALUES(6,'Developed a testing application for replaying recorded radar data, allowing for rapid development and testing of new algorithms.',2,NULL);
INSERT INTO highlight VALUES(7,'As the primary firmware engineer, utilized Buildroot and Nerves/Elixir in the development of an air quality monitoring system for a custom hardware platform. Designed to expand to support additional sensors and functionality.',3,NULL);
INSERT INTO highlight VALUES(8,'Improved the performance of a bare metal embedded system for an IoT utility monitoring product and helped the client bring their product to launch.',3,NULL);
INSERT INTO highlight VALUES(9,'Worked closely with backend engineers to enable a new product to communicate with AWS IoT.',3,NULL);
INSERT INTO highlight VALUES(10,'Aided clients in preparing their products for FCC and UL certification.',3,NULL);
CREATE TABLE website(
  id integer primary key,
  url text not null,
  name text not null,
  person_id integer,
  experience_id integer,
  education_id integer,
  foreign key (person_id) references person(id)
  foreign key (experience_id) references experience(id),
  foreign key (education_id) references education(id)
);
COMMIT;
