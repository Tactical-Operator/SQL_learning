-- Hard Level Queestions----

-- Retrieve the name, email, city, and state of every user who has a registered address.
select users.name , users.email, addresses.city, addresses.state
from users
inner join addresses on users.id=addresses.user_id ;

-- Find all female users who have an address in Delhi. Display their name, email, and city.
select users.name,users.email,addresses.city
from users
INNER JOIN addresses on users.id=addresses.user_id
WHERE users.gender='female' AND addresses.city='Delhi';

-- Find all male users who live in Bengaluru and earn more than 60000.
select users.name,users.email
from users
inner join addresses on users.id=addresses.user_id
where addresses.city='Bengaluru' and users.salary>60000;

-- Find users who have an address in Kolkata and were born before 1995-01-01.
select users.name,users.date_of_birth,addresses.city
from users
inner join addresses on users.id=addresses.user_id
where addresses.city='Kolkata' and users.date_of_birth<'1995-01-01';

-- A company wants a report containing every user, even if the user has not provided an address.
-- display 
-- name | email | city | state

select users.name, users.email, addresses.city, addresses.state
from users
left join addresses on users.id=addresses.user_id;

-- Create a report containing every user and their pincode. Users without an address should still appear
select users.name as users, addresses.pincode as pincode
from  users
left join addresses on users.id=addresses.user_id;

-- Create a customer report containing every user, along with their city even if the address is unavailable.
select users.name as user_name , addresses.city
from users
left join addresses on users.id=addresses.user_id;

-- Find users who have no registered address and whose salary is greater than 60000.
select users.name
from users
left join addresses on users.id=addresses.user_id
where addresses.user_id is null and users.salary>60000;

-- The operations team wants a list of every address along with the name of the user associated with it.
-- street | city | state | pincode | name
select addresses.street,addresses.city,
addresses.state,addresses.pincode,users.name
from users
right join addresses on users.id=addresses.user_id
order by users.name;

-- The operations team wants all addresses in Bengaluru, together with the name and email of the associated user.
select addresses.street,addresses.city,
addresses.state,addresses.pincode,users.name,users.email
from users
right join addresses on users.id=addresses.user_id
where addresses.city='Bengaluru';

-- Generate a report containing every user, but only users who actually have an address should contain address information.
-- display null those who dont have 
-- name | city |state | pincode

select users.name,addresses.city,addresses.state,addresses.pincode
from  users
left join addresses on users.id=addresses.user_id;

-- Find users who do not have an address but earn more than 70000.
select users.name
from users
left join addresses on users.id=addresses.user_id
where addresses.user_id is null and users.salary>70000;
