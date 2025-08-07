/*
Creating database and schemas
========================================

Script Purpose : 
     This script creates database named DataProject.
     With creatig database the other schemas have also created named with "Bronze", "Silver" and "Gold"

Warning :
      Running this script will give the error as the database is already existed so do not drop this to create 
      oher database with the same name otherwise all the data inside this database will be dropped

*/

use master;

create database DataProject;

use DataProject;

create schema bronze;
go
create schema silver;
go
create schema gold;
go

