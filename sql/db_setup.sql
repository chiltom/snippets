-- This snippet creates a new project user with full permissions over a new project database.
-- NOTE: This template is specific to PostgreSQL, but the same concept applies to all database types. 
CREATE ROLE new_app_user WITH LOGIN PASSWORD 'super_secure_password';
CREATE DATABASE new_app_db OWNER new_app_user;
GRANT ALL PRIVILEGES ON DATABASE new_app_db TO new_app_user;
