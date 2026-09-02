-- HARDER PROFESSIONAL QUESTIONS --

-- The HR department wants the names and salaries of all users 
-- who have an address in Bengaluru,but only employees earning 
-- more than 60000.
select users.name , users.salary, addresses.city
from users
inner join addresses on users.id=addresses.user_id
where addresses.city='Bengaluru' and users.salary>60000;

-- Find all female users who have an address in either 
-- Kolkata or Mumbai and earn more than 55000.
-- name | salary | city
select users.name, users.salary,addresses.city
from users
inner join addresses on users.id=addresses.user_id
where users.gender='Female' and (addresses.city='Kolkata' or
addresses.city='Mumbai')  and users.salary>55000;

-- Find all users earning less than 60000 who have a registered addres
select users.name, users.salary , addresses.city, addresses.state
from users
left join addresses on users.id=addresses.user_id
where users.salary<60000 and addresses.user_id is not null;

-- The company wants to contact all users who either:
-- have no registered address, or
-- have an address in Kolkata.
select users.id, users.name, addresses.city
from users
left join addresses on users.id=addresses.user_id
where addresses.user_id is null or addresses.city='Kolkata';

-- find the users who have an address but do not live in Delhi
select users.name,addresses.city
from users
left join addresses on users.id=addresses.user_id
where addresses.city !='Delhi';

-- Find all female users who either:
-- have no address, or
-- live in Mumbai.
-- name | gender | city
select users.name, users.gender, addresses.city
from users
left join addresses 
on users.id=addresses.user_id
where users.gender='female'
and(
addresses.user_id is null or addresses.city='Mumbai'
 );