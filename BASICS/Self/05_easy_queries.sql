-- Easy queries --


-- Display users whose salary is greater than 60000 and who are male.
select name 
from users where salary>60000 and gender='male';

-- Display the names of users born before 1990-01-01
select * from users
where date_of_birth <'1990-01-01';

-- Display all users who have an address in Delhi.
select users.name,addresses.city
from users 
left join addresses on users.id=addresses.user_id 
where addresses.city ='Delhi';

-- Display the names and pincodes of users who have an address.
select users.name,addresses.pincode 
from users
inner join addresses on users.id=addresses.user_id;

-- Display the name, city, and state of users who have an address.
select users.name, addresses.city,addresses.state
from users
inner join addresses on users.id=addresses.user_id;
