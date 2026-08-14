-- create a table named addresses
-- id(auto increment) , user_id (foreign key),
-- street, city, state, pincode 

create table addresses(
id int auto_increment primary key,
user_id int, -- foreign key
street varchar(255),
city varchar(100),
state varchar(100),
pincode varchar(10),
constraint fk_user foreign key(user_id) references users(id) on delete cascade);