CREATE TABLE "guest" (
  "id" SERIAL,
  "group_id" integer,
  "name" varchar(255),
  "surname" varchar(255),
  "rating" integer,
  "day" date,
  PRIMARY KEY ("id", "group_id")
);

CREATE TABLE "group" (
  "id" SERIAL PRIMARY KEY,
  "position_id" integer,
  "place_id" integer
);

CREATE TABLE "place" (
  "id" SERIAL PRIMARY KEY,
  "money_id" integer,
  "title" varchar(255)
);

CREATE TABLE "position" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar(255),
  "experience" integer
);

CREATE TABLE "money" (
  "id" SERIAL PRIMARY KEY,
  "dollars" integer
);

ALTER TABLE "guest" ADD FOREIGN KEY ("group_id") REFERENCES "group" ("id");

ALTER TABLE "group" ADD FOREIGN KEY ("place_id") REFERENCES "place" ("id");

ALTER TABLE "group" ADD FOREIGN KEY ("position_id") REFERENCES "position" ("id");

ALTER TABLE "place" ADD FOREIGN KEY ("money_id") REFERENCES "money" ("id");

