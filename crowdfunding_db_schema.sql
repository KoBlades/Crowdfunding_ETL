-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/y8EmgC
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Category" (
    "category__id" varchar(50)   NOT NULL,
    "category" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY (
        "category__id"
     )
);

CREATE TABLE "Subcategory" (
    "subcategory__id" varchar(50)   NOT NULL,
    "subcategory" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY (
        "subcategory__id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "email" varchar(255)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     ),
    CONSTRAINT "uc_Contacts_email" UNIQUE (
        "email"
    )
);

CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(255)   NOT NULL,
    "description" text   NOT NULL,
    "goal" decimal(10,2)   NOT NULL,
    "pledged" decimal(10,2)   NOT NULL,
    "outcome" varchar(255)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(255)   NOT NULL,
    "currency" varchar(3)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category__id" varchar(50)   NOT NULL,
    "subcategory__id" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "Contacts" ("contact_id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_category__id" FOREIGN KEY("category__id")
REFERENCES "Category" ("category__id");

ALTER TABLE "Campaign" ADD CONSTRAINT "fk_Campaign_subcategory__id" FOREIGN KEY("subcategory__id")
REFERENCES "Subcategory" ("subcategory__id");

