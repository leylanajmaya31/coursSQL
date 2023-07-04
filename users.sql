ALTER TABLE users
ADD firstname VARCHAR(100) AFTER name;
INSERT INTO users (FIRSTNAME,NAME, EMAIL, BIRTHDATE)
VALUES ('Leyla', 'Jema', 'leyla@gmail.com', '1995-01-22');

CREATE INDEX index_users_birthdate ON users(birthdate);

CREATE TABLE employes (
	id INT NOT NULL,
	nom VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	age INT NOT NULL UNIQUE,
	salaire DECIMAL(8,2) DEFAULT 30000.00,
	PRIMARY KEY (id)
    );
    
    CREATE TABLE conges (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    id_employe INT,
    -- FOREIGN KEY (id_employe) REFERENCES employes(id) ON DELETE CASCADE
     CONSTRAINT fk_id_employe FOREIGN KEY (id_employe) REFERENCES employes(id)
    );
    