 CREATE USER manual_user WITH PASSWORD 'master';
 GRANT ALL ON DATABASE "Event" TO manual_user 
 CREATE USER super_user WITH PASSWORD 'supermaster';
 GRANT connect ON DATABASE "Event" TO super_user ;
 