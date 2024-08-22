Create table contacts(
	contact_id int NOT NULL,
	first_name varchar (150) Not NULL,
	last_name VARCHAR (150) NOT NULL,
	email VARCHAR (150) NOT NULL,
		primary key (contact_id)
);

Create table category(
	category_id varchar (150) NOT NULL,
	category varchar (150) NOT NULL,
		primary key (category_id)
);

Create table subcategory(
	subcategory_id varchar (150) NOT NULL,
	subcategory varchar (150) NOT NULL,
		primary key (subcategory_id)
);

CREATE TABLE Campaign (
    cf_id INT PRIMARY KEY,
    Contact_ID INT NOT NULL,
    Company_Name VARCHAR(255) NOT NULL,
    Description VARCHAR(255) NOT NULL,
    Goal float NOT NULL,
    Pledged float NOT NULL,
    Outcome VARCHAR(255) NOT NULL,
    Backers_Count INT NOT NULL,
    Country VARCHAR(255) NOT NULL,
    Currency VARCHAR(255) NOT NULL,
    Launched_Date DATE NOT NULL,
    End_Date DATE NOT NULL,
    Category_ID VARCHAR(255) NOT NULL,
    SubCategory_ID VARCHAR(255) NOT NULL,
    FOREIGN KEY (Contact_ID) REFERENCES contacts(contact_id),
    FOREIGN KEY (Category_ID) REFERENCES category(category_id),
    FOREIGN KEY (SubCategory_ID) REFERENCES subcategory(subcategory_id)
);

select * from contacts;
select * from category;
select * from subcategory;
select * from campaign;