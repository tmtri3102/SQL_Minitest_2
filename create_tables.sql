create database TourManager;
use tourmanager;

create table places(
    placeId int not null primary key auto_increment,
    placeName varchar(20),
    placeText varchar(100),
    placePrice int,
    cityId int,
    foreign key (cityId) references cities(cityId)
);

create table customers(
    customerId int not null primary key auto_increment,
    customerName varchar(20),
    customerCard varchar(10),
    customerBirth year
);

create table cities(
    cityId int not null primary key auto_increment,
    cityName varchar(20)
);

create table types(
    typeId int not null primary key auto_increment,
    typeCode int,
    typeName varchar(20)
);

create table tour(
    tourId int not null primary key auto_increment,
    typeId int,
    placeId int,
    placePrice int,
    startdate date,
    enddate date,
    foreign key(placeId) references places(placeId),
    foreign key(typeId) references types(typeId)
);

create table orders(
    orderId int not null primary key auto_increment,
    tourId int,
    customerId int,
    status bit
);