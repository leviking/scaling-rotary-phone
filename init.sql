drop database cherry;

create database cherry;
use cherry;

create table users(
    id int not null auto_increment,
    username varchar(120) not null,
    password varchar(120) not null,
    first_name varchar(120) not null,
    last_name varchar(120) not null,
    phone varchar(16),
    address varchar(16),
    city varchar(20),
    state varchar(2),
    zip varchar(9),
    created_at datetime,
    updated_at timestamp not null default current_timestamp(),
    deleted_at datetime,
    primary key(id)
);

create table charities(
    id int not null auto_increment,
    charity_name varchar(120) not null,
    user_id int,
    created_at datetime,
    updated_at timestamp not null default current_timestamp(),
    deleted_at datetime,
    primary key(id),
    foreign key(user_id) references users(id)
);

create table donations(
    id int not null auto_increment,
    user_id int,
    charity_id int,
    created_at datetime,
    updated_at timestamp not null default current_timestamp(),
    deleted_at datetime,
    amount int,
    primary key(id),
    foreign key(user_id) references users(id),
    foreign key(charity_id) references charities(id)
)