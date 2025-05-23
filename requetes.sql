DROP TABLE IF EXISTS personnages;

CREATE TABLE personnages (
     id SERIAL PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     gender VARCHAR(20),
     age VARCHAR(20),
     race VARCHAR(200),
     affiliation VARCHAR(200),
     evolutive_forms VARCHAR(200),
     rank VARCHAR(200),
     introduction_arc VARCHAR(100),
     image VARCHAR(200)
);

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Ichigo Kurosaki', 'Homme', '17', 'Humain, Shinigami, Hollow, Fullbringer, Quincy', 'Ville de Karakura', 'Bankai, Fullbring', 'Lycéen, Shinigami remplaçant', 'Prélude', 'assets/img/ichigo'),
    ('Rukia Kuchiki', 'Femme', '150', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai', 'Lieutenant', 'Prélude', 'assets/img/rukia'),
    ('Renji Abarai', 'Homme', '150', 'Shinigami', 'Gotei 13 (6ème division)', 'Bankai', 'Vice-capitaine', 'Prélude', 'assets/img/renji'),
    ('Byakuya Kuchiki', 'Homme', '200', 'Shinigami', 'Gotei 13 (6ème division)', 'Bankai', 'Capitaine', 'Prélude', 'assets/img/byakuya'),
    ('Orihime Inoue', 'Femme', '17', 'Humain', 'Ville de Karakura', 'Aucune', 'Lycéenne', 'Prélude', 'assets/img/orihime'),
    ('Yasutora Sado', 'Homme', '18', 'Humain, Fullbringer', 'Ville de Karakura', 'Fullbring', 'Lycéen', 'Prélude', 'assets/img/yasutora'),
    ('Toshiro Hitsugaya', 'Homme', '100', 'Shinigami', 'Gotei 13 (10ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/toshiro'),
    ('Kisuke Urahara', 'Homme', '300', 'Shinigami', 'Ville de Karakura', 'Bankai', 'Propriétaire d'' un magasin', 'Prélude', 'assets/img/kisuke'),
    ('Shunsui Kyoraku', 'Homme', '200', 'Shinigami', 'Gotei 13 (1ère division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/shunsui'),
    ('Uryū Ishida', 'Homme', '17', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "A"', 'Prélude', 'assets/img/uryū'),
    ('Jūshirō Ukitake', 'Homme', '200', 'Shinigami', 'Gotei 13 (13ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/jūshirō'),
    ('Mayuri Kurotsuchi', 'Homme', '200', 'Shinigami', 'Gotei 13 (12ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/mayuri'),
    ('Shinji Hirako', 'Homme', 'Unknown', 'Shinigami, Visored', 'Gotei 13 (5ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/shinji'),
    ('Love Aikawa', 'Homme', 'Unknown', 'Shinigami, Visored', 'Visored', 'Shikai', 'Ancien Capitaine', 'Arc des Visored', 'assets/img/love'),
    ('Hiyori Sarugaki', 'Femme', 'Unknown', 'Shinigami, Visored', 'Visored', 'Shikai', 'Ancienne Vice-capitaine', 'Arc des Visored', 'assets/img/hiyori'),
    ('Bazz-B', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "H"', 'Guerre sanglante', 'assets/img/bazz-b'),
    ('Askin Nakk Le Vaar', 'Homme', 'Unknown', 'Quincy', 'Wandenreich', 'Vollständig', 'Sternritter "D"', 'Guerre sanglante', 'assets/img/askin'),
    ('Yukio Hans Vorarlberna', 'Homme', '17', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/yukio'),
    ('Jackie Tristan', 'Femme', '19', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/jackie'),
    ('Kon', 'Homme', 'N/A', 'Mod Soul', 'Ville de Karakura', 'Aucune', 'Peluche', 'Prélude', 'assets/img/kon'),
    ('Yoruichi Shihouin', 'Femme', 'Unknown', 'Shinigami', 'Ville de Karakura', 'Shunkō', 'Ancienne Capitaine', 'Prélude', 'assets/img/yoruichi'),
    ('Ulquiorra Cifer', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #4)', 'Resurrección, Segunda Etapa', 'Espada #4', 'Hueco Mundo', 'assets/img/ulquiorra'),
    ('Grimmjow Jaegerjaquez', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #6)', 'Resurrección', 'Espada #6', 'Hueco Mundo', 'assets/img/grimmjow'),
    ('Nnoitra Gilga', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #5)', 'Resurrección', 'Espada #5', 'Hueco Mundo', 'assets/img/nnoitra'),
    ('Tier Harribel', 'Femme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #3)', 'Resurrección', 'Espada #3', 'Hueco Mundo', 'assets/img/tier'),
    ('Coyote Starrk', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #1)', 'Resurrección', 'Espada #1', 'Hueco Mundo', 'assets/img/starrk'),
    ('Ichibei Hyōsube', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'True Name Release', 'Chef de la Division 0', 'Guerre sanglante', 'assets/img/ichibei'),
    ('Senjumaru Shutara', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/senjumaru'),
    ('Ōetsu Nimaiya', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/oetsu'),
    ('Tenjirō Kirinji', 'Homme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/tenjiro'),
    ('Kirio Hikifune', 'Femme', 'Inconnu', 'Shinigami', 'Division 0', 'Inconnu', 'Membre Division 0', 'Guerre sanglante', 'assets/img/kirio'),
    ('Soi Fon', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (2ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/soi'),
    ('Ikkaku Madarame', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Bankai', '3ème siège', 'Arc de la Soul Society', 'assets/img/ikkaku'),
    ('Yumichika Ayasegawa', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai caché', '5ème siège', 'Arc de la Soul Society', 'assets/img/yumichika'),
    ('Rangiku Matsumoto', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (10ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/rangiku'),
    ('Izuru Kira', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (3ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/izuru');

-- Ajout des personnages supplémentaires
INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Sōsuke Aizen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien capitaine du Gotei 13 (5ème division), Hueco Mundo', 'Fusion Hōgyoku', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/aizen'),
    ('Genryūsai Shigekuni Yamamoto', 'Homme', '2100+', 'Shinigami', 'Gotei 13 (1ère division)', 'Bankai', 'Capitaine-commandant', 'Arc de la Soul Society', 'assets/img/yamamoto'),
    ('Kūgo Ginjō', 'Homme', 'Inconnu', 'Humain, Fullbringer, Shinigami', 'Xcution', 'Fullbring', 'Leader', 'Arc Fullbringer', 'assets/img/kugo'),
    ('Shūkurō Tsukishima', 'Homme', 'Inconnu', 'Humain, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/tsukishima'),
    ('Baraggan Louisenbairn', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #2)', 'Resurrección', 'Espada #2', 'Hueco Mundo', 'assets/img/barragan'),
    ('Kaname Tōsen', 'Homme', 'Inconnu', 'Shinigami, Hollow', 'Ancien Gotei 13 (9ème division)', 'Resurrección', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/tosen'),
    ('Gin Ichimaru', 'Homme', 'Inconnu', 'Shinigami', 'Ancien Gotei 13 (3ème division)', 'Bankai', 'Ancien Capitaine', 'Arc de la Soul Society', 'assets/img/gin'),
    ('Kensei Muguruma', 'Homme', 'Inconnu', 'Shinigami, Visored', 'Gotei 13 (9ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/kensei'),
    ('Kenpachi Zaraki', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (11ème division)', 'Shikai, Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/zaraki'),
    ('Retsu Unohana', 'Femme', 'Inconnu', 'Shinigami', 'Gotei 13 (4ème division)', 'Bankai', 'Capitaine', 'Arc de la Soul Society', 'assets/img/unoha'),
    ('Zangetsu', 'Homme', 'Inconnu', 'Manifestation spirituelle', 'Aucun', 'Shikai, Bankai', 'Esprit d’Ichigo', 'Prélude', 'assets/img/zangetsu'),
    ('Yhwach', 'Homme', '1000+', 'Quincy', 'Wandenreich', 'The Almighty', 'Empereur', 'Guerre sanglante', 'assets/img/yhwach'),
    ('Yammy Llargo', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #0)', 'Resurrección', 'Espada #0', 'Hueco Mundo', 'assets/img/yammy'),
    ('Szayelaporro Granz', 'Homme', 'Inconnu', 'Arrancar', 'Hueco Mundo (Espada #8)', 'Resurrección', 'Espada #8', 'Hueco Mundo', 'assets/img/szayelapporo'),
    ('Shūhei Hisagi', 'Homme', 'Inconnu', 'Shinigami', 'Gotei 13 (9ème division)', 'Shikai', 'Lieutenant', 'Arc de la Soul Society', 'assets/img/shuei'),
    ('Ryūken Ishida', 'Homme', 'Inconnu', 'Quincy', 'Hopital d’Ishida', 'Aucune', 'Père d’Uryū', 'Prélude', 'assets/img/ryuken'),
    ('Rōjūrō Ōtoribashi (Rose)', 'Homme', 'Inconnu', 'Shinigami, Visored', 'Gotei 13 (3ème division)', 'Bankai', 'Capitaine', 'Arc des Visored', 'assets/img/rose'),
    ('Riruka Dokugamine', 'Femme', 'Inconnu', 'Humaine, Fullbringer', 'Xcution', 'Fullbring', 'Membre', 'Arc Fullbringer', 'assets/img/riruka'),
    ('Pernida Parnkgjas', 'Inconnu', 'Inconnu', 'Quincy, Main du roi des esprits', 'Wandenreich', 'Évolution biologique', 'Sternritter "C"', 'Guerre sanglante', 'assets/img/pernida'),
    ('Nelliel Tu Odelschwanck', 'Femme', 'Inconnu', 'Arrancar', 'Hueco Mundo (ancienne Espada #3)', 'Resurrección', 'Ancienne Espada', 'Hueco Mundo', 'assets/img/nelliel'),
    ('Masaki Kurosaki', 'Femme', 'Décédée', 'Quincy', 'Famille Kurosaki', 'Aucune', 'Mère d’Ichigo', 'Flashback', 'assets/img/masaki'),
    ('Lille Barro', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The X-Axis', 'Sternritter "X"', 'Guerre sanglante', 'assets/img/lille'),
    ('Gerard Valkyrie', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Miracle', 'Sternritter "M"', 'Guerre sanglante', 'assets/img/gerard'),
    ('Nemu Kurotsuchi', 'Femme', 'Inconnu', 'Mod Soul', 'Gotei 13 (12ème division)', 'Renforcement biologique', 'Vice-capitaine', 'Arc de la Soul Society', 'assets/img/nemu'),
    ('Kaien Shiba', 'Homme', 'Décédé', 'Shinigami', 'Gotei 13 (13ème division)', 'Shikai', 'Vice-capitaine', 'Flashback', 'assets/img/kaien'),
    ('Sajin Komamura', 'Homme', 'Inconnu', 'Shinigami (homme-loup)', 'Gotei 13 (7ème division)', 'Bankai, Transformation humaine', 'Capitaine', 'Arc de la Soul Society', 'assets/img/komamura'),
    ('Isshin Kurosaki', 'Homme', 'Inconnu', 'Shinigami', 'Famille Kurosaki, ancien Gotei 13 (10ème division)', 'Bankai', 'Ancien Capitaine', 'Flashback', 'assets/img/isshin'),
    ('Kūkaku Shiba', 'Femme', 'Inconnu', 'Humaine', 'Famille Shiba', 'Aucune', 'Chef de clan', 'Arc de la Soul Society', 'assets/img/kukaku'),
    ('Jugram Haschwalth', 'Homme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Balance', 'Sternritter "B", Bras droit de Yhwach', 'Guerre sanglante', 'assets/img/jugram'),
    ('Bambietta Basterbine', 'Femme', 'Inconnu', 'Quincy', 'Wandenreich', 'The Explode', 'Sternritter "E"', 'Guerre sanglante', 'assets/img/bambietta'),
    ('Ganju Shiba', 'Homme', 'Inconnu', 'Humain', 'Famille Shiba', 'Aucune', 'Combattant', 'Arc de la Soul Society', 'assets/img/ganju');

INSERT INTO personnages (name, gender, age, race, affiliation, evolutive_forms, rank, introduction_arc, image) VALUES
    ('Soul King', 'Inconnu', 'Inconnu', 'Divinité', 'Palais Royal', 'Aucune', 'Roi des âmes', 'Guerre sanglante', 'assets/img/soulking');


CREATE TABLE bankai (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    personnage_id INT NOT NULL REFERENCES personnages(id) ON DELETE CASCADE ON UPDATE CASCADE
);