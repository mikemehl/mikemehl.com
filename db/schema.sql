CREATE TABLE address(
  id integer primary key,
  street text not null,
  state text not null,
  zip text not null
);

CREATE TABLE skill(
  id integer primary key,
  name TEXT not null,
  category TEXT not null CHECK(category in ( 'language', 'platform', 'tool')), 
  experience_level TEXT not null CHECK(experience_level in ('expert', 'proficient', 'basic'))
);

CREATE TABLE interest(
  id integer primary key,
  name TEXT not null,
  category TEXT not null CHECK(category in ('hobby', 'professional', 'academic'))
);

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

CREATE table experience(
  id integer primary key,
  company text not null,
  title text not null,
  start_date date not null,
  end_date date not null,
  description text not null,
  address_id integer not null,
  foreign key (address_id) references address(id)
);

CREATE table education(
  id integer primary key,
  institution text not null,
  degree text not null,
  start_date date not null,
  end_date date not null,
  description text not null,
  address_id integer not null,
  foreign key (address_id) references address(id)
);

CREATE table highlights(
  id integer primary key,
  description text not null,
  experience_id integer,
  education_id integer,
  foreign key (experience_id) references experience(id),
  foreign key (education_id) references education(id)
);

CREATE table websites(
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
