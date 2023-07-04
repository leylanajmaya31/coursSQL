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

create database chocoblast;
use chocoblast;
create table utilisateur (
id_utilisateur int primary key auto_increment not null,
nom_utilisateur varchar(50) not null,
prenom_utilisateur varchar(50) not null,
email_utilisateur varchar(50) not null,
password_utilisateur varchar (100) not null,
image_utilisateur varchar (100) not null,
statut_utilisateur tinyint(1) not null,
id_roles int not null
)Engine=InnoDB;

create table chocoblast (
id_chocoblast int primary key auto_increment not null,
slogan_chocoblast text not null,
date_creation_chocoblast datetime not null,
statut_chocoblast tinyint(1) not null
)Engine=InnoDB;
-- alter table chocoblast change slogan_chocblast slogan_chocoblast text;
create table roles (
id_roles int primary key auto_increment not null,
nom_roles varchar(50) not null
)Engine=InnoDB;

create table commentaire (
id_commentaire int primary key auto_increment not null,
note_commentaire int not null,
contenu_commentaire text,
date_creation_commentaire datetime not null,
statut_chocoblast tinyint(1) not null
)Engine=InnoDB;

alter table utilisateur
add constraint fk_posseder_roles
foreign key (id_roles)
references roles(id_roles);

alter table commentaire
add constraint fk_poster_chocoblast
foreign key(id_chocoblast)
references chocoblast(id_chocoblast);


alter table chocoblast
add column id_auteur int not null,
add column id_cible int not null,
add constraint fk_rattaccher_chocoblast
foreign key(id_cible)
references utilisateur(id_utilisateur),
add constraint fk_auteur_chocoblast
foreign key(id_auteur)
references utilisateur(id_utilisateur);

