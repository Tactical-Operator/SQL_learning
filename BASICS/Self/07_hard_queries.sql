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