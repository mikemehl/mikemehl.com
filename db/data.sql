PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
INSERT INTO address(street, city, state, zip) VALUES('101 College Pkwy','Arnold','MD','21012');
INSERT INTO address(street, city, state, zip) VALUES('1000 Hilltop Cir','Baltimore','MD','21250');
INSERT INTO address(street, city, state, zip) VALUES('7323 Aviation Blvd','Baltimore','MD','21240');
INSERT INTO address(street, city, state, zip) VALUES('280 W Kagy Blvd STE D #292','Bozeman','MT','59715');
INSERT INTO address(street, city, state, zip) VALUES('98 Hammonds Lane Apt 213','Brooklyn Park','MD','21225');

INSERT INTO experience(company, title, start_date, end_date, description, address_id) VALUES('Anne Arundel Community College','Mathematics Tutor','2016-08','2017-07','I tutored students at AACC''s Math Lab, a walk in tutoring environment. I helped students to master the skills necessary for success in all mathematics subjects, from basic algebra to differential equations.', 1);
INSERT INTO experience(company, title, start_date, end_date, description, address_id) VALUES('Northrop Grumman','Embedded Software Engineer','2017-07','2019-08',' I worked on the embedded software for several large radar systems, with areas of functionality including signal processing, radio control, target tracking, and data transport. As a key engineer on the team, I worked closely with systems engineers to implement new algorithms, perform lab testing, and improve performance.', 3);
INSERT INTO experience(company, title, start_date, end_date, description, address_id) VALUES('Very','Firmware Engineer','2019-08','Present','I worked on the firmware for several IoT products for various clients, including utility, air quality, safety, and industrial applications. I worked closely with engineers from diverse fields to develop new products, and with clients to understand their needs and develop solutions.', 4);

INSERT INTO education(institution, degree, start_date, end_date, gpa, address_id) VALUES('Anne Arundel Community College','A.S. in Computer Science/A.S. In Mathematics','2014-01','2016-07',3.7999999999999998223, 1);
INSERT INTO education(institution, degree, start_date, end_date, gpa, address_id) VALUES('University of Maryland, Baltimore County','B.S. in Computer Science/B.A. in Mathematics','2016-08','2018-12',3.7999999999999998223, 2);

INSERT INTO highlight(description, education_id) VALUES('Mathematics Department Award, 2016-06', 1);
INSERT INTO highlight(description, education_id) VALUES('Computer Science Department Magna Cum Laude, 2018-12', 2);
INSERT INTO highlight(description, education_id) VALUES('Pi Mu Epsilon Mathematics Honor Society, 2017-08', 2);

INSERT INTO highlight(description, experience_id) VALUES('Architected and implemented a new search and target tracking algorithm in C++, utilizing first of it''s kind hardware functionality.', 2);
INSERT INTO highlight(description, experience_id) VALUES('Worked with a team to port a legacy radar system to a new hardware platform, including a custom Linux distribution.', 2);
INSERT INTO highlight(description, experience_id) VALUES('Developed a testing application for replaying recorded radar data, allowing for rapid development and testing of new algorithms.', 2);
INSERT INTO highlight(description, experience_id) VALUES('As the primary firmware engineer, utilized Buildroot and Nerves/Elixir in the development of an air quality monitoring system for a custom hardware platform. Designed to expand to support additional sensors and functionality.', 3);
INSERT INTO highlight(description, experience_id) VALUES('Improved the performance of a bare metal embedded system for an IoT utility monitoring product and helped the client bring their product to launch.', 3);
INSERT INTO highlight(description, experience_id) VALUES('Worked closely with backend engineers to enable a new product to communicate with AWS IoT.', 3);
INSERT INTO highlight(description, experience_id) VALUES('Aided clients in preparing their products for FCC and UL certification.', 3);

INSERT INTO interest(category, name) VALUES('professional','Embedded Systems');
INSERT INTO interest(category, name) VALUES('professional','Firmware');
INSERT INTO interest(category, name) VALUES('professional','Compilers');
INSERT INTO interest(category, name) VALUES('professional','Linux');
INSERT INTO interest(category, name) VALUES('professional','Rust');
INSERT INTO interest(category, name) VALUES('hobby','Music');
INSERT INTO interest(category, name) VALUES('hobby','Video Games');
INSERT INTO interest(category, name) VALUES('hobby','Board Games');
INSERT INTO interest(category, name) VALUES('hobby','Horror');
INSERT INTO interest(category, name) VALUES('hobby','Home Server Administration');

INSERT INTO skill(experience_level, name, category) VALUES('expert','C','language');
INSERT INTO skill(experience_level, name, category) VALUES('expert','C++','language');
INSERT INTO skill(experience_level, name, category) VALUES('expert','Python','language');
INSERT INTO skill(experience_level, name, category) VALUES('expert','Lua','language');
INSERT INTO skill(experience_level, name, category) VALUES('expert','Bash','language');
INSERT INTO skill(experience_level, name, category) VALUES('proficient','Rust','language');
INSERT INTO skill(experience_level, name, category) VALUES('proficient','Go','language');
INSERT INTO skill(experience_level, name, category) VALUES('proficient','Elixir','language');
INSERT INTO skill(experience_level, name, category) VALUES('proficient','Scheme','language');
INSERT INTO skill(experience_level, name, category) VALUES('basic','HTML','language');
INSERT INTO skill(experience_level, name, category) VALUES('basic','CSS','language');
INSERT INTO skill(experience_level, name, category) VALUES('basic','Typescript/JavaScript','language');
INSERT INTO skill(experience_level, name, category) VALUES('basic','SQL','language');
INSERT INTO skill(experience_level, name, category) VALUES('basic','Haskell','language');

INSERT INTO skill(category, name, experience_level) VALUES('platform','Windows','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','Linux','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','Buildroot','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','FreeRTOS','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','Nerves','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','Zephyr','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','Bare Metal','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('platform','AWS IoT','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Git','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Jira','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','CircleCI','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Github Actions','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Docker','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Caddy','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','Ansible','proficient');
INSERT INTO skill(category, name, experience_level) VALUES('tool','GDB','proficient');
COMMIT;
