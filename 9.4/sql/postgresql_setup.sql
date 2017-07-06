--all the sql that needs to run to initialize the empty databases
create user hummingbird with password 'hummingbird';
CREATE DATABASE template2 WITH TEMPLATE = template0 ENCODING = 'UTF8';
create database hummingbird  with owner hummingbird TEMPLATE = template2 ENCODING  'UTF8';
create database hb_demo with owner hummingbird TEMPLATE = template2 ENCODING  'UTF8';
create database hb_demo2 with owner hummingbird TEMPLATE = template2 ENCODING  'UTF8';
--create database hummingbird_reference with owner hummingbird;
alter database postgres set timezone to 'UTC';
alter database hummingbird set timezone to 'UTC';
alter database hb_demo set timezone to 'UTC';
alter database hb_demo2 set timezone to	'UTC';
--alter database hummingbird_reference  set timezone to	'UTC';
alter role hummingbird with superuser;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
