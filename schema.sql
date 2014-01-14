
drop table if exists locks;
create table locks (
    id integer not null primary key autoincrement, 
    resource varchar(250) not null, 
    token varchar(250) not null, 
    scope int(1) not null, 
    depth int default null, 
    created int(11), 
    timeout int(11) default null, 
    owner text);

drop table if exists property;
create table property(
    id integer not null primary key autoincrement, 
    uri varchar(250) not null, 
    property_name varchar(100) not null, 
    property_value text);


drop table if exists users;
create table users(
    id integer not null primary key autoincrement, 
    realm varchar(100) not null,
    user_name varchar(100) not null, 
    user_hash varchar(100) not null
    );



