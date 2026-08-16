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


