CREATE TABLE Category (
    category__id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE Subcategory (
    subcategory__id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE Contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INT REFERENCES Contacts(contact_id),
    company_name VARCHAR(255),
    description TEXT,
    goal DECIMAL(10, 2),
    pledged DECIMAL(10, 2),
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(3),
    launched_date DATE,
    end_date DATE,
    category__id VARCHAR(50) REFERENCES Category(category__id),
    subcategory__id VARCHAR(50) REFERENCES Subcategory(subcategory__id)
);

drop table campaign
drop table Category
drop table Subcategory
drop table Contacts
	
SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
SELECT * FROM Campaign;



COPY Category(category__id, category)
FROM 'C:\Users\jtran\OneDrive\Documents\GitHub\Crowdfunding_ETL\Resources\category.csv' DELIMITER ',' CSV HEADER;
