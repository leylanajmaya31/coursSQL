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
foreign key(id_roles)
references roles(id_roles);

alter table commentaire
add column id_chocoblast int,
add column id_auteur int,
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