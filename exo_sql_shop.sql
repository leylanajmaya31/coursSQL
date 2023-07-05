create database shop;
use shop;
create table product (
id_product int primary key auto_increment not null,
name_product varchar(50)not null,
description_product text not null,
price_product real not null,
id_category int not null
)Engine=InnoDB;

create table category (
id_category int primary key auto_increment not null,
name_category varchar(50) not null
)Engine=InnoDB;

create table seller (
id_seller int primary key auto_increment not null,
name_seller varchar(50) not null,
first_name_seller varchar(50) not null
)Engine=InnoDB;

create table receipt (
id_receipt int primary key auto_increment not null, /*le not null oblige à avoir une valeur*/
date_receipt datetime not null,
id_seller int not null
)Engine=InnoDB;/*prend en compte toutes les version de sql*/

create table to_add (
id_product int not null,
id_receipt int not null,
qtx_add int not null,
primary key(id_product,id_receipt)
)Engine=InnoDB;

alter table product /* creation des contraintes alter sert à modifier*/
add constraint fk_ajouter_produit
foreign key (id_category)
references category(id_category);

alter table receipt
add constraint fk_ajouter_ticket
foreign key (id_seller)
references seller(id_seller);

alter table to_add
add constraint FK_product
foreign key (id_product)
references product(id_product);

alter table to_add
add constraint FK_receipt
foreign key (id_receipt)
references receipt(id_receipt);



