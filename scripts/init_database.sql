/*
=============================================================
Database and Schema Setup Script
=============================================================
Purpose:
    This script is used to create a database called 'DataWarehouse'. 
    Before creating it, the script checks whether the database already exists.
    If it does exist, the database is deleted and then created again to ensure
    a clean and consistent setup.

    After the database is created, three schemas are added to organize data:
        - bronze  : Raw or source-level data
        - silver  : Cleaned and transformed data
        - gold    : Final, business-ready data

IMPORTANT NOTICE:
    Running this script will completely remove the existing 'DataWarehouse'
    database if it is found. This action permanently deletes all data stored
    in the database.

    Make sure you fully understand the impact of this operation and confirm
    that any required backups are completed before executing this script.
*/


use MASTER;

--create the 'datawarehouse' database
--in case we are sure that there's no database with name 'datawarehouse'
CREATE DATABASE datawarehouse;

USE datawarehouse;


--create the schemas
CREATE SCHEMA bronze; --exist in security
CREATE SCHEMA silver; --exist in security
CREATE SCHEMA gold; --exist in security
