---- Medium Level questions ---

-- display users who live in bengaluru and hava a salary greater than 600000-
select users.name
from users
inner join addresses on users.id=addresses.user_id
where users.salary>60000 and addresses.city='Bengaluru';

-- display the names of male users who live in Uttar Pradesh
select users.name
from users
inner join addresses on users.id=addresses.user_id
where users.gender='Male' and addresses.state='Uttar Pradesh';

-- Display the name and city of users whose salary is between 60000 and 75000.
select users.name ,addresses.city
from users
inner join addresses on users.id=addresses.user_id
where users.salary between 60000 and 750000;

-- Display all addresses and the corresponding user's name using a RIGHT JOIN.
select addresses.street,
       addresses.city,
       addresses.state,
       addresses.pincode,
       users.name
from users
right join addresses on users.id=addresses.user_id;

-- Display all users and their states using a LEFT JOIN.
select users.name , addresses.state
from users
left join addresses on users.id=addresses.user_id;

-- Using INNER JOIN, display users who have an address in Delhi.
select users.name
from users
inner join addresses on users.id=addresses.user_id
where addresses.city='Delhi';

-- Using LEFT JOIN, display every user's name and their address pincode.
select users.name ,addresses.pincode
from users
left join addresses on users.id=addresses.user_id



