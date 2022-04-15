-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS contacts;

-- CREATE TABLES
CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_name TEXT,
  address TEXT
);

CREATE TABLE salespersons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT
);

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    email TEXT,
    phone_number TEXT
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contact_id INTEGER,
    salesperson_id INTEGER,
    type TEXT,
    created_at TEXT,
    notes TEXT
);